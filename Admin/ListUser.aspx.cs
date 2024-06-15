using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        PublicFields.uid = gr.Cells[0].Text;
        PublicFields.ulogin = gr.Cells[1].Text;
        PublicFields.ufullname = gr.Cells[2].Text;
        PublicFields.uaddress = gr.Cells[3].Text;
        PublicFields.umobile = gr.Cells[4].Text;


        Response.Redirect("Usermantinence.aspx?uid=" + gr.Cells[0].Text + "&ulogin=" + gr.Cells[1].Text + "&ufullname=" + gr.Cells[2].Text + "&uaddress=" + gr.Cells[3].Text + "&umobile=" + gr.Cells[4].Text);
    }
}