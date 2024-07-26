namespace Ingilizce_Kelime_Oyunu
{
    partial class FrmKelimeEkle
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnKelimeEkle = new Guna.UI2.WinForms.Guna2Button();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtKelime = new Guna.UI2.WinForms.Guna2TextBox();
            this.txtAnlami = new Guna.UI2.WinForms.Guna2TextBox();
            this.txtOrnekCumle = new Guna.UI2.WinForms.Guna2TextBox();
            this.txtGorsel = new Guna.UI2.WinForms.Guna2TextBox();
            this.btnImageGetir = new Guna.UI2.WinForms.Guna2Button();
            this.cbSeviye = new Guna.UI2.WinForms.Guna2ComboBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.txtOrnekCumleAnlami = new Guna.UI2.WinForms.Guna2TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnKelimeEkle
            // 
            this.btnKelimeEkle.AutoRoundedCorners = true;
            this.btnKelimeEkle.BackColor = System.Drawing.Color.Transparent;
            this.btnKelimeEkle.BorderRadius = 20;
            this.btnKelimeEkle.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.btnKelimeEkle.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.btnKelimeEkle.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.btnKelimeEkle.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.btnKelimeEkle.FillColor = System.Drawing.Color.Gray;
            this.btnKelimeEkle.Font = new System.Drawing.Font("Segoe UI", 15F);
            this.btnKelimeEkle.ForeColor = System.Drawing.Color.White;
            this.btnKelimeEkle.Location = new System.Drawing.Point(184, 312);
            this.btnKelimeEkle.Name = "btnKelimeEkle";
            this.btnKelimeEkle.Size = new System.Drawing.Size(145, 42);
            this.btnKelimeEkle.TabIndex = 0;
            this.btnKelimeEkle.Text = "Kelime Ekle";
            this.btnKelimeEkle.Click += new System.EventHandler(this.btnKelimeEkle_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Impact", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(15, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(153, 34);
            this.label1.TabIndex = 2;
            this.label1.Text = "Kelime Ekle";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightSlateGray;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(-1, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(731, 53);
            this.panel1.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Franklin Gothic Medium Cond", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(15, 74);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 25);
            this.label2.TabIndex = 3;
            this.label2.Text = "Kelime : ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Franklin Gothic Medium Cond", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.ForeColor = System.Drawing.Color.Black;
            this.label3.Location = new System.Drawing.Point(15, 114);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(75, 25);
            this.label3.TabIndex = 4;
            this.label3.Text = "Anlamı : ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("Franklin Gothic Medium Cond", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.ForeColor = System.Drawing.Color.Black;
            this.label4.Location = new System.Drawing.Point(15, 156);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(71, 25);
            this.label4.TabIndex = 5;
            this.label4.Text = "Seviye : ";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Franklin Gothic Medium Cond", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.ForeColor = System.Drawing.Color.Black;
            this.label5.Location = new System.Drawing.Point(15, 196);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(119, 25);
            this.label5.TabIndex = 6;
            this.label5.Text = "Örnek Cümle : ";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Franklin Gothic Medium Cond", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label6.ForeColor = System.Drawing.Color.Black;
            this.label6.Location = new System.Drawing.Point(15, 276);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(67, 25);
            this.label6.TabIndex = 7;
            this.label6.Text = "Görsel :";
            // 
            // txtKelime
            // 
            this.txtKelime.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtKelime.DefaultText = "";
            this.txtKelime.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtKelime.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtKelime.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtKelime.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtKelime.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtKelime.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.txtKelime.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtKelime.Location = new System.Drawing.Point(184, 65);
            this.txtKelime.Name = "txtKelime";
            this.txtKelime.PasswordChar = '\0';
            this.txtKelime.PlaceholderText = "";
            this.txtKelime.SelectedText = "";
            this.txtKelime.Size = new System.Drawing.Size(200, 34);
            this.txtKelime.TabIndex = 10;
            // 
            // txtAnlami
            // 
            this.txtAnlami.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtAnlami.DefaultText = "";
            this.txtAnlami.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtAnlami.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtAnlami.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtAnlami.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtAnlami.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtAnlami.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.txtAnlami.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtAnlami.Location = new System.Drawing.Point(184, 105);
            this.txtAnlami.Name = "txtAnlami";
            this.txtAnlami.PasswordChar = '\0';
            this.txtAnlami.PlaceholderText = "";
            this.txtAnlami.SelectedText = "";
            this.txtAnlami.Size = new System.Drawing.Size(200, 34);
            this.txtAnlami.TabIndex = 11;
            // 
            // txtOrnekCumle
            // 
            this.txtOrnekCumle.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtOrnekCumle.DefaultText = "";
            this.txtOrnekCumle.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtOrnekCumle.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtOrnekCumle.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtOrnekCumle.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtOrnekCumle.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtOrnekCumle.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.txtOrnekCumle.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtOrnekCumle.Location = new System.Drawing.Point(184, 187);
            this.txtOrnekCumle.Name = "txtOrnekCumle";
            this.txtOrnekCumle.PasswordChar = '\0';
            this.txtOrnekCumle.PlaceholderText = "";
            this.txtOrnekCumle.SelectedText = "";
            this.txtOrnekCumle.Size = new System.Drawing.Size(200, 34);
            this.txtOrnekCumle.TabIndex = 13;
            // 
            // txtGorsel
            // 
            this.txtGorsel.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtGorsel.DefaultText = "";
            this.txtGorsel.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtGorsel.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtGorsel.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtGorsel.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtGorsel.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtGorsel.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.txtGorsel.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtGorsel.Location = new System.Drawing.Point(184, 267);
            this.txtGorsel.Name = "txtGorsel";
            this.txtGorsel.PasswordChar = '\0';
            this.txtGorsel.PlaceholderText = "";
            this.txtGorsel.SelectedText = "";
            this.txtGorsel.Size = new System.Drawing.Size(200, 34);
            this.txtGorsel.TabIndex = 14;
            // 
            // btnImageGetir
            // 
            this.btnImageGetir.BackColor = System.Drawing.Color.Transparent;
            this.btnImageGetir.DisabledState.BorderColor = System.Drawing.Color.DarkGray;
            this.btnImageGetir.DisabledState.CustomBorderColor = System.Drawing.Color.DarkGray;
            this.btnImageGetir.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(169)))), ((int)(((byte)(169)))), ((int)(((byte)(169)))));
            this.btnImageGetir.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(141)))), ((int)(((byte)(141)))), ((int)(((byte)(141)))));
            this.btnImageGetir.FillColor = System.Drawing.Color.Gray;
            this.btnImageGetir.Font = new System.Drawing.Font("Segoe UI", 15F);
            this.btnImageGetir.ForeColor = System.Drawing.Color.White;
            this.btnImageGetir.Location = new System.Drawing.Point(390, 267);
            this.btnImageGetir.Name = "btnImageGetir";
            this.btnImageGetir.Size = new System.Drawing.Size(45, 33);
            this.btnImageGetir.TabIndex = 16;
            this.btnImageGetir.Text = "...";
            this.btnImageGetir.Click += new System.EventHandler(this.btnImageGetir_Click);
            // 
            // cbSeviye
            // 
            this.cbSeviye.BackColor = System.Drawing.Color.Transparent;
            this.cbSeviye.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cbSeviye.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbSeviye.FocusedColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.cbSeviye.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.cbSeviye.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.cbSeviye.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(68)))), ((int)(((byte)(88)))), ((int)(((byte)(112)))));
            this.cbSeviye.ItemHeight = 30;
            this.cbSeviye.Location = new System.Drawing.Point(184, 145);
            this.cbSeviye.Name = "cbSeviye";
            this.cbSeviye.Size = new System.Drawing.Size(71, 36);
            this.cbSeviye.TabIndex = 17;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(481, 89);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(207, 187);
            this.pictureBox1.TabIndex = 18;
            this.pictureBox1.TabStop = false;
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // txtOrnekCumleAnlami
            // 
            this.txtOrnekCumleAnlami.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtOrnekCumleAnlami.DefaultText = "";
            this.txtOrnekCumleAnlami.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtOrnekCumleAnlami.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtOrnekCumleAnlami.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtOrnekCumleAnlami.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtOrnekCumleAnlami.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtOrnekCumleAnlami.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.txtOrnekCumleAnlami.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtOrnekCumleAnlami.Location = new System.Drawing.Point(184, 227);
            this.txtOrnekCumleAnlami.Name = "txtOrnekCumleAnlami";
            this.txtOrnekCumleAnlami.PasswordChar = '\0';
            this.txtOrnekCumleAnlami.PlaceholderText = "";
            this.txtOrnekCumleAnlami.SelectedText = "";
            this.txtOrnekCumleAnlami.Size = new System.Drawing.Size(200, 34);
            this.txtOrnekCumleAnlami.TabIndex = 21;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Transparent;
            this.label7.Font = new System.Drawing.Font("Franklin Gothic Medium Cond", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label7.ForeColor = System.Drawing.Color.Black;
            this.label7.Location = new System.Drawing.Point(15, 236);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(173, 25);
            this.label7.TabIndex = 20;
            this.label7.Text = "Örnek Cümle Anlamı : ";
            // 
            // FrmKelimeEkle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Gainsboro;
            this.ClientSize = new System.Drawing.Size(731, 403);
            this.Controls.Add(this.txtOrnekCumleAnlami);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.cbSeviye);
            this.Controls.Add(this.btnImageGetir);
            this.Controls.Add(this.txtGorsel);
            this.Controls.Add(this.txtOrnekCumle);
            this.Controls.Add(this.txtAnlami);
            this.Controls.Add(this.txtKelime);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.btnKelimeEkle);
            this.Name = "FrmKelimeEkle";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmKelimeEkle";
            this.Load += new System.EventHandler(this.FrmKelimeEkle_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Guna.UI2.WinForms.Guna2Button btnKelimeEkle;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private Guna.UI2.WinForms.Guna2TextBox txtKelime;
        private Guna.UI2.WinForms.Guna2TextBox txtAnlami;
        private Guna.UI2.WinForms.Guna2TextBox txtOrnekCumle;
        private Guna.UI2.WinForms.Guna2TextBox txtGorsel;
        private Guna.UI2.WinForms.Guna2Button btnImageGetir;
        private Guna.UI2.WinForms.Guna2ComboBox cbSeviye;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private Guna.UI2.WinForms.Guna2TextBox txtOrnekCumleAnlami;
        private System.Windows.Forms.Label label7;
    }
}