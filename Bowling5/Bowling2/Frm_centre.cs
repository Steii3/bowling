using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bowling2
{
    public partial class Frm_centre : Form
    {
        
        bool isCréer;

        public void set_isCréer(bool sent_isCréer)
        {
            isCréer = sent_isCréer;
        }
        
        public Frm_centre()
        {
            InitializeComponent();
            
            
            
        }


        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (!isCréer)
            {
                
            }
        }
        
        

    }
}
