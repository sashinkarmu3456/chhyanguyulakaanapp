using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Modules
/// </summary>
public class Modules
{
    Conclass gfccon = new Conclass();
    public void adcontact(string uname, string ufullname, string umessage)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "Insert into tblcontact(ulogin,ufullname,umessage,msgdate,msgstat)Values(@usrid,@fullname,@message,@ucreated,@msgstat)";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usrid", uname);
        cmd.Parameters.AddWithValue("@fullname", ufullname);
        cmd.Parameters.AddWithValue("@message", umessage);
        cmd.Parameters.AddWithValue("@ucreated", System.DateTime.Now);
        cmd.Parameters.AddWithValue("@msgstat", "waiting");
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }
    public void adreserv(string ulogin, string ufullname, string umobile, string fordate, string restime, string restable)
    {
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "Insert into tblreservation(ulogin,ufullname,umobile,fordate,restime,restable,rescreated,resstatus)Values(@usrid,@fullname,@umobile,@fordate,@fortime,@restable,@rescreated,@resstatus)";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        cmd.Parameters.AddWithValue("@usrid", ulogin);
        cmd.Parameters.AddWithValue("@fullname", ufullname);
        cmd.Parameters.AddWithValue("@umobile", umobile);
        cmd.Parameters.AddWithValue("@fordate", fordate);
        cmd.Parameters.AddWithValue("@fortime", restime);
        cmd.Parameters.AddWithValue("@restable", restable);
        cmd.Parameters.AddWithValue("@rescreated", System.DateTime.Now);
        cmd.Parameters.AddWithValue("@resstatus", "waiting");
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }
}