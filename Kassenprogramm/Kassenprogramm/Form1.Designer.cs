namespace Kassenprogramm
{
    partial class Form1
    {
        /// <summary>
        /// Erforderliche Designervariable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Verwendete Ressourcen bereinigen.
        /// </summary>
        /// <param name="disposing">True, wenn verwaltete Ressourcen gelöscht werden sollen; andernfalls False.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Vom Windows Form-Designer generierter Code

        /// <summary>
        /// Erforderliche Methode für die Designerunterstützung.
        /// Der Inhalt der Methode darf nicht mit dem Code-Editor geändert werden.
        /// </summary>
        private void InitializeComponent()
        {
            this.warenkorb_box = new System.Windows.Forms.TextBox();
            this.artikel_box = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // warenkorb_box
            // 
            this.warenkorb_box.Location = new System.Drawing.Point(25, 114);
            this.warenkorb_box.Multiline = true;
            this.warenkorb_box.Name = "warenkorb_box";
            this.warenkorb_box.Size = new System.Drawing.Size(166, 63);
            this.warenkorb_box.TabIndex = 1;
            // 
            // artikel_box
            // 
            this.artikel_box.FormattingEnabled = true;
            this.artikel_box.Location = new System.Drawing.Point(25, 46);
            this.artikel_box.Name = "artikel_box";
            this.artikel_box.Size = new System.Drawing.Size(121, 21);
            this.artikel_box.TabIndex = 3;
            this.artikel_box.SelectedIndexChanged += new System.EventHandler(this.artikel_box_SelectedIndexChanged);
            // 
            // Form1
            // 
            this.ClientSize = new System.Drawing.Size(452, 384);
            this.Controls.Add(this.artikel_box);
            this.Controls.Add(this.warenkorb_box);
            this.Name = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox warenkorb_box;
        private System.Windows.Forms.ComboBox artikel_box;
    }
}

