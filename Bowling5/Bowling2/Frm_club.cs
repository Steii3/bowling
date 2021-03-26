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
        public void set_isCréer(bool sent_isCréer)
        {
            isCréer = sent_isCréer;
        }
        public Frm_club()
        {
            InitializeComponent();
        }
        
        public void populateTxtBox(List<String> Valeurs)
        {
            txt_numero.Text = Valeurs[0];
            txt_nom.Text = Valeurs[1];
            txt_ville.Text = Valeurs[2];
            txt_adresse.Text = Valeurs[3];
            txt_president.Text = Valeurs[4];
            txt_centre.Text = Valeurs[5];

        }

        private void txt_nom_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
