using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project
{
    public partial class Tutor_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountryDDL();
            }
        }

        void ResetControls()
        {
            NameTextBox.Text = "";         
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            EmailTextBox.Text = "";
            MaritalStatusDropDownList.ClearSelection();
            countryDropDownList.ClearSelection();
            cityDropDownList.ClearSelection();
            AddressTextBox.Text = "";
            QualificationDropDownList.ClearSelection();
            DegreeTextBox.Text = "";
            ExperienceDropDownList.ClearSelection();
            ContactTextBox.Text = "";
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
        }
        void BindCountryDDL()
        {
            SqlConnection con = new SqlConnection(cs);
            string q = "select * from country";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            countryDropDownList.DataSource = data;
            countryDropDownList.DataTextField = "country_name";
            countryDropDownList.DataValueField = "country_id";
            countryDropDownList.DataBind();
            ListItem selectItem = new ListItem("Select Country", "Select Country");
            selectItem.Selected = true;
            countryDropDownList.Items.Insert(0, selectItem);
        }

        void BindCityDDL(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string q = "select * from city where c_id = @country_id";
            SqlDataAdapter sda = new SqlDataAdapter(q, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id", country_id);
            DataTable data = new DataTable();
            sda.Fill(data);
            cityDropDownList.DataSource = data;
            cityDropDownList.DataTextField = "city_name";
            cityDropDownList.DataValueField = "city_id";
            cityDropDownList.DataBind();
            ListItem selectItem = new ListItem("Select City", "Select City");
            selectItem.Selected = true;
            cityDropDownList.Items.Insert(0, selectItem);
        }
        protected void countryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int country_id = Convert.ToInt32(countryDropDownList.SelectedValue);
                BindCityDDL(country_id);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Country Is Required')</script>");
            }
        }

        protected void Tutor_SignupButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {


                string query = "insert into tutor_signup values(@name, @surname, @gender, @age, @email, @marital_status, @country, @city, @address, @qualification, @degree, @experience, @contactno, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);       
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@marital_status", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", countryDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", cityDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    //Response.Write("<script>alert('You Have Registered Successfully')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Success','You Have Registered Successfully','success')", true);

                    ResetControls();
                }
                else
                {
                    //Response.Write("<script>alert(' Registration Failed !! Try To Another User Name')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failed','Registration Failed !! Try To Another User Name','error')", true);

                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failed','Registration Failed ..! " + UsernameTextBox.Text + "Already Exist','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failed','Registration Failed ..!','error')", true);

                }
            }
            finally
            {
                con.Close();
            }
        }
    }
}