using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Menu_Addtocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("Sno");
            dt.Columns.Add("Pro_ID");
            dt.Columns.Add("Pro_Name");
            dt.Columns.Add("Pro_Rate");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("Pro_Thumb");
            if (Request.QueryString["id"] != null)
            {
                if (Session["Cartitems"] == null)
                {
                    dr = dt.NewRow();
                    Conclass gfccon = new Conclass();
                    string constr = gfccon.returncon();
                    SqlConnection sqlcon = new SqlConnection(constr);
                    String qry = "select * from tblProduct where Pro_ID=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand(qry,sqlcon);
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    dr["Sno"] = 1;
                    dr["Pro_ID"] = ds.Tables[0].Rows[0]["Pro_ID"].ToString();
                    dr["Pro_Name"] = ds.Tables[0].Rows[0]["Pro_Name"].ToString();
                    dr["Pro_Thumb"] = ds.Tables[0].Rows[0]["Pro_Thumb"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["Pro_Rate"] = ds.Tables[0].Rows[0]["Pro_Rate"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Pro_Rate"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["Cartitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Addtocart.aspx");
                }
                else
                {
                    dt = (DataTable)Session["Cartitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    Conclass gfccon = new Conclass();
                    string constr = gfccon.returncon();
                    SqlConnection sqlcon = new SqlConnection(constr);
                    String qry = "select * from tblProduct where Pro_ID=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand(qry, sqlcon);
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    dr["Sno"] = sr + 1;
                    dr["Pro_ID"] = ds.Tables[0].Rows[0]["Pro_ID"].ToString();
                    dr["Pro_Name"] = ds.Tables[0].Rows[0]["Pro_Name"].ToString();
                    dr["Pro_Thumb"] = ds.Tables[0].Rows[0]["Pro_Thumb"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["Pro_Rate"] = ds.Tables[0].Rows[0]["Pro_Rate"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["Pro_Rate"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                  
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["Cartitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Addtocart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["Cartitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }
           ((Label)Page.Master.FindControl("Labcartitems")).Text = GridView1.Rows.Count.ToString();

        }


    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["Cartitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["Cartitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["Sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text ;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["Sno"] = i;
            dt.AcceptChanges();
        }

        Session["Cartitems"] = dt;
        Response.Redirect("Addtocart.aspx");
    }
    }
