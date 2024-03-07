﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.student
{
    public partial class View_Teachers : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student_username"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeter();
            }
        }
        void BindRepeter()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from tutor_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from tutor_signup where ([name] like ('%"+SearchText.Text+ "%') or [gendar] like ('%" + SearchText.Text + "%') or [country] like ('%" + SearchText.Text + "%') or [city] like ('%" + SearchText.Text + "%') or [qualification] like ('%" + SearchText.Text + "%') or [experience] like ('%" + SearchText.Text + "%'))";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if(data.Rows.Count > 0)
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