using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplikacjaOperatoraPKP
{
    public partial class DataOdjazdu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonData_Click(object sender, EventArgs e)
        {
            this.SqlDataSource2.InsertParameters["id"].DefaultValue = txtIdData.Text;
            this.SqlDataSource2.InsertParameters["opis"].DefaultValue = txtOpisData.Text;
            this.SqlDataSource2.Insert();
            this.txtIdData.Text = "";
            this.txtOpisData.Text = "";
        }
    }
}