using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SADProject
{
    public partial class DoctorMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnViewDonorDetails_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewDonor.aspx");
        }
    }
}