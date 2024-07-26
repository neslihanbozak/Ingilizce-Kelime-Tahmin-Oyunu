using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Ingilizce_Kelime_Oyunu
{
    public partial class frmKullanici : Form
    {
        private string _ad;
        private string _soyad;

        public frmKullanici(string ad, string soyad)
        {
            InitializeComponent();
            _ad = ad;
            _soyad = soyad;
        }

        private void frmKullanici_Load(object sender, EventArgs e)
        {
            lblAdSoyad.Text = $"{_ad} {_soyad}";
        }
    }
}
