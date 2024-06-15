using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButLogin_Click(object sender, EventArgs e)
    {
        try
        {
            
            loginrole lr = new loginrole();
            //Decrypt
            string cha = Textpwd.Text;
            ModEnDe dcode = new ModEnDe();
            string enpch = dcode.Encryp(cha);
            DataTable dt = lr.userrole(Textuser.Text, enpch);
            string role = dt.Rows[0][2].ToString();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('" + role + "');</script>");
            if (dt.Rows[0][0].ToString() == null)
            {
                Response.Redirect("UserRegister.aspx");
            }
            else
            {
                if (dt.Rows.Count != 0)
                {
                    if (dt.Rows[0][2].ToString() == "Admin" || dt.Rows[0][2].ToString() == "Manager")
                    {
                        Session["activeuser"] = Textuser.Text;
                        Session["Role"] = role ;
                        PublicFields.username = Textuser.Text;
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('"+role+"');</script>");

                        Response.Redirect("~/Admin/Admindefault.aspx");
                    }
                    else if (dt.Rows[0][1].ToString() == null && dt.Rows[0][2].ToString() == "Admin" || dt.Rows[0][2].ToString() == "Manager")
                    {
                        Response.Redirect("~/Admin/Changepwd.aspx");
                    }
                    else
                    {
                        Session["activeuser"] = Textuser.Text;
                        Session["Role"] = role ;
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('"+role+"');</script>");
                        Response.Redirect("../Default.aspx");
                    }
               
                }
            }
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( User & Password Mismatch );</script>");
            Textpwd.Text = "";
            Textpwd.Focus();
        }
    }
    protected void Butjoin_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserRegister.aspx");
    }
    protected void Butreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("ResetPwd.aspx");
    }
}