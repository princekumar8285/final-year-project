using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class UserPanel_MyAccount : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    public string constr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        //constr = ConfigurationManager.ConnectionStrings["MD"].ConnectionString;
        //if(Page.IsPostBack==false)
        //{
        //    Session["uname"].ToString();
        //    ViewState["uid"] = db.Rows[0]["uid"].ToString();
        //    txtName.Text=db.Rows[0]["Name"].ToString();
        //    txtSurName.Text=db.Rows[0]["SurName"].ToString();
        //    txtAddress.Text=db.Rows[0]["Address"].ToString();
        //    txtCity.Text=db.Rows[0]["City"].ToString();
        //    txtPinCode.Text=db.Rows[0]["PinCode"].ToString();
        //    txtMobile.Text=db.Rows[0]["Mobile"].ToStrin();


        //}


    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //.Update(Convert.ToInt32(ViewState["uid"].ToString()), txtName.Text, txtSurName.Text, txtAddress.Text,txtCity.Text,txtPinCode.Text,txtMobile.Text);
        //db=.Select_BY_Email(Session["uname"].ToString());

    }
}