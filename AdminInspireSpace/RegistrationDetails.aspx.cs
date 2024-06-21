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
    public partial class TablesBasics : System.Web.UI.Page
    {
        SqlConnection CON = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
             displayRecords();
        }

        void displayRecords()
        {
            SqlCommand cmd = new SqlCommand("displayRegDetails", CON);

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

                dataBindRepeater2.DataSource = ds;
                dataBindRepeater2.DataBind();

                dataBindRepeater1.DataSource = ds;
                dataBindRepeater1.DataBind();

                dataBindRepeater3.DataSource = ds;
                dataBindRepeater3.DataBind();

                dataBindRepeater4.DataSource = ds;
                dataBindRepeater4.DataBind();



            }
            else
            {
                lblEmptyTable.Text = " There are No registration records yet. You can make a new Registration on Register Page";
                lblEmptyTable1.Text = " There are No registration records yet. You can make a new Registration on Register Page";
                lblEmptyTable2.Text = " There are No registration records yet. You can make a new Registration on Register Page";
                lblEmptyTable3.Text = " There are No registration records yet. You can make a new Registration on Register Page";
                lblEmptyTable4.Text = " There are No registration records yet. You can make a new Registration on Register Page";
            }
            CON.Close();
        }
    }
}