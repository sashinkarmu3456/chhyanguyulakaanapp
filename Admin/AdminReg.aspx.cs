using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fillpwd(object sender, EventArgs e)
    {
        Textpwd.Text = Textuser.Text;
    }
    protected void admin_join(object sender, EventArgs e)
    {
        try
        {
            loginrole lr = new loginrole();
            string uname = this.Textuser.Text;
            //ENCODING FOR PWD
            string opwd = this.Textuser.Text;
            ModEnDe ende = new ModEnDe();
            string upwd = ende.Encryp(opwd);
            //ENCOADING ENDED
            string urole = this.Dropuser.SelectedValue;
            string ufullname = this.Textfullname.Text;
            string uaddress = this.Textaddress.Text;
            string umobile = this.Textmobile.Text;
            //CHECKING FOR EXISTING USER//
            //loginrole lc = new loginrole();
            DataTable dt = lr.chkuser(Textuser.Text);
            if (dt.Rows.Count == 0)
            {
                lr.adminreg(uname,upwd, urole, ufullname, uaddress, umobile);
                //Clear Form
                this.Textuser.Text = "";
                this.Dropuser.SelectedIndex = 0;
                this.Textfullname.Text = "";
                this.Textaddress.Text = "";
                this.Textmobile.Text = "";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('User is Registered, Please Login');</script>");
                //errorlbl.Text = Textuser.Text + " - Is Now Registered";
                Response.Redirect("../Client/Login.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Duplicate User, User is already Registered');</script>");
                Response.Redirect("Admin/Admindefault.aspx");
            }
        }
        catch (Exception ex)
        {
            errorlbl.Text = ex.Message;

        }
    }
}