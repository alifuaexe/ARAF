using FP_CONNECTLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication2
{
    public partial class Form1 : Form
    {
        FP_CONNECTClass m_ocxFP_CONNECT = null;
        const int COMSETTING_ETHERNET = 5;
        const int COMSETTING_ETHERNET_SIZE = 9;
        const int COMSETTING_DONTUSE_ET_LAN = 0;
        const int COMSETTING_PC_IP_AUTOMATIC = 0;
        const int COMSETTING_USE_ET_LAN = 0;
        const int NO_FP_CONNECT_ERROR = 0;
        const int OPEN_PLC = 0;



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


        public Form1()
        {
            InitializeComponent();
        }

        private void listele()
        {
            using (SqlConnection cn = new SqlConnection(Properties.Settings.Default.Conn))
            {
                using (SqlCommand cmd = new SqlCommand("", cn))
                {
                    cn.Open();
                    cmd.CommandText = "SELECT * FROM ARF_W_COUNTER_DETAIL WITH (NOLOCK) ";
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    dataGridView1.DataSource = dt;
                    cn.Close();
                }
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (progressBar1.Value <= 1000)
                progressBar1.Value += 1;
                    if (progressBar1.Value >= 1000)
                progressBar1.Value = 0;

            using (SqlConnection cn = new SqlConnection(Properties.Settings.Default.Conn))
            {
                using (SqlCommand cmd = new SqlCommand("", cn))
                {
                    cn.Open();
                    cmd.CommandText = "SELECT * FROM PLC WITH (NOLOCK)  Where PLC_STATUS=1 ORDER BY PLC_IP DESC";
                    SqlDataReader rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    while (rd.Read())
                    {

                        Ping p = new Ping();
                        PingReply cevap = p.Send(rd["PLC_IP"].ToString());
                        if (cevap.Status == IPStatus.Success)
                        {
                            PlcAyarOpen(rd["PLC_IP"].ToString(), (int)rd["PLC_PORT"]);
                            PlcOku(rd["PLC_IP"].ToString(), (int)rd["PLC_PORT"], (int)rd["PLC_ID"]);
                            LogYaz2("cevap.Status1", "PlcList PNIG");
                        }
                        else
                        {
                            LogYaz2("cevap.Status2", "PlcList PNIGNO");
                        }

                    }
                    cn.Close();
                    cn.Dispose();
                    rd.Close();
                    cmd.Dispose();
                }
            }
            listele();
            if (Properties.Settings.Default.UretimKaydi==1)
            {
                UretimKaydi();
                TuketimKaydi();
            }
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
                            cnYaz.Dispose();
                            cmdYaz.Dispose();

                        }
                        catch (Exception ex)
                        {
                            LogYaz2("LogYaz2", ex.Message);
                            cnYaz.Close();
                            cnYaz.Dispose();
                            cmdYaz.Dispose();
                        }

                    }
                }
            }

        }
        public static void UpdateCOUNTER(int WSID)
        {
            if (Properties.Settings.Default.LogAcik == 1)
            {
                using (SqlConnection cnYaz = new SqlConnection(Properties.Settings.Default.Conn))
                {
                    using (SqlCommand cmdYaz = new SqlCommand("UPDATE WORKSTATION_DETAIL SET RESET_COUNTER=0 WHERE WS_ID=@WSID", cnYaz))
                    {
                        try
                        {
                            cnYaz.Open();
                            cmdYaz.Parameters.AddWithValue("@WSID", WSID);
                            cmdYaz.ExecuteNonQuery();
                            cnYaz.Close();
                            cnYaz.Dispose();
                            cmdYaz.Dispose();

                        }
                        catch (Exception ex)
                        {
                            cnYaz.Close();
                            cnYaz.Dispose();
                            cmdYaz.Dispose();
                        }

                    }
                }
            }

        }
        public static void UretimKaydi()
        {
            if (Properties.Settings.Default.LogAcik == 1)
            {
                using (SqlConnection cnYaz = new SqlConnection(Properties.Settings.Default.Conn))
                {
                    using (SqlCommand cmdYaz = new SqlCommand("EXEC ARF_PRODUCTION_RECORD", cnYaz))
                    {
                        try
                        {
                            cnYaz.Open();
                            cmdYaz.ExecuteNonQuery();
                            cnYaz.Close();
                            cnYaz.Dispose();
                            cmdYaz.Dispose();

                        }
                        catch (Exception ex)
                        {
                            cnYaz.Close();
                            cnYaz.Dispose();
                            cmdYaz.Dispose();
                        }

                    }
                }
            }

        }
        public static void TuketimKaydi()
        {
            if (Properties.Settings.Default.LogAcik == 1)
            {
                using (SqlConnection cnYaz = new SqlConnection(Properties.Settings.Default.Conn))
                {
                    using (SqlCommand cmdYaz = new SqlCommand("EXEC ARF_CONSUMPTION_RECORD", cnYaz))
                    {
                        try
                        {
                            cnYaz.Open();
                            cmdYaz.ExecuteNonQuery();
                            cnYaz.Close();
                            cnYaz.Dispose();
                            cmdYaz.Dispose();

                        }
                        catch (Exception ex)
                        {
                            cnYaz.Close();
                            cnYaz.Dispose();
                            cmdYaz.Dispose();
                        }

                    }
                }
            }

        }
        private void PlcAyarOpen(string strDestinationIP_, int Plc_Port)
        {
            int[] arIntWriteData = new int[COMSETTING_ETHERNET_SIZE];
            arIntWriteData[0] = COMSETTING_ETHERNET;
            arIntWriteData[1] = COMSETTING_PC_IP_AUTOMATIC; // if COMSETTING_PC_IP_MANUAL is used strComputerIP = "127.0.0.0" is used too!
            arIntWriteData[2] = COMSETTING_USE_ET_LAN; // COMSETTING_DONTUSE_ET_LAN or COMSETTING_USE_ET_LAN;      // COMSETTING_DONTUSE_ET_LAN
            arIntWriteData[3] = Plc_Port;   // PC Port
            arIntWriteData[4] = 1;      // PC station 
            arIntWriteData[5] = Plc_Port;  // Destination port
            arIntWriteData[6] = 64;      // Destination station
            arIntWriteData[7] = 15;     // Communication timeout            
            arIntWriteData[8] = 90;     // Connection timeout       
            string srtTitel, strComputerIP, strDestinationIP;
            srtTitel = "MyEthernet";
            strComputerIP = Properties.Settings.Default.Server_IP.ToString();    // In our case it is not used and can be: ""
            strDestinationIP = strDestinationIP_;
            this.m_ocxFP_CONNECT.SetCommunicationParameter(arIntWriteData, srtTitel, strComputerIP, strDestinationIP);
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


        private void Write(string Adress, int PLC_DATA_ID, int WS_ID)
        {
            string strError = "";
            string strRegisterAddress;
            int nWordsToWrite = 1;
            strRegisterAddress = Adress;
            nWordsToWrite =1;
            if (nWordsToWrite <= 0)
                nWordsToWrite = 1;

           
                short[] arWriteData = new short[nWordsToWrite];
            for (int nWriteItem = 0; nWriteItem < nWordsToWrite; nWriteItem++)
                arWriteData[nWriteItem] = 0;

                // AreaWrite is not type specific
                if (m_ocxFP_CONNECT.AreaWrite(0, strRegisterAddress, nWordsToWrite, arWriteData, ref strError) != NO_FP_CONNECT_ERROR)
                    return;

                // you may also use WriteINT instead of
                //if (m_ocxFP_CONNECT.WriteINT(short.Parse(textBoxStation.Text), strRegisterAddress, nWordsToWrite, arWriteData, ref strError) != NO_FP_CONNECT_ERROR)
            // INT

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
        private void PlcOku(string ip, int Port, int plcid)
        {
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
                        if ((int)rd1["RESET_COUNTER"] ==1)                        
                            Write(rd1["PLC_DT"].ToString(), (int)rd1["PLC_DATA_ID"], (int)rd1["WS_ID"]);                        
                        else
                        Read(rd1["PLC_DT"].ToString(), (int)rd1["PLC_DATA_ID"], (int)rd1["WS_ID"]);

                        UpdateCOUNTER((int)rd1["WS_ID"]);


                    }
                    cn1.Close();
                    rd1.Close();
                    cmd1.Dispose();
                }
            }



        }

        private void Form1_Load(object sender, EventArgs e)
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


            this.timer2.Interval = 1000;
            this.timer2.Tick += new EventHandler(this.timer1_Tick);
            timer2.Enabled = true;
        }

        private void timer2_Tick(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
