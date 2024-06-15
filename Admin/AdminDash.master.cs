using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDash : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["activeuser"] != null && Session["role"]=="Admin")
        {
            Laname.Text = Session["activeuser"].ToString();
        }

        if (Session["activeuser"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        
    }
}
