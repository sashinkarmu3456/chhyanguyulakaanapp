using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Menu_AllProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["Cartitems"];
        if (dt != null)
        {
            ((Label)Page.Master.FindControl("Labcartitems")).Text = dt.Rows.Count.ToString();
        }
        else
        {
            ((Label)Page.Master.FindControl("Labcartitems")).Text = "0";
        }
        //Labcartitems.Text = Labcartitems.Text;
    }
    protected void DataFeature_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ViewDetail")
        {
            Response.Redirect("DetailView.aspx?id=" + e.CommandArgument.ToString());
        }
        else if (e.CommandName == "Addtocart")
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }

    }
}