using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

/// <summary>
/// Summary description for login
/// </summary>
public class loginrole
{
    Conclass gfccon = new Conclass();
    public DataTable userrole(string uname,string upwd)
	{
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "select ulogin,upwd,uadmin from tbluser where ulogin = @usid and upwd= @uspwd";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usid", uname);
        cmd.Parameters.AddWithValue("@uspwd", upwd);
        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(ds, "login");
        PublicFields.userrole = ds.Tables[0].Rows[0][2].ToString();
        //PublicFields.chkpwd = ds.Tables[0].Rows[0][1].ToString();
        return ds.Tables[0];
	}
    
    public DataTable chkuser(string uname)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "select *  from tbluser where ulogin = @usid";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usid", uname);
        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(ds, "chkuser");
        return ds.Tables[0];
    }
    public void chkpwd(string uname, string upwd)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "select upwd  from tbluser where ulogin = @usid";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usid", uname);
        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        PublicFields.chkpwd = ds.Tables[0].Rows[0][0].ToString();
        //return ds.Tables[0];
    }
   
    public void userreg(string uname, string upwd, string ufullname, string uaddress, string umobile)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "Insert into tbluser(ulogin,upwd,ufullname,uaddress,umobile,uadmin,ucreated,uemail)Values(@usrid,@usrpwd,@fullname,@address,@mobile,@uadmin,@ucreated,@uemail)";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usrid", uname);
        cmd.Parameters.AddWithValue("@usrpwd", upwd);
        cmd.Parameters.AddWithValue("@fullname", ufullname);
        cmd.Parameters.AddWithValue("@address", uaddress);
        cmd.Parameters.AddWithValue("@mobile", umobile);
        cmd.Parameters.AddWithValue("@uadmin", "Member");
        cmd.Parameters.AddWithValue("@ucreated", System.DateTime.Now);
        cmd.Parameters.AddWithValue("@uemail", uname);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }
    
    public void adminreg(string uname, string upwd,string urole, string ufullname, string uaddress, string umobile)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "Insert into tbluser(ulogin,upwd,ufullname,uaddress,umobile,uadmin,ucreated,uemail)Values(@usrid,@usrpwd,@fullname,@address,@mobile,@uadmin,@ucreated,@uemail)";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usrid", uname);
        cmd.Parameters.AddWithValue("@usrpwd", upwd);
        cmd.Parameters.AddWithValue("@fullname", ufullname);
        cmd.Parameters.AddWithValue("@address", uaddress);
        cmd.Parameters.AddWithValue("@mobile", umobile);
        cmd.Parameters.AddWithValue("@uadmin", urole);
        cmd.Parameters.AddWithValue("@ucreated", System.DateTime.Now);
        cmd.Parameters.AddWithValue("@uemail", uname);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }

    public void updateuser(string uname, string ufullname, string uaddress, string umobile)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "Update tbluser set ufullname = @fullname , uaddress = @address , umobile = @mobile where ulogin = @ulogin";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        //cmd.Parameters.AddWithValue("@usrid", uid);
        cmd.Parameters.AddWithValue("@ulogin", uname);
        cmd.Parameters.AddWithValue("@fullname", ufullname);
        cmd.Parameters.AddWithValue("@address", uaddress);
        cmd.Parameters.AddWithValue("@mobile", umobile);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }

    public void cngpwd(string uname, string renpwd)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "Update tbluser set upwd = @usrpwd where ulogin = @usrid";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usrid", uname);
        cmd.Parameters.AddWithValue("@usrpwd", renpwd);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }


    public void Resetpwd(string uname)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "select ulogin,upwd,uemail  from tbluser where ulogin = @usid";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usid", uname);
        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(ds, "respwd");

        string respwd = ds.Tables[0].Rows[0][1].ToString();
        string resuid =  ds.Tables[0].Rows[0][0].ToString();
            //ENCODING FOR PWD
            string upwd = respwd;
            ModEnDe ende = new ModEnDe();
            string renpwd = ende.Encryp(upwd);
            //ENCOADING ENDED
            PublicFields.resuid = resuid;
            PublicFields.respwd = respwd;

           
      


    }
}