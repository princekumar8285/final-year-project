using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    //public SqlConnection con;
    public string constr;
    protected void Page_Load(object sender, EventArgs e)
    {
        constr = ConfigurationManager.ConnectionStrings["MD"].ConnectionString;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr;

        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "select * from Login where UserName=@Emailid and Password=@Password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Emailid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                string query1 = "Update  Login set LoginDate='" + DateTime.Now.ToShortDateString() + "',LoginTime='" + DateTime.Now.ToShortTimeString() + "' Where UserName='" + TextBox1.Text + "'";
                int j = db.ExecuteNonQueryByQuery(query1);
                if (dr["role"].ToString().Equals("2"))
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("~/UserPanel/UserHome.aspx");
                }
                if (dr["role"].ToString().Equals("0"))
                {
                    Session["admin"] = TextBox1.Text;
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }

            }
            else
            {
                lbl1.ForeColor = System.Drawing.Color.Red;
                lbl1.Text = "Invalid email id and password";

            }
        }
        catch
        {
            lbl1.ForeColor = System.Drawing.Color.Red;
            lbl1.Text = "Login failed";
        }
        finally
        {
            //con.Close();
        }

    }
}

