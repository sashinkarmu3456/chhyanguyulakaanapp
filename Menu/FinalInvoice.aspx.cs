using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class Menu_FinalInvoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Labid.Text = Request.QueryString["Orderid"];
        //Panel1.Visible = true;
        findorderdate(Labdt.Text);
        findaddress(Labbuyer.Text);
        //showgrid(Labid.Text);

    }
    protected void Butgenerate_Click(object sender, EventArgs e)
    {
        exportpdf();
    }
    private void exportpdf()
    {
        try
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error Downloading PDF');</script>");
        }
    }
    private void findorderdate(String Orderid)
    {
        Conclass gfccon = new Conclass();
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "select * from tblorderdetail where orderid='" + Orderid +"'" ;
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Labdt.Text = ds.Tables[0].Rows[0]["orderdate"].ToString();
        }
        sqlcon.Close();
    }
    private void findaddress(String Orderid)
    {
        Conclass gfccon = new Conclass();
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        String qry = "Select * from tblorder where Order_No='" + Orderid + "'";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Labbuyer.Text = ds.Tables[0].Rows[0]["address"].ToString();

        }

        sqlcon.Close();
    }
    //private void showgrid(String orderid)
    //{
    //    DataTable dt = new DataTable();
    //    DataRow dr;
    //    dt.Columns.Add("Sno");
    //    dt.Columns.Add("Pro_ID");
    //    dt.Columns.Add("Pro_Name");
    //    dt.Columns.Add("Pro_Rate");
    //    dt.Columns.Add("quantity");
    //    dt.Columns.Add("price");
    //    dt.Columns.Add("totalprice");
    //    dt.Columns.Add("Pro_Thumb");
    //    if (Request.QueryString["id"] != null)
    //    {
    //        if (Session["Cartitems"] == null)
    //        {
    //            dr = dt.NewRow();
    //            Conclass gfccon = new Conclass();
    //            string constr = gfccon.returncon();
    //            SqlConnection sqlcon = new SqlConnection(constr);
    //            String qry = "select * from tblorderdetail where orderid=" + Request.QueryString["id"];
    //            SqlCommand cmd = new SqlCommand(qry, sqlcon);
    //            SqlDataAdapter sda = new SqlDataAdapter();
    //            sda.SelectCommand = cmd;
    //            DataSet ds = new DataSet();
    //            sda.Fill(ds);
    //            dr["Sno"] = 1;
    //            dr["Pro_ID"] = ds.Tables[0].Rows[0]["Pro_ID"].ToString();
    //            dr["Pro_Name"] = ds.Tables[0].Rows[0]["Pro_Name"].ToString();
    //            dr["Pro_Thumb"] = ds.Tables[0].Rows[0]["Pro_Thumb"].ToString();
    //            dr["quantity"] = Request.QueryString["quantity"];
    //            dr["Pro_Rate"] = ds.Tables[0].Rows[0]["Pro_Rate"].ToString();
    //            int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Pro_Rate"].ToString());
    //            int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
    //            int totalprice = price * quantity;
    //            dr["totalprice"] = totalprice;

    //            dt.Rows.Add(dr);
    //            GridView1.DataSource = dt;
    //            GridView1.DataBind();

    //            Session["Cartitems"] = dt;
    //            GridView1.FooterRow.Cells[5].Text = "Total Amount";
    //            GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

               
    //            String myquery = "select * from orderdetails where orderid='" + orderid + "'";
    //            SqlCommand cmd = new SqlCommand();
    //            cmd.CommandText = myquery;
    //            cmd.Connection = scon;
    //            SqlDataAdapter da = new SqlDataAdapter();
    //            da.SelectCommand = cmd;
    //            DataSet ds = new DataSet();
    //            da.Fill(ds);
    //            int totalrows = ds.Tables[0].Rows.Count;
    //            int i = 0;
    //            int grandtotal = 0;
    //            while (i < totalrows)
    //            {
    //                dr = dt.NewRow();
    //                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
    //                dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
    //                dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
    //                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
    //                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
    //                int price = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
    //                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
    //                int totalprice = price * quantity;
    //                dr["totalprice"] = totalprice;
    //                grandtotal = grandtotal + totalprice;
    //                dt.Rows.Add(dr);
    //                i = i + 1;
    //            }
    //            GridView1.DataSource = dt;
    //            GridView1.DataBind();

    //            Labtotal.Text = grandtotal.ToString();
    //        }



    protected void Butlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Admin/Logout.aspx");
    }
}
    //}
//}