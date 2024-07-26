using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using IngilizceKelimeOyunu;

namespace Ingilizce_Kelime_Oyunu
{
    public partial class frmGiris : Form
    {
        public frmGiris()
        {
            InitializeComponent();
        }

        private void btnGirisYap_Click(object sender, EventArgs e)
        {
            var (kullaniciID, yetkiID, ad, soyad) = GetUserCredentials(txtEposta.Text, txtSifre.Text);

            if (kullaniciID != -1)
            {
                if (yetkiID == 1)
                {
                    FrmKelimeEkle kelimeEkle = new FrmKelimeEkle();
                    kelimeEkle.Show();
                }
                else if (yetkiID == 2)
                {
                    frmAnasayfa anaSayfa = new frmAnasayfa();
                    anaSayfa.Show();
                }
                else
                {
                    frmKullanici kullaniciForm = new frmKullanici(ad, soyad);
                    kullaniciForm.Show();
                }

                this.Hide();
            }
            else
            {
                MessageBox.Show("Kullanıcı adı veya şifre yanlış.");
            }
        }

        private (int kullaniciID, int yetkiID, string ad, string soyad) GetUserCredentials(string eposta, string sifre)
        {
            int kullaniciID = -1;
            int yetkiID = -1;
            string ad = string.Empty;
            string soyad = string.Empty;

            try
            {
                var connectionString = "Data Source=NESLIHAN\\SQLEXPRESS;Initial Catalog=IngilizceKelimeOyunuDB;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT ID, yetkiID, ad, soyad FROM Kullanici WHERE eposta = @eposta AND sifre = @sifre";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@eposta", eposta);
                    command.Parameters.AddWithValue("@sifre", sifre);

                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            kullaniciID = Convert.ToInt32(reader["ID"]);
                            yetkiID = Convert.ToInt32(reader["yetkiID"]);
                            ad = reader["ad"].ToString();
                            soyad = reader["soyad"].ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Kullanıcı bilgilerini alırken bir hata oluştu: " + ex.Message);
            }

            return (kullaniciID, yetkiID, ad, soyad);
        }


        private void btnKayitOl_Click(object sender, EventArgs e)
        {
            frmKayitOl kayitOl = new frmKayitOl();
            kayitOl.Show();
            this.Hide();
        }
    }
}

