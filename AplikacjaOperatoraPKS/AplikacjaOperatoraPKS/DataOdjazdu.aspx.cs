using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplikacjaOperatoraPKS
{
    public partial class DataOdjazdu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonData_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceDataOdjazdu.InsertParameters["id"].DefaultValue = txtIdData.Text;
            this.SqlDataSourceDataOdjazdu.InsertParameters["opis"].DefaultValue = txtOpisData.Text;
            this.SqlDataSourceDataOdjazdu.Insert();
            this.txtIdData.Text = "";
            this.txtOpisData.Text = "";
        }
    }
}