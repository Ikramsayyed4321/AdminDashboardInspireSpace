using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace AdminInspireSpace
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insertIntoTBLRegistration", CON);

            cmd.CommandType = CommandType.StoredProcedure;

            //RadioBtn
            string gender = string.Empty;
            if (rdFemale.Selected)
            {
                gender = "Female";
            }
            else if (rdMale.Selected)
            {
                gender = "Male";
            }

            //checkbox
            string newuser = txtNewUser.Checked ? "Yes" : "No";

            //DocUpload
            if (docUpload.HasFile)
            {
                string filename = docUpload.FileName;
                docUpload.PostedFile.SaveAs(Server.MapPath("~/Doc/" + filename));
                string file = ("~/Doc/" + filename).ToString();
                Session["uploaded_file"] = file;
            }


            //para

            cmd.Parameters.AddWithValue("Name", txtName.Text);
            cmd.Parameters.AddWithValue("EmailId", txtEmailId.Text);
            cmd.Parameters.AddWithValue("PhoneNo", txtphoneNo.Text);
            cmd.Parameters.AddWithValue("City", txtCity.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Gender", txtGender.Text );
            cmd.Parameters.AddWithValue("Dob", txtDob.Text);
            cmd.Parameters.AddWithValue("Age", txtAge.Text);
            cmd.Parameters.AddWithValue("username",txtUsername.Text );
            cmd.Parameters.AddWithValue("Password",txtPassword.Text );
            cmd.Parameters.AddWithValue("Document", Session["uploaded_file"].ToString() );
            cmd.Parameters.AddWithValue("NewUser", newuser );
          


            CON.Open();
            cmd.ExecuteNonQuery();
           lblReg.Text = "Registration Completed.";
            CON.Close();

        }

    }
}