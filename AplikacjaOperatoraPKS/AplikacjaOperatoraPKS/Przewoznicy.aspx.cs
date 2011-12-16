using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplikacjaOperatoraPKS
{
    public partial class Przewoznicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DodajRekord3_Click(object sender, EventArgs e)
        {
            this.SqlDataSourcePrzewoznicy.InsertParameters["id"].DefaultValue = txtIdPrzewoznicy.Text;
            this.SqlDataSourcePrzewoznicy.InsertParameters["nazwa"].DefaultValue = txtNazwaPrzewoznicy.Text;
            this.SqlDataSourcePrzewoznicy.Insert();
            this.txtIdPrzewoznicy.Text = "";
            this.txtNazwaPrzewoznicy.Text = "";
        }
    }
}