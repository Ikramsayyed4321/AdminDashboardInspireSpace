using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AdminInspireSpace
{
    public partial class signi_in : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("compFromRegLoginDet", CON);

            cmd.CommandType = CommandType.StoredProcedure;

            //para

            cmd.Parameters.AddWithValue("Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("Password", txtPwd.Text);


            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0 ) 
            {
                lblError.Text = "Welcome to Admin Panel";
                lblError.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblError.Text = "Either username or password is incorrect";
                lblError.ForeColor = System.Drawing.Color.Red;
            }



            CON.Open();
            cmd.ExecuteNonQuery();
               
            CON.Close();
        }
    }
}