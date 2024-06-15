using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Menu_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["activeuser"] == null || Session["activeuser"] == "")
        {
            Response.Redirect("../Client/Login.aspx");
        }
        else //else (Session["activeuser"] != null)
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
        }

        //if (Session["activeuser"] == null)
        //{
        //    Response.Redirect("Client/Login.aspx");
        //}
        }
        
        this.Labdate.Text = DateTime.Now.ToShortDateString();
        findorderid();

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
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = "OI" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        this.Laboid.Text = orderid;
    }
    public void saveaddress()
    {
        Conclass gfccon = new Conclass();
        string constr = gfccon.returncon();
        SqlConnection sqlcon = new SqlConnection(constr);
        //PublicFields.username = "test";
        PublicFields.username = Session["activeuser"].ToString();
        String qry = "insert into tblorder(Order_No,address,mobile,userid) values('" + Laboid.Text + "','" + Textaddress.Text + "','" + Textmobile.Text + "','" + PublicFields.username + "')";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        SqlDataAdapter sda = new SqlDataAdapter();
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["Cartitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            Conclass gfccon = new Conclass();
            string constr = gfccon.returncon();
            SqlConnection sqlcon = new SqlConnection(constr);
            String qry = "insert into tblorderdetail(orderid,sno,proid,proname,price,quantity,orderdate,orderstatus) values('" + Laboid.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["Pro_ID"] + ",'" + dt.Rows[i]["Pro_Name"] + "'," + dt.Rows[i]["Pro_Rate"] + "," + dt.Rows[i]["quantity"] + ",'" + Labdate.Text + "','Pending')"; 
            SqlCommand cmd = new SqlCommand(qry, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter();
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            sqlcon.Close();

        }
        saveaddress();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Order is successfully placed');</script>");
        Response.Redirect("../Default.aspx");
        
            
    }
}
    