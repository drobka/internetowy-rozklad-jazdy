using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplikacjaOperatoraPKS
{
    public partial class Polaczenia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonPolaczenia_Click(object sender, EventArgs e)
        {
            this.SqlDataSourcePolaczenia.InsertParameters["id"].DefaultValue = txtPolId.Text;
            this.SqlDataSourcePolaczenia.InsertParameters["id_stacja_start"].DefaultValue = txtPolStart.Text;
            this.SqlDataSourcePolaczenia.InsertParameters["id_stacja_koniec"].DefaultValue = txtPolKoniec.Text;
            this.SqlDataSourcePolaczenia.InsertParameters["id_data_odjazdu"].DefaultValue = txtPolData.Text;
            this.SqlDataSourcePolaczenia.InsertParameters["godzina_odjazdu"].DefaultValue = txtPolGodzina.Text;
            this.SqlDataSourcePolaczenia.InsertParameters["id_przewoznik"].DefaultValue = txtPolPrzewoznik.Text;
            this.SqlDataSourcePolaczenia.InsertParameters["id_odleglosc"].DefaultValue = txtPolOdleglosc.Text;
            this.SqlDataSourcePolaczenia.InsertParameters["cena"].DefaultValue = txtPolCena.Text;
            this.SqlDataSourcePolaczenia.Insert();
            this.txtPolId.Text = "";
            this.txtPolStart.Text = "";
            this.txtPolKoniec.Text = "";
            this.txtPolData.Text = "";
            this.txtPolGodzina.Text = "";
            this.txtPolPrzewoznik.Text = "";
            this.txtPolOdleglosc.Text = "";
            this.txtPolCena.Text = "";
        }
    }
}