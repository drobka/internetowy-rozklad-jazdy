using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplikacjaOperatoraPKP
{
    public partial class Polaczenia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonPolaczenia_Click(object sender, EventArgs e)
        {
            this.SqlDataSource5.InsertParameters["id"].DefaultValue = txtPolId.Text;
            this.SqlDataSource5.InsertParameters["id_stacja_start"].DefaultValue = txtPolStart.Text;
            this.SqlDataSource5.InsertParameters["id_stacja_koniec"].DefaultValue = txtPolKoniec.Text;
            this.SqlDataSource5.InsertParameters["id_data_odjazdu"].DefaultValue = txtPolData.Text;
            this.SqlDataSource5.InsertParameters["godzina_odjazdu"].DefaultValue = txtPolGodzina.Text;
            this.SqlDataSource5.InsertParameters["id_przewoznik"].DefaultValue = txtPolPrzewoznik.Text;
            this.SqlDataSource5.InsertParameters["id_odleglosc"].DefaultValue = txtPolOdleglosc.Text;
            this.SqlDataSource5.InsertParameters["cena"].DefaultValue = txtPolCena.Text;
            this.SqlDataSource5.Insert();
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