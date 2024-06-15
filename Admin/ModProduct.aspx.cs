using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Admin_ModProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;

        Response.Redirect("Mproduct.aspx?Pro_ID=" + gr.Cells[0].Text + "&Pro_Name=" + gr.Cells[1].Text + "&Pro_Desc=" + gr.Cells[2].Text + "&Pro_Rate=" + gr.Cells[3].Text);

    }
}

