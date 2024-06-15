using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Butreserve_Click(object sender, EventArgs e)
    {
        try
        {
            Modules mo = new Modules();
            string ulogin = this.Textemail.Text;
            string ufullname = this.Textfname.Text;
            string umobile = this.Textmobile.Text;
            string fordate = this.Textdate.Text;
            string restime = this.Droptime.SelectedValue.ToString();
            string restable = this.Droptable.SelectedValue.ToString();

            mo.adreserv(ulogin, ufullname, umobile, fordate, restime, restable);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Reservation has been done');</script>");
            Response.Redirect("../default.aspx");

        }
        catch (Exception ex)
        {
            errorlbl.Text = ex.Message;

        }
    }
}