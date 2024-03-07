using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            String query = "select * from admin_login where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", UsernameText.Text);
            cmd.Parameters.AddWithValue("@password", PasswordText.Text);
            con.Open();
           SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows == true)
            {
                //Response.Write("<script>alert('Successfully Admin Login')</script>");
                Session["admin_username"] = UsernameText.Text;
                Response.Redirect("Admin_Index.aspx");
            }
            else
            {
                //Response.Write("<script>alert('User name and password Invalid')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Fail','User Name Or Password Is Incorrect','error')", true);

            }
            con.Close();
        }
    }
}