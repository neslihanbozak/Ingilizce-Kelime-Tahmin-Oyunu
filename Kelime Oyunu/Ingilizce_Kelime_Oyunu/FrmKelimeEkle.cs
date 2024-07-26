using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using IngilizceKelimeOyunu;

namespace Ingilizce_Kelime_Oyunu
{
    public partial class FrmKelimeEkle : Form
    {
        //SqlConnection baglanti = new SqlConnection(@"Data Source=NESLIHAN\SQLEXPRESS;Initial Catalog=IngilizceKelimeOyunuDB;Integrated Security=True");
        public FrmKelimeEkle()
        {
            InitializeComponent();
        }
        private void FrmKelimeEkle_Load(object sender, EventArgs e)
        {
            SeviyeComboBox();
        }

        private void TextBoxTemizle()
        {
            txtKelime.Text = "";
            txtAnlami.Text = "";
            txtOrnekCumle.Text = "";
            txtOrnekCumleAnlami.Text = "";
            txtGorsel.Text = "";
            pictureBox1.ImageLocation = "";
        }

        private void SeviyeComboBox()
        {
            try
            {
                // Merkezi bağlantı sınıfını kullanarak bağlantıyı al
                SqlConnection connection = DatabaseConnection.GetConnection();

                string komut = "SELECT seviye FROM Seviye";// Seviye tablosundaki seviyeleri al 

                using (SqlCommand cmd = new SqlCommand(komut, connection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string seviye = reader["seviye"].ToString();// Her bir seviyeyi ComboBox'a ekle
                            cbSeviye.Items.Add(seviye);
                        }
                    }
                }
            }
            finally
            {
                DatabaseConnection.CloseConnection();
            }
        }

        private void btnKelimeEkle_Click(object sender, EventArgs e)
        {
            // Boş alanların kontrolü
            if (string.IsNullOrWhiteSpace(txtKelime.Text) ||
                string.IsNullOrWhiteSpace(txtAnlami.Text) ||
                string.IsNullOrWhiteSpace(txtOrnekCumle.Text) ||
                string.IsNullOrWhiteSpace(txtOrnekCumleAnlami.Text) ||
                string.IsNullOrWhiteSpace(txtGorsel.Text) ||
                cbSeviye.SelectedIndex == -1)
            {
                MessageBox.Show("Lütfen tüm alanları doldurunuz.");
                return;
            }

            SqlConnection connection = null;

            try
            {
                connection = DatabaseConnection.GetConnection();

                // Kelimenin daha önce eklenip eklenmediğini kontrol et
                string checkQuery = "SELECT COUNT(*) FROM Kelime WHERE kelime = @kelime";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, connection))
                {
                    checkCmd.Parameters.AddWithValue("@kelime", txtKelime.Text);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {
                        MessageBox.Show("Bu kelime zaten eklenmiş.");
                        TextBoxTemizle();
                        return; // Kelime zaten eklenmişse, işlemi sonlandır
                    }
                }

                // Yeni kelime ekleme işlemi
                string insertQuery = "INSERT INTO Kelime (kelime, anlami, resim, ornekCumle, ornekCumleAnlami, seviyeID) " +
                                     "VALUES(@kelime, @anlami, @resim, @ornekCumle, @ornekCumleAnlami, @seviyeID)";
                using (SqlCommand insertCmd = new SqlCommand(insertQuery, connection))
                {
                    insertCmd.Parameters.AddWithValue("@kelime", txtKelime.Text);
                    insertCmd.Parameters.AddWithValue("@anlami", txtAnlami.Text);
                    insertCmd.Parameters.AddWithValue("@resim", txtGorsel.Text);
                    insertCmd.Parameters.AddWithValue("@ornekCumle", txtOrnekCumle.Text);
                    insertCmd.Parameters.AddWithValue("@ornekCumleAnlami", txtOrnekCumleAnlami.Text);
                    insertCmd.Parameters.AddWithValue("@seviyeID", cbSeviye.SelectedIndex + 1); // Seviye ComboBox'ından seçilen indeksi kullanarak seviyeID'yi belirle

                    insertCmd.ExecuteNonQuery();
                }

                MessageBox.Show("Kayıt eklendi");
                TextBoxTemizle();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hata: " + ex.Message);
            }
            finally
            {
                if (connection != null && connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }


        private void btnImageGetir_Click(object sender, EventArgs e)
        {
            openFileDialog1.ShowDialog();
            pictureBox1.ImageLocation = openFileDialog1.FileName;
            txtGorsel.Text = openFileDialog1.FileName;
        }


    }
}
