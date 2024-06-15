using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class Client_ResetPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
     protected void btnresetpwd(object sender, EventArgs e)
    {
         try{

             String password;
             Conclass gfccon = new Conclass();
             string constr = gfccon.returncon();
             SqlConnection sqlcon = new SqlConnection(constr);
             String qry = "select ulogin,upwd,uemail  from tbluser where ulogin = @usid";
             SqlCommand cmd = new SqlCommand(qry, sqlcon);
             cmd.Parameters.AddWithValue("@usid", Textemail.Text);
             DataSet ds = new DataSet();
             SqlDataAdapter sda = new SqlDataAdapter(cmd);
             sda.Fill(ds);
             if (ds.Tables[0].Rows.Count > 0)
             {
                 //Label3.Text = "Data Found";
                 string respwd = ds.Tables[0].Rows[0][1].ToString();
                 string resuid = ds.Tables[0].Rows[0][0].ToString();
                 //Decrypt
                 string cha = respwd;
                 ModEnDe dcode = new ModEnDe();
                 string enpch = dcode.Decryp(cha);
                 password = enpch;
                 //password = ds.Tables[0].Rows[0]["password"].ToString();
                 sendpassword(enpch, Textemail.Text);
                 Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Password is sent to your email, Check Your Mail Inbox');</script>");
                 Response.Redirect("Login.aspx");
             }
             else
             {
                 Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('This user is not valid member, Please Register');</script>");
                 Response.Redirect("UserRegister.aspx");

             }
             sqlcon.Close();
        }
        catch (Exception ex)
        {
            errorlbl.Text = ex.Message;

        }
    }
     private void sendpassword(String password, String email)
     {
         SmtpClient smtp = new SmtpClient();
         smtp.Host = "smtp.gmail.com";
         smtp.Port = 587;
         smtp.Credentials = new System.Net.NetworkCredential("chhyanguyulakaan@gmail.com", "Lbef@123");
         smtp.EnableSsl = true;
         MailMessage msg = new MailMessage();
         msg.Subject = "Forgot Password - CHYANGU:YU LAKAAN";
         msg.Body = "Dear " + Textemail.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\nChhyangu:yu Lakaan\n\n Manager";
         string toaddress = Textemail.Text;
         msg.To.Add(toaddress);
         string fromaddress = "CHYANGU:YU LAKAAN <chhyanguyulakaan@gmail.com>";
         msg.From = new MailAddress(fromaddress);
         try
         {
             smtp.Send(msg);
         }
         catch
         {
             throw;
         }
     }

}