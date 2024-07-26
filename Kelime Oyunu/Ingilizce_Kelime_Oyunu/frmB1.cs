using System;
using System.Data.SqlClient;
using System.Windows.Forms;
using IngilizceKelimeOyunu;

namespace Ingilizce_Kelime_Oyunu
{
    public partial class frmB1 : Form
    {
        private string currentKelime = "";
        private string currentAnlami = "";
        private string currentOrnekCumle = "";
        private string currentOrnekCumleAnlami = "";
        private string currentResim = "";
        private int puan = 0;
        private SqlConnection connection;

        public frmB1()
        {
            InitializeComponent();
            connection = new SqlConnection("Data Source=NESLIHAN\\SQLEXPRESS;Initial Catalog=IngilizceKelimeOyunuDB;Integrated Security=True");
            this.AcceptButton = btnKontrolEt;
        }

        private void frmB1_Load_1(object sender, EventArgs e)
        {
            GetRandomKelime();
        }

        private void GetRandomKelime()
        {
            try
            {
                connection.Open();
                string query = "SELECT TOP 1 kelime, anlami, ornekCumle, ornekCumleAnlami, resim FROM Kelime WHERE seviyeID = 3 ORDER BY NEWID()";

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
                            MessageBox.Show("Veritabanında seviye ID'si 3 olan kelime bulunamadı.");
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

        private void btnKontrolEt_Click(object sender, EventArgs e)
        {
            if (txtKelimeTurkce.Text.Equals(currentAnlami, StringComparison.OrdinalIgnoreCase))
            {
                // Kullanıcı doğru tahmin yaptığında puanını artır
                puan++;
                lblPuan.Text = puan.ToString();

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

        private void btnGeri_Click(object sender, EventArgs e)
        {
            frmAnasayfa anasayfa = new frmAnasayfa();
            anasayfa.ShowDialog();
            this.Hide();
        }
    }
}

