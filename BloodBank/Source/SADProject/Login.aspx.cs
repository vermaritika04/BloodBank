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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=BloodBank;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT * FROM tblUsers WHERE userName = '" + txtUsername.Text + "' AND password='" + txtPassword.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr.GetString(0) == "Administrator")
                {
                    //Session["userName"] = txtUsername.Text;
                    Response.Redirect("AdministratorMain.aspx");
                }

                if (dr.GetString(0) == "Employee")
                {
                    Response.Redirect("EmployeeMain.aspx");
                }

                if (dr.GetString(0) == "Doctor")
                {
                    Response.Redirect("DoctorMain.aspx");
                }
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
            conn.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtPassword.Text = "";
            txtUsername.Text = "";
        }
    }
}