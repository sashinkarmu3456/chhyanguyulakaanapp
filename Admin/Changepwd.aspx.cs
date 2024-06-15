using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Changepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_changepwd(object sender, EventArgs e)
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
            DataTable dt = lr.chkuser(Textuser.Text);
            if (dt.Rows.Count != 0)
            {
                lr.cngpwd(uname, renpwd);
                this.Textuser.Text = "";
                this.Textpwd.Text = "";
                this.Textcpwd.Text = "";
                errorlbl.Text = Textuser.Text + "Password is successfully changed";
                Response.Redirect("Login.aspx");
            }
            else
            {
                errorlbl.Text = Textuser.Text + " - Is Not Registered";
                Response.Redirect("Default.aspx");
            }
        }
        catch (Exception ex)
        {
            errorlbl.Text = ex.Message;

        }
    }

}