using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;




namespace WebApplication1
{
    public partial class HosStuview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            int log = Int32.Parse(Session["logvalue1"].ToString());

            string HSusername = Session["username"].ToString();

            DataSet ds = (DataSet)Session["GVhostellogin_ds"];
            if (log == 1111 && Session["GVhostellogin_ds"]!=null)
            {
                lblusername.Text = " Welcome back  "+HSusername  + " \n  you logged in as a hotel admistrator ";
                GVhostellogin.DataSource = ds;
                GVhostellogin.DataBind();
            }

            if (log == 2222 )
            {

                lblusername.Text = "Welcome back  "+ HSusername + "\n you logged in as a student";
                DataSet ds2 = (DataSet)Session["GVstudentlogin_ds"];
                GVstudentlogin.DataSource = ds2;
                GVstudentlogin.DataBind();
            }

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("hostelRegistration.aspx");
        }
    }
}