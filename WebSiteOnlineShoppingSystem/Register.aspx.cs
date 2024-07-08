using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.SqlClient;

using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    public SqlConnection con;
    public string qstr, constr;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        constr = ConfigurationManager.ConnectionStrings["MD"].ConnectionString;
    }
    protected void btnRegistration_Click(object sender, EventArgs e)
    {
        string gen="";
        if(RadioButton1.Checked)
        {
            gen="Male";
        }
        else{
            gen="Female";

        }

        SqlConnection con = new SqlConnection(constr);
        try
        {

            con.Open();
            string query = "Insert into Register(FirstName,LastName,EmailId,Password,ConfirmPassword,Address,PhoneNumber,Gender) values(@FirstName,@LastName,@EmailId,@Password,@Confirmpassword,@Address,@PhoneNumber,@Gender)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("@EmailId", txtEmailId.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", txtConfirmPassword.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text);
           cmd.Parameters.AddWithValue("@Gender", RadioButton1.Text);
            int i = cmd.ExecuteNonQuery();
            //cmd.Parameters.AddWithValue("@Gender", gen);
            string query1 = "insert into Login(UserName,Password,Role) values('" + txtEmailId.Text + "','" + txtPassword.Text + "',2)";
            cmd.CommandText = query1;
            int j = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Session["EmailId"] = txtEmailId.Text;
                Session["Password"] = txtPassword.Text;
                Session["FirstName"] = txtFirstName.Text;
                Session["LastName"] = txtLastName.Text;
                Response.Redirect("RegistrationSuccessPage.aspx");
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Registration failed";
            }
        }
        catch (SqlException)
        {
            lblMessage.Text = "";
        }
        catch(Exception)
        {
            Response.End();
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = string.Empty;
        txtLastName.Text = string.Empty;
        txtEmailId.Text = string.Empty;
        txtPassword.Text = string.Empty;
        txtConfirmPassword.Text = string.Empty;
        txtAddress.Text = string.Empty;
        txtPhoneNumber.Text = string.Empty;
    }
}