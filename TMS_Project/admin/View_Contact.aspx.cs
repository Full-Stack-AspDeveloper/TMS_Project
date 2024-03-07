﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.admin
{
    public partial class View_Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"] == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }
            if (!IsPostBack)
            {
                BindGridview();
            }
        }

        void BindGridview()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from contact_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query,con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label ItemId = (Label)row.FindControl("LabelId");
            string Id = ItemId.Text;
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from contact_tbl where id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Id);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if(a>0)
            {
                Response.Write("<script>alert('Data Has Been Deleted Successfull')</script>");
                BindGridview();
            }
            else
            {
                Response.Write("<script>alert('Data Has Been  Not Deleted')</script>");

            }
            con.Close();
        }
    }
}