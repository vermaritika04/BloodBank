using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SADProject
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_AddEmployee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddEmployee.aspx"); 
        }

        protected void btn_AddDoctor_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddDoctor.aspx");
        }

        protected void btn_ViewEmployee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewEmployee.aspx");
        }

        protected void btnViewDoctor_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewDoctor.aspx");
        }
    }
}