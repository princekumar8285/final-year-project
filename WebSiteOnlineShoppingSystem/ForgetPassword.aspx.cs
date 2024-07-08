using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ForgetPassword : System.Web.UI.Page
{

    DataClassesDataContex db = new DataClassesDataContex();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnForget_Click(object sender, EventArgs e)
    {
       
        string query ="select * from Login where User_Name ='" + txtUsername.Text+"'";
        SqlDataReader dr = db.GetDataReaderByQuery(query);
        dr.Read();
        if (dr.HasRows)
        {
            Label1.Text = dr["password"].ToString();
           
        }


    }
}