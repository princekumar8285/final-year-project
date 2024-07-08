using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_ManageComplexCategory : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtComplexDetails_TextChanged(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
       
        try
        {

            string query = "insert into tblComplexCategory(ComplexName,ComplexDetails)Values(@ComplexName,@ComplexDetails)";
            SqlParameter[] parmter =
            {
                new SqlParameter("@ComplexName", txtComplexName.Text),
                new SqlParameter("@ComplexDetails", txtComplexDetails.Text)
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
            lblMessage.Text = "<font color='red'>" + ex .Message+ "</font>";
        }



    }
}