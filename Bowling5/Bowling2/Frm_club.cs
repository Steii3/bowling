using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bowling2
{
    public partial class Frm_club : Form
    {
        bool isCréer;
        List<TextBox> TextBoxes = new List<TextBox>();
         mySQL_control SQL_control = new mySQL_control();
        public void set_isCréer(bool sent_isCréer)
        {
            isCréer = sent_isCréer;
        }
        public Frm_club()
        {
            InitializeComponent();
            TextBoxes.Add(txt_numero);
            TextBoxes.Add(txt_nom);
            TextBoxes.Add(txt_ville);
            TextBoxes.Add(txt_adresse);
            TextBoxes.Add(txt_president);
            List<string> listes = new List<string>();
            DataTable all_centerTable = SQL_control.GetData("select id from centre");
            //convertie ce tableau en liste
            for (int i = 0; i < all_centerTable.Rows.Count; i++)
            {
                listes.Add(all_centerTable.Rows[i][0].ToString());
            }
            cmb_centre.DataSource = listes;
            Load += new EventHandler(Frm_club_Load);
        }
        private void Frm_club_Load(object sender, System.EventArgs e)
        {
            if (isCréer)
            {
                this.empty();
            }
        }
        public void empty()
        {
            //txt_numero.Text = "";
            //txt_nom.Text = "";
            //txt_ville.Text = "";
            //txt_adresse.Text = "";
            //txt_president.Text = "";
            foreach(TextBox textboxvar in TextBoxes)
            {
                textboxvar.Text = "";
            }
        }
        void Text2TextBox(List<String> Text, List<TextBox> textBoxe)
        {
            for (int i = 0; i != textBoxe.Count; i++) textBoxe[i].Text = Text[i];
        }
        ///<summary>Convertis Les champs des textbox en string pour insert</summary>
        String TextBox2SQL()
        { 
            string Text = "";
            foreach (TextBox textBoxvar in TextBoxes) Text += ((Text == "") ? "" : ",") + Encap(textBoxvar.Text);
            return Text;
        }
        String Encap(string Texte) { return "'" + Texte + "'"; }
        
        public void populateTxtBox(List<String> Valeurs)
        {
            Text2TextBox(Valeurs, TextBoxes);
            cmb_centre.SelectedIndex = int.Parse(Valeurs[5]);
        }

        private void txt_nom_TextChanged(object sender, EventArgs e)
        {

        }
         
        private void btn_enregistrer_Click(object sender, EventArgs e)
        {
            if (isCréer)
            {

                SQL_control.Insert("club", TextBox2SQL() +","+ Encap(cmb_centre.Text));
            }
            else
            {

            }
            this.Close();
        }
    }
}
