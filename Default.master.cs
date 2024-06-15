using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["activeuser"] != null)
        {
            LabWelcome.Text = "Welcome, " + Session["activeuser"].ToString();
            Butlog.Visible = false;
            Butout.Visible = true;
        }
        else
        {
            LabWelcome.Text = "Welcome,Guest.";
            Butlog.Visible = true;
            Butout.Visible = false;
        }
    }

    protected void Butout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}