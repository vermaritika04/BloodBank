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
    public partial class AddEmployee : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=BloodBank;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtRegNo.Text != "" || txtRegNo != null)
                {
                    cmd = new SqlCommand("INSERT INTO tblEmployee(RegNo,FullName,Email,Password,Mobile,Address) VALUES ('" + txtRegNo.Text + "','" + txtName.Text + "','" + txtEmail.Text + "','" + txtPass.Text + "','" + Convert.ToInt32(txtMobile.Text) + "','" + txtAddress.Text + "')", conn);
                    cmd.CommandType = CommandType.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    lblError.Text = "Complete!!";
                }
            }
            catch (Exception ex)
            {
                lblError.Text = "Incorrect!!";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtName.Text = "";
            txtPass.Text = "";
            txtRegNo.Text = "";
            lblError.Text = "";
        }
    }
}