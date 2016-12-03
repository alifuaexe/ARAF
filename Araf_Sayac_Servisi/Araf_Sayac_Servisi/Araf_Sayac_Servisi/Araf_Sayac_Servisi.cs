


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
using System.Timers;
using FP_CONNECTLib;

namespace Araf_Sayac_Servisi
{
    public partial class Araf_Sayac_Servisi : ServiceBase
    {
        FP_CONNECTClass m_ocxFP_CONNECT = null;
        const int COMSETTING_ETHERNET = 5;
        const int COMSETTING_ETHERNET_SIZE = 9;
        const int COMSETTING_DONTUSE_ET_LAN = 0;
        const int COMSETTING_PC_IP_AUTOMATIC = 0;
        const int COMSETTING_USE_ET_LAN = 0;
        const int NO_FP_CONNECT_ERROR = 0;
        const int OPEN_PLC = 0;

        int[] arIntWriteData = new int[COMSETTING_ETHERNET_SIZE];
      


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
        public bool aktif = false;
        private Timer timer1 = null;
        List<ArafPlcList> PlcList = new List<ArafPlcList>();


        public Araf_Sayac_Servisi()
        {
            InitializeComponent();
        }
        public void Start()
        {
            timer1 = new Timer();
            this.timer1.Interval = 30000;
            this.timer1.Elapsed += new System.Timers.ElapsedEventHandler(this.timer1_tick);
            timer1.Enabled = true;
        }

        protected override void OnStart(string[] args)
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
            Start();
        }
        private void timer1_tick(object sender, ElapsedEventArgs e)
        {
           
            List<ArafPlcList> ArfList = ArafPlcListesi();
            for (int i = 0; i < ArfList.Count; i++)
            {
                arIntWriteData[0] = COMSETTING_ETHERNET;
                arIntWriteData[1] = COMSETTING_PC_IP_AUTOMATIC; // if COMSETTING_PC_IP_MANUAL is used strComputerIP = "127.0.0.0" is used too!
                arIntWriteData[2] = COMSETTING_USE_ET_LAN; // COMSETTING_DONTUSE_ET_LAN or COMSETTING_USE_ET_LAN;      // COMSETTING_DONTUSE_ET_LAN
                arIntWriteData[3] = ArfList[i].PlcPort;   // PC Port
                arIntWriteData[4] = 64;      // PC station 
                arIntWriteData[5] = ArfList[i].PlcPort;  // Destination port
                arIntWriteData[6] = 1;      // Destination station
                arIntWriteData[7] = 15;     // Communication timeout            
                arIntWriteData[8] = 90;     // Connection timeout       
                string srtTitel, strComputerIP, strDestinationIP;
                srtTitel = "MyEthernet";
                strComputerIP = "192.168.1.29";    // In our case it is not used and can be: ""
                strDestinationIP = ArfList[i].PlcIp;

                m_ocxFP_CONNECT.SetCommunicationParameter(arIntWriteData, srtTitel, strComputerIP, strDestinationIP);
                PlcOku(ArfList[i].PlcIp,  ArfList[i].PlcPort, ArfList[i].PlcId);
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
                using (SqlConnection cn = new SqlConnection(Properties.Settings.Default.Conn))
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
                                LogYaz2("ArafPlcListesi", "PlcList PNIG");
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
                        rd.Close();
                        cmd.Dispose();
                    }
                }

            }
            catch (Exception ex)
            {
                LogYaz2("ArafPlcListesi", ex.Message);
            }
            return PlcList;
        }
        public static void LogYaz2(string SRVS_PARAM, string SRVS_MESSAGE)
        {
            if (Properties.Settings.Default.LogAcik == 1)
            {
                using (SqlConnection cnYaz = new SqlConnection(Properties.Settings.Default.Conn))
                {
                    using (SqlCommand cmdYaz = new SqlCommand("INSERT INTO SERVICE_LOG(SRVS_NAME,SRVS_MESSAGE,SRVS_PARAM,SRVS_DATE) VALUES(@SRVS_NAME,@SRVS_MESSAGE,@SRVS_PARAM,@SRVS_DATE)", cnYaz))
                    {
                        try
                        {
                            cnYaz.Open();
                            cmdYaz.Parameters.AddWithValue("@SRVS_NAME", "ARAF_COUNTER_SERVICE");
                            cmdYaz.Parameters.AddWithValue("@SRVS_MESSAGE", SRVS_MESSAGE);
                            cmdYaz.Parameters.AddWithValue("@SRVS_PARAM", SRVS_PARAM);
                            cmdYaz.Parameters.AddWithValue("@SRVS_DATE", DateTime.Now);
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
        private void PlcAyarOpen(string strDestinationIP_, int Plc_Port)
        {
          
            if (this.m_ocxFP_CONNECT.PortOpen(OPEN_PLC, 0) != NO_FP_CONNECT_ERROR)
            {

                LogYaz2("NO_FP_CONNECT_ERROR", "m_ocxFP_CONNECT");
                // check error code
                return;
            }

            // MessageBox.Show("Now open the communication settings dialog and verify your settings");
        }// buttSet

        private static void ArafPlc_DetayGiris(int PLC_DATA_ID, int WSD_COUNTER, int WS_ID)
        {
            try
            {
                SqlConnection cnYaz = new SqlConnection(Properties.Settings.Default.Conn);
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
        private void PlcOku(string ip, int Port,int plcid)
        {
            aktif = true;
            
            PlcAyarOpen(ip, Port);

            using (SqlConnection cn1 = new SqlConnection(Properties.Settings.Default.Conn))
            {
                using (SqlCommand cmd1 = new SqlCommand("", cn1))
                {
                    try
                    {
                        if (cn1.State == ConnectionState.Closed)
                        {
                            cn1.Open();
                        }
                        
                        LogYaz2("PlcAyarOpen", "1");
                    }
                    catch
                    {
                        cn1.Close();
                        return;
                    }
                    cmd1.CommandText = " SELECT * FROM ARF_W_SETTING_PLC WITH(NOLOCK) WHERE PLC_ID=@PLC_ID";
                    cmd1.Parameters.Clear();
                    cmd1.Parameters.Add("@PLC_ID", SqlDbType.VarChar, 50).Value = plcid;
                    SqlDataReader rd1 = cmd1.ExecuteReader();
                    while (rd1.Read())
                    {
                        Read(rd1["PLC_DT"].ToString(), (int)rd1["PLC_DATA_ID"], (int)rd1["WS_ID"]);

                    }
                    cn1.Close();
                    rd1.Close();
                    cmd1.Dispose();
                }
            }



        }

        protected override void OnStop()
        {
            timer1.Enabled = false;
        }


    }
}
