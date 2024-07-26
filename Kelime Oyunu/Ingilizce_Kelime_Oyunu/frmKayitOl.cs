using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using IngilizceKelimeOyunu;

namespace Ingilizce_Kelime_Oyunu
{
    public partial class frmKayitOl : Form
    {
        public frmKayitOl()
        {
            InitializeComponent();
        }

        private void btnGirisYap_Click(object sender, EventArgs e)
        {
            frmGiris giris = new frmGiris();
            giris.Show();
            this.Hide();
        }

        private void btnKayitOl_Click(object sender, EventArgs e)
        {
            // Kullanıcı bilgilerini al
            string ad = txtAd.Text;
            string soyad = txtSoyad.Text;
            string eposta = txtEposta.Text;
            string sifre = txtSifre.Text;


            if (string.IsNullOrWhiteSpace(ad) || string.IsNullOrWhiteSpace(soyad) || string.IsNullOrWhiteSpace(eposta) || string.IsNullOrWhiteSpace(sifre))
            {
                MessageBox.Show("Lütfen tüm alanları doldurunuz.");
                return;
            }

            // Email formatını kontrol et
            try
            {
                using (SqlConnection connection = DatabaseConnection.GetConnection())
                {
                    string query = "INSERT INTO Kullanici (ad, soyad, eposta, sifre ) VALUES (@ad, @soyad, @eposta, @sifre )";
                    SqlCommand command = new SqlCommand(query, connection);

                    command.Parameters.AddWithValue("@ad", txtAd.Text);
                    command.Parameters.AddWithValue("@soyad", txtSoyad.Text);
                    command.Parameters.AddWithValue("@eposta", txtEposta.Text);
                    command.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    command.ExecuteNonQuery();

                }

            }
            catch (Exception)
            {
                MessageBox.Show("Kayıt işlemi sırasında bir hata oluştu. Tekrar Deneyiniz");
            }

            try
            {
                MessageBox.Show("Kayıt başarılı!");

                // Formu temizle
                txtAd.Clear();
                txtSoyad.Clear();
                txtEposta.Clear();
                txtSifre.Clear();

                frmGiris giris = new frmGiris();
                giris.Show();



                this.Hide();

            }
            catch (Exception ex)
            {
                MessageBox.Show($"Kayıt işlemi sırasında bir hata oluştu: {ex.Message}");
            }
        }
    }
}
