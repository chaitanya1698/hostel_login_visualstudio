using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class hostelRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            int logvalue1 = Convert.ToInt32(ddlLogType.SelectedValue);
            string username = txtUName.Text;
            string password = txtPwd.Text;

           
                Session["logvalue1"] = logvalue1;
                Session["username"] = username;
                Session["password"] = password;

                Response.Redirect("HosStuview.aspx");
            

            //string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            //using (SqlConnection con = new SqlConnection(cs)) {
            //    con.Open();

            //    int logvalue = Convert.ToInt32( ddlLogType.SelectedValue ) ;

            //    if (logvalue == 1111)
            //    {
            //        SqlCommand cmd1 = new SqlCommand("getStudentetailsbyloginvalue", con);
            //        cmd1.CommandType = CommandType.StoredProcedure;
            //        cmd1.Parameters.Add("@loginvalue", SqlDbType.Int).Value = logvalue;
            //        cmd1.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtUName.Text;
            //        cmd1.Parameters.Add("@pass", SqlDbType.VarChar).Value = txtPwd.Text;
            //        SqlDataAdapter sda = new SqlDataAdapter(cmd1);

            //        DataSet ds = new DataSet();

            //        sda.Fill(ds);
            //        GVhostellogin.DataSource = ds;
            //        GVhostellogin.DataBind();
            //    }
            //    if (logvalue == 2222)
            //    {
            //        SqlCommand cmd2 = new SqlCommand("gethosteldetailsbystudentloginvalue ", con);
            //        cmd2.CommandType = CommandType.StoredProcedure;
            //        cmd2.Parameters.Add("@loginvalue", SqlDbType.Int).Value = logvalue;
            //        cmd2.Parameters.Add("@uname", SqlDbType.VarChar).Value = txtUName.Text;
            //        cmd2.Parameters.Add("@pass", SqlDbType.VarChar).Value = txtPwd.Text;

            //        SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);

            //        DataSet ds2 = new DataSet();
            //        sda2.Fill(ds2);
            //        GVstudentlogin.DataSource = ds2;
            //        GVstudentlogin.DataBind();
            //    }

               


            

        }
    }
}