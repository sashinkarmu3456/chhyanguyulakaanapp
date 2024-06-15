using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Butcontact_Click(object sender, EventArgs e)
    {
        try
        {
            Modules mo = new Modules();
            string uname = this.Textemail.Text;
            string ufullname = this.Textname.Text;
            string umessage = this.Textmsg.Text;
            mo.adcontact(uname,ufullname,umessage);
            this.Textemail.Text = "";
            this.Textname.Text = "";
            this.Textmsg.Text = "";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Message has been sent');</script>");
            Response.Redirect("../default.aspx");
           
        }
        catch (Exception ex)
        {
            errorlbl.Text = ex.Message;

        }
    }
}