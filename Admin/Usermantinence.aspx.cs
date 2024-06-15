using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

public partial class Usermantinence : System.Web.UI.Page
{
    Conclass gfccon = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //TextID.Text = PublicFields.uid;
        //Textuser.Text = PublicFields.ulogin;
        //Textfullname.Text = PublicFields.ufullname;
        //Textaddress.Text = PublicFields.uaddress;
        //Textmobile.Text = PublicFields.umobile;
        TextID.Text = Request.QueryString["uid"].ToString();
        Textuser.Text = Request.QueryString["ulogin"].ToString();
        Textfullname.Text = Request.QueryString["ufullname"].ToString();
        Textaddress.Text = Request.QueryString["uaddress"].ToString();
        Textmobile.Text = Request.QueryString["umobile"].ToString();
        
    }
    protected void but_userupdate(object sender, EventArgs e)
    {
        
        //loginrole lr = new loginrole();
        string uname = this.Textuser.Text;
        string ufullname = Textfullname.Text;
        //string uaddress = this.Textaddress.Text;
        //string umobile = this.Textmobile.Text;
        //int uid = this.TextID.Text;
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        //////sqlcon.Open();
        String qry = "Update tbluser set ufullname=@fullname, uaddress=@address, umobile=@mobile, ulogin=@ulogin where uid=@uid";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        //cmd.Parameters.AddWithValue("@usrid", uid);
        
        cmd.Parameters.AddWithValue("@ulogin", this.Textuser.Text.ToString());
        cmd.Parameters.AddWithValue("@fullname", Textfullname.Text);
        cmd.Parameters.AddWithValue("@address", this.Textaddress.Text.ToString());
        cmd.Parameters.AddWithValue("@mobile", this.Textmobile.Text.ToString());
        cmd.Parameters.AddWithValue("@uid", this.TextID.Text.ToString());
        sqlcon.Open();
        //cmd.ExecuteNonQuery();
        sqlcon.Close();
        //lr.updateuser(uname, ufullname, uaddress, umobile);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('User detail update successful');</script>");
        Response.Redirect("ListUser.aspx");

    }
    


}