using Ingilizce_Kelime_Oyunu;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace IngilizceKelimeOyunu
{
    public partial class frmA2 : Form
    {
        private string currentKelime = "";
        private string currentAnlami = "";
        private string currentOrnekCumle = "";
        private string currentOrnekCumleAnlami = "";
        private string currentResim = "";
        private int puan = 0;
        private List<string> knownWords = new List<string>();

        public frmA2()
        {
            InitializeComponent();
            GetRandomKelime();
            this.AcceptButton = btnKontrolEt;
        }

        // Yapılandırıcı kullanıcı ID alacak şekilde güncellendi
        public frmA2(int kullaniciID) : this()
        {
            // Kullanıcı ID'yi burada alıp işleyebilirsiniz
            // Örneğin, kullanıcı ilerlemesini kullanıcı ID'ye göre çekebilirsiniz.
        }

        private void GetRandomKelime()
        {
            SqlConnection connection = null;
            try
            {
                connection = DatabaseConnection.GetConnection();
                string query = "SELECT TOP 1 kelime, anlami, ornekCumle, ornekCumleAnlami, resim FROM Kelime " +
                    "WHERE seviyeID = 2 AND kelime NOT IN ('" + string.Join("','", knownWords) + "') ORDER BY NEWID()";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            currentKelime = reader["kelime"].ToString();
                            currentAnlami = reader["anlami"].ToString();
                            currentOrnekCumle = reader["ornekCumle"].ToString();
                            currentOrnekCumleAnlami = reader["ornekCumleAnlami"].ToString();
                            currentResim = reader["resim"].ToString();

                            lblIngilizceKelime.Text = currentKelime;
                            lblOrnekCumle.Text = currentOrnekCumle;
                            lblOrnekCumleAnlami.Text = currentOrnekCumleAnlami;

                            if (!string.IsNullOrEmpty(currentResim))
                            {
                                pictureBox1.ImageLocation = currentResim;
                            }
                            else
                            {
                                pictureBox1.Image = null;
                            }
                        }
                        else
                        {
                            MessageBox.Show("Veritabanında daha fazla kelime bulunamadı.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Kelime getirirken hata: " + ex.Message);
            }
            finally
            {
                if (connection != null && connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }

        private void btnKontrolEt_Click_1(object sender, EventArgs e)
        {

            if (txtKelimeTurkce.Text.Equals(currentAnlami, StringComparison.OrdinalIgnoreCase))
            {
                // Kullanıcı doğru tahmin yaptığında puanını artır
                puan++;
                lblPuan.Text = puan.ToString();

                // Doğru bilinen kelimeyi listeye ekle
                knownWords.Add(currentKelime);
            }
            else
            {
                // Kullanıcı yanlış tahmin yaptığında puanını azalt
                puan = Math.Max(0, puan - 1); // Puan negatif olamaz
                lblPuan.Text = puan.ToString();

                MessageBox.Show("Yanlış anlam!");
            }

            // Yeni kelimeyi getir
            GetRandomKelime();
            txtKelimeTurkce.Clear();
        }

        private void frmA2_Load(object sender, EventArgs e)
        {
            GetRandomKelime();
        }

        private void btnGeri_Click(object sender, EventArgs e)
        {
            frmAnasayfa anasayfa = new frmAnasayfa();
            anasayfa.ShowDialog();
            this.Hide();
        }
    }
}
