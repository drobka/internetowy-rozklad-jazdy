using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternetowyRozkladJazdy
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Attributes.CssStyle.Add("TEXT-ALIGN", "right");
            Label2.Attributes.CssStyle.Add("TEXT-ALIGN", "right");
            Label3.Attributes.CssStyle.Add("TEXT-ALIGN", "right");
            Label4.Attributes.CssStyle.Add("TEXT-ALIGN", "right");
        }
    }
}
