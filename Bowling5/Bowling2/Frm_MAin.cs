using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Windows.Forms;

namespace Bowling2
{

    public partial class Frm_Main : Form
    {
        Frm_licencié form_licencie = new Frm_licencié();
        Frm_club form_club = new Frm_club();
        Frm_centre form_centre = new Frm_centre();
        Frm_competition form_competition = new Frm_competition();
        mySQL_control SQL_control = new mySQL_control();
        
        public Frm_Main()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;

            dataGridViewCentre.DataSource = SQL_control.GetData("select * from centre");
            cmbSelectCentre.DataSource = SQL_control.GetField("centre");

            DataGridViewLicencie.DataSource = SQL_control.GetData("select * from  licencie");
            cmbSelectLicencies.DataSource = SQL_control.GetField("licencie");

            dataGridViewClub.DataSource = SQL_control.GetData("select * from club");
            cmbSelectClub.DataSource = SQL_control.GetField("club");

            dataGridViewCompetition.DataSource = SQL_control.GetData("select * from competition");
            cmbSelectCompetition.DataSource = SQL_control.GetField("competition");





        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {

        }

        private void afficherClubsToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        
        private void afficherLicenciésToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }



        #region créer_boutton_form
        private void créerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            form_licencie.set_isCréer(true);  //permet d'envoyer si le forme crée un nouveau licencié ou en ajoute un ancien au form
            form_licencie.StartPosition = FormStartPosition.CenterScreen;
            form_licencie.ShowDialog(this); //permet d'etre modal
        }

        private void créerToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            form_club.set_isCréer(true);
            form_club.StartPosition = FormStartPosition.CenterScreen;
            form_club.ShowDialog(this); 
        }

        private void créerToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            form_centre.set_isCréer(true);
            form_centre.StartPosition = FormStartPosition.CenterScreen;
            form_centre.ShowDialog(this); 
        }

        private void créerToolStripMenuItem3_Click(object sender, EventArgs e)
        {
            form_competition.set_isCréer(true);
            form_competition.StartPosition = FormStartPosition.CenterScreen;
            form_competition.ShowDialog(this); 
        }
        #endregion



        #region modifier_boutton_form

        private void modifLicencieBtn_Click(object sender, EventArgs e)
        {
            form_licencie.set_isCréer(false);
            form_licencie.StartPosition = FormStartPosition.CenterScreen;
            form_licencie.ShowDialog(this);
        }
        private void modifClubBtn_Click(object sender, EventArgs e)
        {
            if (dataGridViewClub.SelectedRows.Count >= 1)
            {
                List<string> Valeurs = new List<string>();
                string row_text = "";
                DataGridViewCellCollection row = dataGridViewClub.SelectedRows[0].Cells;
                foreach (DataGridViewCell aCell in row)
                {

                    //row_text += row_text != "" ? "," : "" + dataGridViewClub.Columns[aCell.ColumnIndex].HeaderText;
                    //row_text += '=' + aCell.Value.ToString();
                    Valeurs.Add(aCell.Value.ToString());
                    
                }
                MessageBox.Show(row_text);

                form_club.populateTxtBox(Valeurs);
                form_club.set_isCréer(false);
                form_club.StartPosition = FormStartPosition.CenterScreen;
                form_club.ShowDialog(this);
                
                
            }
            else
            {
                MessageBox.Show("ERREUR, rien n'est selectionné");
            }
           
        }


 

      

        #endregion 

        #region supprimer_boutton_form
        private void supprLicencieBtn_Click(object sender, EventArgs e)
        {
            if (DataGridViewLicencie.SelectedRows.Count != 0)
            {
                DataGridViewRow Ligne = this.DataGridViewLicencie.SelectedRows[0];

                

                SQL_control.Delete("licencie", int.Parse(Ligne.Cells["id"].Value.ToString()));
            }
            Grid_update("licencie");


        }

        private void supprClubBtn_Click(object sender, EventArgs e)
        {
            if (dataGridViewClub.SelectedRows.Count != 0)
            {
                DataGridViewRow Ligne = this.dataGridViewClub.SelectedRows[0];



                SQL_control.Delete("club", int.Parse(Ligne.Cells["id"].Value.ToString()));
            }
            Grid_update("club");

        }

        private void supprCentreBtn_Click(object sender, EventArgs e)
        {
            if (dataGridViewCentre.SelectedRows.Count != 0)
            {
                DataGridViewRow Ligne = this.dataGridViewCentre.SelectedRows[0];

                

                SQL_control.Delete("centre", int.Parse(Ligne.Cells["id"].Value.ToString()));
            }
            Grid_update("centre");
        }

        private void supprCompBtn_Click(object sender, EventArgs e)
        {
            if (dataGridViewCompetition.SelectedRows.Count != 0)
            {
                DataGridViewRow Ligne = this.dataGridViewCompetition.SelectedRows[0];



                SQL_control.Delete("competition", int.Parse(Ligne.Cells["id"].Value.ToString()));
            }
            Grid_update("competition");
        }

        #endregion

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        #region rechercher 
        private void txtFindLicencié_TextChanged(object sender, EventArgs e)
        {
            Grid_update("licencie");
        }
        private void cmbSelectLicencies_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid_update("licencie");
        }


        private void txtFindClub_TextChanged(object sender, EventArgs e)
        {
            Grid_update("club");
        }
        private void cmbSelectClub_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid_update("club");
        }

        private void txtFindCentre_TextChanged(object sender, EventArgs e)
        {
            Grid_update("centre");

        }
        private void cmbSelectCentre_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid_update("centre");
        }


      

        private void txtFindCompet_TextChanged(object sender, EventArgs e)
        {
            Grid_update("competition");
        }
        private void cmbSelectCompetition_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid_update("competition");
        }




        #endregion
        void Grid_update(string table)
        {
             /*sert a changer le gridview en fonction de la recherche faite, 
             * a besoin  :
             *              du gridview qui vas etre affecté
             *              du textbox qui fait la recherche
             *              du combobox qui choisit sur quoi est la recherche (num,nom...)
             */

            DataGridView datagrid = dataGridViewCentre;
            TextBox textbox = txtFindCentre;
            ComboBox combo = cmbSelectCentre;
            switch (table)
                {
                    case "centre":
                        datagrid = dataGridViewCentre;
                        textbox = txtFindCentre;
                        combo = cmbSelectCentre;
                        break;
                    case "club":
                        datagrid = dataGridViewClub;
                        textbox = txtFindClub;
                        combo = cmbSelectClub;
                        break;
                    case "competition":
                        datagrid = dataGridViewCompetition;
                        textbox = txtFindCompet;
                        combo = cmbSelectCompetition;
                        break;
                    case "licencie":
                        datagrid = DataGridViewLicencie;
                        textbox = txtFindLicencié;
                        combo = cmbSelectLicencies;
                        break;
                    default:
                        Debug.Fail("Erreur, la table spécifié n'existe pas");
                            break;
                }

      
            string search = textbox.Text;
            string searchby = combo.SelectedItem.ToString();
            if (search == "") {
                datagrid.DataSource = SQL_control.GetData(String.Format("select * from {0}",table));
            }
            else {
                Debug.WriteLine(String.Format("select * from {2} where {0} like %{1}%", searchby, search, table));
                datagrid.DataSource = SQL_control.GetData(String.Format("select * from {2} where {0} like '%{1}%' ", searchby,search,table));
                
            }
            
            datagrid.Refresh();
            datagrid.Update();
        }



  

        private void tabControlCompetition_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid_update("centre");
            Grid_update("club");
            Grid_update("competition");
            Grid_update("licencie");
        }

        
    }
}
