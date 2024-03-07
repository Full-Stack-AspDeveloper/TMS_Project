using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.Teacher
{
    public partial class View_Students : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("~/Teacher_Login.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeter();
            }
        }
        void BindRepeter()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from student_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from student_signup where ([name] like ('%" + SearchText.Text + "%') or [gender] like ('%" + SearchText.Text + "%') or [country] like ('%" + SearchText.Text + "%') or [city] like ('%" + SearchText.Text + "%') or [standard] like ('%" + SearchText.Text + "%') or [subject] like ('%" + SearchText.Text + "%') or [tuitiontype] like ('%" + SearchText.Text + "%'))";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Record Found')</script>");
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }
        }
    }
}