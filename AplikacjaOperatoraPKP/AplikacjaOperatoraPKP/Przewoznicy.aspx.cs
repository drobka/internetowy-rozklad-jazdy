using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplikacjaOperatoraPKP
{
    public partial class Przewoznicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DodajRekord3_Click(object sender, EventArgs e)
        {
            this.SqlDataSource3.InsertParameters["id"].DefaultValue = txtId3.Text;
            this.SqlDataSource3.InsertParameters["nazwa"].DefaultValue = txtNazwa3.Text;
            this.SqlDataSource3.Insert();
            this.txtId3.Text = "";
            this.txtNazwa3.Text = "";
        }
    }
}