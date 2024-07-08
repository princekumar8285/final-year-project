using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class Admin_ManageShopCategory : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    public string constr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        constr = ConfigurationManager.ConnectionStrings["MD"].ConnectionString;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string fpth = "~\\Uploaded_Image\\" + FileUpload1.FileName;
            if (FileUpload1.FileName.Length > 0)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(fpth));
            }

            string query = "insert into tblShopCategory(ComplexId,ShopName,ShowDetials,ImagePath) values(@ComplexId,@ShopCatgName,@ShowCatgDetails,@Imagepath)";
            SqlParameter[] parmter =
            {
                new SqlParameter("@ComplexId", DropDownList1.SelectedValue.ToString()),
                new SqlParameter("@ShopCatgName", txtShopName.Text),
                new SqlParameter("@ShowCatgDetails", txtShowDetails.Text),
                new SqlParameter("@Imagepath", fpth)
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
            lblMessage.Text = "<font color='red'>" + ex.Message + "</font>";
        }
        
    }
}
