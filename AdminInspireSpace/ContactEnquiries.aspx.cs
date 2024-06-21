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
    public partial class TablesData : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            displayContactRecords();
        }

        void displayContactRecords()
        {
            SqlCommand cmd = new SqlCommand("displayContactDetails", CON);

            cmd.CommandType = CommandType.StoredProcedure;

            // no para passed

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            CON.Open();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                dataBindRepeater.DataSource = ds;
                dataBindRepeater.DataBind();





            }
            else
            {
                Label1.Text = " There are No Contact Enquiries";

                CON.Close();
            }
        }

        protected void LbtnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("deleteContactRecords", CON);

            cmd.CommandType = CommandType.StoredProcedure;

            string id = (((sender as LinkButton).NamingContainer.FindControl("lblId")as Label).Text).ToString();

            cmd.Parameters.AddWithValue("id", id);

            
            cmd.ExecuteNonQuery();

            CON.Close();
            displayContactRecords();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("searchByEmail", CON);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("EmailId", txtSearchEmail.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

           
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                dataBindRepeater.DataSource = ds;
                dataBindRepeater.DataBind();





            }
            else
            {
                lblNoRec.Text = " There are No Contact, Retry";

                CON.Close();
            }
        }

        protected void LinkButtonDtStart_Click(object sender, EventArgs e)
        {
            dtPickerStart.Visible = true;
        }

        protected void LinkButtonDtEnd_Click(object sender, EventArgs e)
        {
            dtPickerEnd.Visible = true;
        }


        protected void dtPickerStart_SelectionChanged(object sender, EventArgs e)
        {
           txtDtStart.Text = dtPickerStart.SelectedDate.ToLongDateString();
            dtPickerStart.Visible = false; 
        }

        protected void dtPickerEnd_SelectionChanged(object sender, EventArgs e)
        {
           txtDtEnd.Text = dtPickerEnd.SelectedDate.ToLongDateString();
            dtPickerEnd.Visible = false;
        }
        protected void btnSearchPeriod_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("searchRegRecPeriod", CON);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@startDt", txtDtStart.Text);
            cmd.Parameters.AddWithValue("@endDt", txtDtEnd.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();


            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                dataBindRepeater.DataSource = ds;
                dataBindRepeater.DataBind();


                lblSearchPeriod.Text = "Records found";
                lblSearchPeriod.ForeColor = System.Drawing.Color.Green;
                lblSearchPeriod.Font.Bold = true;


            }
            else
            {
                lblSearchPeriod.Text = "Records not found";
                lblSearchPeriod.ForeColor = System.Drawing.Color.Red;
                lblSearchPeriod.Font.Bold = true;

                CON.Close();
            }
        }
    }
}