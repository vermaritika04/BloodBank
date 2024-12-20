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
    public partial class AddDonor : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=BloodBank;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAddress.Text = "";
            txtAge.Text = "";
            txtMobile.Text = "";
            txtName.Text = "";
            txtPass.Text = "";
            txtRegNo.Text = "";
            lblError.Text = "";
            txtBloodType.Text = "";
            txtSerialNo.Text = "";
            txtNoOfPoint.Text = "";
            txtBloodComp.Text = "";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtRegNo.Text != "" || txtRegNo != null)
                {
                    cmd = new SqlCommand("INSERT INTO tblDonor(RegNo,FullName,Age,Password,Mobile,Address,BloodType,SerialNo,NoOfPoint,BloodComp) VALUES ('" + txtRegNo.Text + "','" + txtName.Text + "','" + Convert.ToInt32(txtAge.Text) + "','" + txtPass.Text + "','" + Convert.ToInt32(txtMobile.Text) + "','" + txtAddress.Text + "','" + txtBloodType.Text + "','" + Convert.ToInt32(txtSerialNo.Text) + "','" + Convert.ToInt32(txtNoOfPoint.Text) + "','" + txtBloodComp.Text + "')", conn);
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
    }
}