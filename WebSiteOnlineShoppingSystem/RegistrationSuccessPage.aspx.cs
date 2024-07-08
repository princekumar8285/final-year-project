using System;

public partial class RegistrationSuccessPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["EmailId"] == null && Session["Password"] == null)
            {
                lblUserid.Text = Session["EmailId"].ToString();
                lblPassword.Text = Session["Password"].ToString();
                lblName.Text = "Welcome " + Session["FirstName"] + Session["LastName"];
            }
            else
            {
                lblUserid.Text = Session["EmailId"].ToString();
                lblPassword.Text = Session["Password"].ToString();
                lblName.Text = "Welcome " + Session["FirstName"] + Session["LastName"];
            }
        }
    }
}