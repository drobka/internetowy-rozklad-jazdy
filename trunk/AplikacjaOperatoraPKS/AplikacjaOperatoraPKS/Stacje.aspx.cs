using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplikacjaOperatoraPKS
{
    public partial class Stacje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonStacje_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceStacje.InsertParameters["id"].DefaultValue = txtStacjeId.Text;
            this.SqlDataSourceStacje.InsertParameters["nazwa"].DefaultValue = txtStacjeNazwa.Text;
            this.SqlDataSourceStacje.Insert();
            this.txtStacjeId.Text = "";
            this.txtStacjeNazwa.Text = "";
        }
    }
}