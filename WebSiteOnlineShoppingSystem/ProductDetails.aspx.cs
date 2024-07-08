using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserPanel_ProductDetails : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    public string constr;
    protected void Page_Load(object sender, EventArgs e)
    {
         constr=ConfigurationManager.ConnectionStrings["MD"].ConnectionString; 
        int a =Convert.ToInt16(Request.QueryString["sid"]);
    }
    
 
     
    
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataReader dr;

        try
        {
            SqlConnection con=new SqlConnection(constr);
            con.Open();
            string query=" select * from ShopProductDetails where sid=a";
                //SqlCommand cmd=new SqlCommand(query,con);
        
          }
           catch(SqlException)
         {

        }


}
}

