using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class UserPanel_PaymentGateway : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (Request.QueryString["pid"] != null)
        {
            string query = "select * from tblShopProductDetials where Id='" + Request.QueryString["pid"].ToString() + "'";
            DataTable dt = new DataTable();
            dt=db.GetDataTableByQuery(query);
            if (dt.Rows.Count > 0)
            {
                TextBoxAmount.Text = dt.Rows[0]["OurPrice"].ToString();
                TextBoxProductId.Text = dt.Rows[0]["Id"].ToString();
                Session["ProName"] = dt.Rows[0]["Name"].ToString();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "insert into tblPaymentHistory values(" + TextBoxProductId.Text + "," + TextBoxAmount.Text + ",'" + TextBoxCardNo.Text + "','" + TextBoxCardHolderName.Text + "','" + Session["user"].ToString() + "','" + DateTime.Now.ToString() + "')";
        int i=db.ExecuteNonQueryByQuery(query);
        if (i > 0)
        {
            string query1 = "insert into OrderHistory values(" + TextBoxAmount.Text + ",'" + TextBoxCardNo.Text + "','" + TextBoxShipIngAddress.Text + "','" + Session["proname"].ToString() + "',1,'" + DateTime.Now.ToString() + "','"+Session["user"].ToString()+"')";
            int j = db.ExecuteNonQueryByQuery(query1);
            Response.Redirect("successpage.aspx?uid=" + Session["user"].ToString());

        }
 
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}