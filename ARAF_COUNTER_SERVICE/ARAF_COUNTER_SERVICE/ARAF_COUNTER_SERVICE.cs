using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Net.NetworkInformation;
using System.ServiceProcess;
using System.Text;
using System.Threading;
using FP_CONNECTLib;

namespace ARAF_COUNTER_SERVICE
{
    public partial class ARAF_COUNTER_SERVICE : ServiceBase
    {
      
        const int COMSETTING_ETHERNET = 5;
        const int COMSETTING_ETHERNET_SIZE = 9;
        const int COMSETTING_DONTUSE_ET_LAN = 2;
        const int COMSETTING_PC_IP_AUTOMATIC = 1;
        const int COMSETTING_USE_ET_LAN = 1;
        const int NO_FP_CONNECT_ERROR = 0;
        const int OPEN_PLC = 0;

        List<ArafPlcList> PlcList = new List<ArafPlcList>();
        Thread[] thrList;
        ArafChld[] childList;
        
        public ARAF_COUNTER_SERVICE()
        {
            InitializeComponent();
        }
        public void Start()
        {
         //   System.Diagnostics.Debugger.Launch();
            try
            {
                List<ArafPlcList> ArfList = ArafPlcListesi();
                if (ArfList.Count == 0)
                {
                    return;
                }

                thrList = new Thread[ArfList.Count];
                childList = new ArafChld[ArfList.Count];



                for (int i = 0; i < ArfList.Count; i++)
                {

                    childList[i] = new ArafChld(ArfList[i].PlcId, ArfList[i].PlcIp, ArfList[i].PlcAdi, ArfList[i].PlcPort);
                    childList[i].ServiceStarted = true;
                    childList[i]._cnState = 0;

                    ThreadStart st = new ThreadStart(childList[i].ExecuteTask);
                    thrList[i] = new Thread(st);
                    thrList[i].Start();

                }

                LogYaz2("OnStart", "1");
            }
            catch (Exception ex)
            {
                LogYaz2("OnStart", ex.Message);
            }

        }

        protected override void OnStart(string[] args)
        {
            Start();
            Thread.Sleep(6000);
        }

        protected override void OnStop()
        {
        }
        public static void LogYaz2(string SRVS_PARAM, string SRVS_MESSAGE)
        {
            if (Properties.Settings.Default.LogAcik == 1)
            {
                using (SqlConnection cnYaz = new SqlConnection(Properties.Settings.Default.Baglanti))
                {
                    using (SqlCommand cmdYaz = new SqlCommand("INSERT INTO SERVICE_LOG(SRVS_NAME,SRVS_MESSAGE,SRVS_PARAM,SRVS_DATE) VALUES(@SRVS_NAME,@SRVS_MESSAGE,@SRVS_PARAM,@SRVS_DATE)", cnYaz))
                    {
                        try
                        {
                            cnYaz.Open();
                            cmdYaz.Parameters.AddWithValue("@SRVS_NAME", "ARAF_COUNTER_SERVICE");
                            cmdYaz.Parameters.AddWithValue("@SRVS_MESSAGE", SRVS_MESSAGE);
                            cmdYaz.Parameters.AddWithValue("@SRVS_PARAM", SRVS_PARAM);
                            cmdYaz.Parameters.AddWithValue("@SRVS_DATE",DateTime.Now);
                            cmdYaz.ExecuteNonQuery();
                            cnYaz.Close();
                        }
                        catch (Exception ex)
                        {
                            LogYaz2("LogYaz2", ex.Message);
                        }

                    }
                }
            }

        }
        public class ArafPlcList
        {
            public ArafPlcList()
            { }
            private int _PlcId;
            public int PlcId { get { return _PlcId; } set { _PlcId = value; } }

            private int _PlcPort;
            public int PlcPort { get { return _PlcPort; } set { _PlcPort = value; } }
            private string _PlcIp;
            public string PlcIp { get { return _PlcIp; } set { _PlcIp = value; } }
            private string _PlcAdi;
            public string PlcAdi { get { return _PlcAdi; } set { _PlcAdi = value; } }
            private Int16 _PlcStatus = 0;
            public Int16 PlcStatus { get { return _PlcStatus; } set { _PlcStatus = value; } }


        }
        private List<ArafPlcList> ArafPlcListesi()
        {

            try
            {
                using (SqlConnection cn = new SqlConnection(Properties.Settings.Default.Baglanti))
                {
                    using (SqlCommand cmd = new SqlCommand("", cn))
                    {
                        cn.Open();
                        cmd.CommandText = "SELECT * FROM PLC WITH (NOLOCK)  Where PLC_STATUS=1 ORDER BY PLC_IP DESC";
                        SqlDataReader rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                        while (rd.Read())
                        {

                            ArafPlcList Araf = new ArafPlcList();
                            Araf.PlcId = (int)rd["PLC_ID"];
                            Araf.PlcIp = rd["PLC_IP"].ToString();
                            Araf.PlcAdi = rd["PLC_NAME"].ToString();
                            Araf.PlcPort = (int)rd["PLC_PORT"];
                            Ping p = new Ping();
                            PingReply cevap = p.Send(Araf.PlcIp);
                            if (cevap.Status == IPStatus.Success)
                            {
                                LogYaz2("ArafPlcListesi","PlcList PNIG");
                                Araf.PlcStatus = 1;
                                PlcList.Add(Araf);

                            }
                            else
                            {
                                Araf.PlcStatus = 0;
                               PlcList.Add(Araf);
                               LogYaz2("ArafPlcListesi", "PlcList PNIGNO");

                            }

                        }
                        cn.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                LogYaz2("ArafPlcListesi", ex.Message);
            }
            return PlcList;
        }
        public class ArafChld
        {
            FP_CONNECTClass m_ocxFP_CONNECT =null; 
           
           
            public int _PlcID;
            public bool ServiceStarted;
            const int _interval = 1;
            string[] versions = new string[3];
          
            public int _cnState = 0;
            public string _Araf_Plc_IP;
            public string _Araf_Plc_Adi;
            public string SonOkunanBarkod = "";
            public int _Araf_Plc_Port;
            public string deviceType;

    

    private void PlcAyarOpen(string strDestinationIP_, int Plc_Port)
            {

                int[] arIntWriteData = new int[COMSETTING_ETHERNET_SIZE];
                arIntWriteData[0] = COMSETTING_ETHERNET;
                arIntWriteData[1] = 0; // if COMSETTING_PC_IP_MANUAL is used strComputerIP = "127.0.0.0" is used too!
                arIntWriteData[2] = 0; // COMSETTING_DONTUSE_ET_LAN or COMSETTING_USE_ET_LAN;      // COMSETTING_DONTUSE_ET_LAN
                arIntWriteData[3] = Plc_Port;   // PC Port
                arIntWriteData[4] = 1;      // PC station 
                arIntWriteData[5] = Plc_Port;  // Destination port
                arIntWriteData[6] = 64;      // Destination station
                arIntWriteData[7] = 15;     // Communication timeout            
                arIntWriteData[8] = 90;     // Connection timeout       
                string srtTitel, strComputerIP, strDestinationIP;
                srtTitel = "MyEthernet";
                strComputerIP = "192.168.1.29";    // In our case it is not used and can be: ""
                strDestinationIP = strDestinationIP_;

                int nResult= this.m_ocxFP_CONNECT.SetCommunicationParameter(arIntWriteData, srtTitel, strComputerIP, strDestinationIP);             
                if (this.m_ocxFP_CONNECT.PortOpen(0, 0) != 0)
               {
                    LogYaz2("PortOpen", "m_ocxFP_CONNECT");
                    // check error code
                    return;
                }

                // MessageBox.Show("Now open the communication settings dialog and verify your settings");
            }// buttSet

            private static void ArafPlc_DetayGiris(int PLC_DATA_ID, int WSD_COUNTER, int WS_ID)
            {
                try
                {
                    SqlConnection cnYaz = new SqlConnection(Properties.Settings.Default.Baglanti);
                    SqlCommand cmdExec = new SqlCommand("Sp_ArafSayacServisi", cnYaz);

                    cnYaz.Open();

                    cmdExec.CommandType = CommandType.StoredProcedure;
                    cmdExec.Parameters.Clear();
                    cmdExec.Parameters.AddWithValue("@PLC_DATA_ID", PLC_DATA_ID);
                    cmdExec.Parameters.AddWithValue("@WSD_COUNTER", WSD_COUNTER);
                    cmdExec.Parameters.AddWithValue("@WS_ID", WS_ID);
                    cmdExec.ExecuteReader();

                    cmdExec.Dispose();
                    cnYaz.Close();
                    cnYaz.Dispose();
                    LogYaz2("Sp_ArafSayacServisi", WSD_COUNTER.ToString());

                }
                catch (Exception ex)
                {
                    LogYaz2("ArafPlc_DetayGiris", ex.Message);
                }
            }

            public ArafChld(int PlcID, string PlcIp, string PlcAdi, int Plc_Port)
            {
                _PlcID = PlcID;
                _Araf_Plc_IP = PlcIp;
                _Araf_Plc_Adi = PlcAdi;
                _Araf_Plc_Port = Plc_Port;

            }
            private void Read(string Adress, int PLC_DATA_ID, int WS_ID)
            {

                string strAddress;
                string strError = "";

                strAddress = Adress;
                int nNWords = nNWords = 1;
                if (nNWords <= 0)
                    nNWords = 1;
                try
                {
                    try
                    {

                        short[] arReturnData = null;
                        object objReturn = this.m_ocxFP_CONNECT.ReadINT(0, /*"DT90019"*/strAddress, nNWords, ref strError);

                        if (objReturn != null)
                            arReturnData = (short[])objReturn;
                        else
                            return;

                        if (arReturnData[0] != 0)
                        {
                            ArafPlc_DetayGiris(PLC_DATA_ID, arReturnData[0], WS_ID);
                        }
                    }// INT
                    catch (Exception ex)
                    {
                        LogYaz2("Read", ex.Message);
                    }
                }
                finally
                {
                    if (strError.Length > 0)

                        this.m_ocxFP_CONNECT.PortClose();
                }

            }
            public void ExecuteTask()
            {
                try
                {
                    m_ocxFP_CONNECT = new FP_CONNECTClass();
                }
                catch (Exception ex)
                {
                    LogYaz2("m_ocxFP_CONNECT111", ex.Message);
                    return;
                }

                DateTime lastRunTime = DateTime.UtcNow;
               

                //m_ocxFP_CONNECT.AttachHostHandle(133410);
                //m_ocxFP_CONNECT.SetLanguage(0);
                //// m_ocxFP_CONNECT.AboutBox();            


                while (ServiceStarted)
                {
                    Thread.Sleep(10000);
                    this._cnState = 1;
                    using (SqlConnection cn = new SqlConnection(Properties.Settings.Default.Baglanti))
                    {
                        using (SqlCommand cmd = new SqlCommand("", cn))
                        {
                            try
                            {
                                if (cn.State == ConnectionState.Closed)
                                {
                                    cn.Open();
                                }
                                PlcAyarOpen(this._Araf_Plc_IP, this._Araf_Plc_Port);
                                LogYaz2("PlcAyarOpen","1");
                            }
                            catch
                            {
                                cn.Close();
                                continue;
                            }

                            try
                            {
                                try
                                {
                                    LogYaz2("Read", "1");
                                    cmd.CommandText = " SELECT * FROM ARF_W_SETTING_PLC WITH(NOLOCK) WHERE PLC_ID=@PLC_ID";
                                    cmd.Parameters.Clear();
                                    cmd.Parameters.Add("@PLC_ID", SqlDbType.VarChar, 50).Value = this._PlcID;
                                    SqlDataReader rd = cmd.ExecuteReader();

                                    while (rd.Read())
                                    {
                                        Read(rd["PLC_DT"].ToString(), (int)rd["PLC_DATA_ID"], (int)rd["WS_ID"]);
                                        LogYaz2("Read", "2");
                                    }
                                }
                                catch (Exception ex)
                                {
                                    LogYaz2("ServiceStarted", ex.Message);
                                    cn.Close();
                                    this._cnState = 0;

                                    continue;
                                }





                            }
                            catch (Exception ex)
                            {
                                LogYaz2("ExecuteTask", ex.Message);
                                cn.Close();
                                this._cnState = 0;

                                continue;
                            }

                        }



                    }



                    // set new run time
                    lastRunTime = DateTime.UtcNow;
                    // }

                    /*
                    if (ServiceStarted)
                    {
                        Thread.Sleep(new TimeSpan(0, 0, 1));
                    }
                     */
                }
                Thread.CurrentThread.Abort();
            }




            public void Terminate()
            {
                this.ServiceStarted = false;
                //this.cnState = 0;
            }

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
          
        }
    }
}
