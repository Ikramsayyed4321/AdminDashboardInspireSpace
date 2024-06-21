using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Drawing;


namespace AdminInspireSpace
{
    public partial class Dashboard : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Registration();

            }
        }


        private void Registration()
        {
            SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            {
                CON.Open();

                // Total registrations
                SqlCommand totalCmd = new SqlCommand("GetTotalRegistrationsCounts", CON);
                totalCmd.CommandType = System.Data.CommandType.StoredProcedure;
                int totalRegistrations = (int)totalCmd.ExecuteScalar();
                lblTotal.Text = totalRegistrations.ToString();
                lblTotal.Font.Bold = true;
                lblTotal.Font.Size = FontUnit.Point(27);
                // Girls registrations
                SqlCommand girlsCmd = new SqlCommand("GetGirlsRegistrations", CON);
                girlsCmd.CommandType = System.Data.CommandType.StoredProcedure;
                int girlsRegistrations = (int)girlsCmd.ExecuteScalar();
                lblGirls.Text = girlsRegistrations.ToString();
                lblGirls.Font.Bold = true;
                lblGirls.Font.Size = FontUnit.Point(27);
                // Boys registrations
                SqlCommand boysCmd = new SqlCommand("GetBoysRegistrations", CON);
                boysCmd.CommandType = System.Data.CommandType.StoredProcedure;
                int boysRegistrations = (int)boysCmd.ExecuteScalar();
                lblBoys.Text = boysRegistrations.ToString();
                lblBoys.Font.Bold = true;
                lblBoys.Font.Size = FontUnit.Point(27);
            }
        }



    }
}
