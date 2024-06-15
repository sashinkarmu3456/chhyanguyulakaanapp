using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserRegister : System.Web.UI.Page
{
    Conclass gfccon = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //if (Session["activeuser"] == null)
        //{
        //    Response.Redirect("Default.aspx");
        //}

    }
    protected void Butjoin_Click(object sender, EventArgs e)
    {
        try
        {
            // value and class call
            loginrole lr = new loginrole();
            string uname = this.Textuser.Text;
            //ENCODING FOR PWD
            string upwd = this.Textpwd.Text;
            ModEnDe ende = new ModEnDe();
            string renpwd = ende.Encryp(upwd);
            //ENCOADING ENDED
            string ufullname = this.Textfullname.Text;
            string uaddress = this.Textaddress.Text;
            string umobile = this.Textmobile.Text;
            //CHECKING FOR EXISTING USER//
            //loginrole lc = new loginrole();
            DataTable dt = lr.chkuser(Textuser.Text);
            if (dt.Rows.Count == 0)
            {
                lr.userreg(uname, renpwd, ufullname, uaddress, umobile);
                //Clear Form
                this.Textuser.Text = "";
                this.Textpwd.Text = "";
                this.Textcpwd.Text = "";
                this.Textfullname.Text = "";
                this.Textaddress.Text = "";
                this.Textmobile.Text = "";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Duplicate User, User is already Registered, Please Login');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('User is Registered, Please Login');</script>");
                Response.Redirect("Login.aspx");
            }
        }
        catch (Exception ex)
        {
            errorlbl.Text = ex.Message;

        }
    }
    
}