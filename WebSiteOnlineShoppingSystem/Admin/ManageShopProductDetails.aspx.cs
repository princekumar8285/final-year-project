using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_ShopProductDetails : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    public string constr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        string constr = ConfigurationManager.ConnectionStrings["MD"].ConnectionString;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string fpath = "~\\Uploaded_Image\\" + FileUpload1.FileName;
        if (FileUpload1.FileName.Length > 0)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(fpath));
        }

        try
        {

            string query = "insert into tblShopProductDetials(ShopProductId,Name,MarketPrice,DiscountPrice,OurPrice,Description,Image,Quantity)values(@ShopProductId,@Name,@MarketPrice,@DiscountPrice,@OurPrice,@Description,@Image,@Quantity)";
            SqlParameter[] parmter =
            {
                new SqlParameter("@ShopProductId",DropDownList1.SelectedValue.ToString()),
                new SqlParameter("@Name", txtName.Text),
                new SqlParameter("@MarketPrice", txtMarketPrice.Text),
                new SqlParameter("@DiscountPrice", txtDiscountPrice.Text),
                new SqlParameter("@Ourprice", txtOurPrice.Text),
                new SqlParameter("@Description", txtDescription.Text),
                new SqlParameter("@Image", fpath),
                new SqlParameter("@Quantity", txtQuantity.Text)
            };

            int i = db.ExecuteNonQueryByParameter(query, parmter);
            if (i > 0)
            {
                lblMessage.Text = "<font color='green'>Inserted record Successfully</font>";
                GridView1.DataBind();
            }
            else
            {
                lblMessage.Text = "<font color='red'>Invalid Inserted record</font>";
            }

        }
        catch (SqlException ex)
        {
            lblMessage.Text = "<font color='red'" + ex.Message + "</font>";

        }
    }
}