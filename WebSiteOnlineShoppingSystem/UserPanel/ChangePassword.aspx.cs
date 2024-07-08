using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class UserPanel_ChangePassword : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        string query = "select * from login where UserName='" + Session["user"].ToString() + "' and Password='" + txtpassold.Text + "'";
        DataTable dt = new DataTable();
        dt = db.GetDataTableByQuery(query);
        if (dt.Rows.Count > 0)
        {
            string query1 = "update login set Password='" + txtpass.Text + "' where UserName='" + Session["user"].ToString() + "'";
            int i = db.ExecuteNonQueryByQuery(query1);
            if (i > 0)
            {
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "Password change successfull";

            }
            else
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Invalid old password";
            }
        }
    }
}
