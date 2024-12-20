using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SADProject
{
    public partial class ViewDoctor : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=BloodBank;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtDelete.Text != "" || txtDelete.Text != null)
            {
                SqlCommand com = new SqlCommand("DELETE FROM tblDoctor WHERE RegNo='" + txtDelete.Text + "'", conn);
                conn.Open();
                com.ExecuteNonQuery();
                conn.Close();
                lblMsg.Text = "Delete Complete";
                Response.Redirect("ViewDoctor.aspx");
            }
            else
                lblMsg.Text = "Invalide!!!";
        }

        protected void txtDelete_TextChanged(object sender, EventArgs e)
        {

        }
    }
}