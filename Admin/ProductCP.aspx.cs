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

public partial class Admin_ProductCP : System.Web.UI.Page
{
    Conclass gfccon = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnaddprod(object sender, EventArgs e)
    {
        try{
            if (ImgUpload1.HasFile)
            {
                string constr = gfccon.returncon();
                SqlConnection sqlcon = new SqlConnection(constr);

                HttpPostedFile postedfile = ImgUpload1.PostedFile;
                string filename = Path.GetFileName(postedfile.FileName);
                string fileExtension = Path.GetExtension(filename);
                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
                {

                    //resizeing image
                    System.Drawing.Image myimg = default(System.Drawing.Image);
                    myimg = System.Drawing.Image.FromStream(ImgUpload1.PostedFile.InputStream);
                    myimg = myimg.GetThumbnailImage(800, 450, null, IntPtr.Zero);
                    //MemoryStream str = new MemoryStream();
                    ////Stream str = postedfile.InputStream;;
                    ////Stream str = myimg.RawFormat;
                    //BinaryReader binread = new BinaryReader(str);
                    //byte[] bytes = binread.ReadBytes((int)str.Length);
                    string uniqueFID = DateTime.Now.ToString("ddMMyyyyhhmmssffff");
                    myimg.Save(Server.MapPath("~/img/Product/") + uniqueFID + fileExtension);
                    string link = "~/img/Product/" + uniqueFID + fileExtension;
                    ImgSD.ImageUrl = link;
                    String qry = "INSERT INTO tblProduct(Pro_Name,Pro_Desc,Pro_Category,Pro_Thumb,Pro_Rate,Pro_Status,Create_dt)Values(@Pro_Name,@Pro_Desc,@Pro_Category,@Pro_Thumb,@Pro_Rate,@Pro_Status,@Create_dt)";
                    SqlCommand cmd = new SqlCommand(qry, sqlcon);
                    cmd.Parameters.AddWithValue("@Pro_Name", Textproname.Text);
                    cmd.Parameters.AddWithValue("@Pro_Desc", Textdesc.Text);
                    cmd.Parameters.AddWithValue("@Pro_Category", Dropmenu.SelectedValue.ToString());
                    //cmd.Parameters.AddWithValue("@Pro_Image", bytes); Pro_Image,@Pro_Image
                    cmd.Parameters.AddWithValue("@Pro_Thumb", link.ToString());
                    cmd.Parameters.AddWithValue("@Pro_Rate", Textrate.Text);
                    cmd.Parameters.AddWithValue("@Pro_Status", "Active");
                    cmd.Parameters.AddWithValue("@Create_dt", System.DateTime.Now);

                    sqlcon.Open();
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                    
                    this.Textproname.Text = "";
                    this.Textdesc.Text = "";
                    this.Dropmenu.SelectedIndex = 0;
                    this.Textrate.Text = "";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Product Upload Successfull');</script>");

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Only Image files (.jpg .png .gif and .bmp') can be Uploaded;</script>");
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception("Error in Encoading" + ex.Message);
        }
    }
    protected void btnpreview(object sender, EventArgs e)
    {
        if (ImgUpload1.HasFile)
        {
            ////string imgdir = ImgUpload1.
            //string imgname = ImgUpload1.FileName;
            //ImgSD.ImageUrl = imgdir+"/"+imgname;
        }

    }
}