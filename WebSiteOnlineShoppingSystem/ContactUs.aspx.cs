using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Data.SqlClient;
public partial class ContactUs : System.Web.UI.Page
{
    DataClassesDataContex db = new DataClassesDataContex();
    public string constr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //constr = ConfigurationManager.ConnectionStrings["MD"].ConnectionString;
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        //SqlDataReader dr;
        MailMessage mm = new MailMessage("mauryasajanji@gmail.com", txtEmail.Text);
       // SqlConnection con = new SqlConnection(constr);
        mm.Subject = txtSubject.Text;

        mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtBody.Text;

        if (FileUpload1.HasFile)
        {

            string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);

            mm.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));

        }

        mm.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();

        smtp.Host = "smtp.gmail.com";

        smtp.EnableSsl = true;

        System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();

        NetworkCred.UserName = "mauryasajanji@gmail.com";

        NetworkCred.Password = "!123456789";

        smtp.UseDefaultCredentials = true;

        smtp.Credentials = NetworkCred;

        smtp.Port = 587;

        smtp.Send(mm);
        //dr.Read();
        lblMessage.ForeColor = System.Drawing.Color.Green;
        lblMessage.Text = "Email Sent SucessFully.";
    }
}