using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace InternetowyRozkladJazdy
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Attributes.CssStyle.Add("TEXT-ALIGN", "right");
            Label2.Attributes.CssStyle.Add("TEXT-ALIGN", "right");
            Label3.Attributes.CssStyle.Add("TEXT-ALIGN", "right");
        }

        private void ShowPopUpMsg(string msg)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("alert('");
            sb.Append(msg.Replace("\n", "\\n").Replace("\r", "").Replace("'", "\\'"));
            sb.Append("');");
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "showalert", sb.ToString(), true);
        }

        protected void ButtonWyszukaj_Click(object sender, ImageClickEventArgs e)
        {
if (DropDownListStart.SelectedValue == DropDownListStop.SelectedValue)
{
    ShowPopUpMsg("Stacja początkowa nie może być taka sama jak stacja końcowa.");
}
else if (DataTimePicker.Text == "")
{
    ShowPopUpMsg("Nie wybrano daty lub godziny odjazdu.");
}
else
{
    // Global.Start = Int32.Parse(DropDownListStart.SelectedValue);
    //Global.Stop = Int32.Parse(DropDownListStop.SelectedValue);
    Global.Data = DataTimePicker.DateTime;
    Response.Redirect("ShowResults.aspx?Start=" + DropDownListStart.SelectedValue + 
                        "&Stop=" + DropDownListStop.SelectedValue +
                        "&Date=" + DataTimePicker.DateTime.ToShortDateString() +
                        "&DateNatural=" + DataTimePicker.DateTime.ToLongDateString());
}
        }
    }
}
