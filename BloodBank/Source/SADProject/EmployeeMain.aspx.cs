using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SADProject
{
    public partial class EmployeeMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddDonor_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddDonor.aspx");
        }

        protected void btnViewDonor_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewDonor.aspx"); 
        }

        protected void btnViewDoctor_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewDoctor.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}