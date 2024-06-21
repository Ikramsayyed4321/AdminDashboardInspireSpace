using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace AdminInspireSpace
{
   
    public partial class Update_Contact : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("fetchContactRecords", CON);

                cmd.CommandType = CommandType.StoredProcedure;

                string id = Request.QueryString["ID"];
                Session["id_tbu"] = id;
                cmd.Parameters.AddWithValue("id", id);

                CON.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string name = ds.Tables[0].Rows[0]["Name"].ToString();
                    string phone = ds.Tables[0].Rows[0]["PhoneNo"].ToString();
                    string email = ds.Tables[0].Rows[0]["EmailId"].ToString();
                    string msg = ds.Tables[0].Rows[0]["Message"].ToString();

                    txtName.Text = name;
                    txtPhoneNo.Text = phone;
                    txtEmail.Text = email;
                    txtMessage.Text = msg;
                }

                CON.Close();
            }
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("UpdateContactRecords", CON);

            cmd.CommandType = CommandType.StoredProcedure;

            //para
            cmd.Parameters.AddWithValue("Id", Session["id_tbu"].ToString());
            cmd.Parameters.AddWithValue("Name", txtName.Text);
            cmd.Parameters.AddWithValue("EmailId", txtEmail.Text);
            cmd.Parameters.AddWithValue("PhoneNo", txtPhoneNo.Text);
            cmd.Parameters.AddWithValue("Message", txtMessage.Text);







            CON.Open();
            cmd.ExecuteNonQuery();
            lblUpdate.Text = "Record Updated";
            lblUpdate.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("ContactEnquiries.aspx");
            CON.Close();
        }
    }
}