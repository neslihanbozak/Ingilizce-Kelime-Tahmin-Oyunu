using IngilizceKelimeOyunu;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ingilizce_Kelime_Oyunu
{
    public partial class frmAnasayfa : Form
    {
        public frmAnasayfa()
        {
            InitializeComponent();
        }

        private void btnA1_Click(object sender, EventArgs e)
        {
            frmA1 frmA1 = new frmA1();
            frmA1.ShowDialog();
            this.Hide();
        }

        private void btnA2_Click(object sender, EventArgs e)
        {
            
            frmA2 frmA2 = new frmA2();
            frmA2.ShowDialog();
            this.Hide();
        }

        private void btnB1_Click(object sender, EventArgs e)
        {
            frmB1 frmB1 = new frmB1();
            frmB1.ShowDialog();
            this.Hide();

        }

        private void btnKullanici_Click(object sender, EventArgs e)
        {
            string ad = frmGiris.; // Kullanıcının adını TextBox'tan al
            string soyad = ; // Kullanıcının soyadını TextBox'tan al
            frmKullanici kullaniciForm = new frmKullanici(ad, soyad);
            kullaniciForm.Show();
            this.Hide();
        }
    }
}
