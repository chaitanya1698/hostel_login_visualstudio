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

            // getting data from hostelregistration.aspx,cs
            int log = Int32.Parse(Session["logvalue1"].ToString());
            string HSusername = Session["username"].ToString();
            string HSpassword = Session["password"].ToString();
           
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                int logvalue = log;


                if (logvalue == 1111)
                {
                    SqlCommand cmd1 = new SqlCommand("getStudentetailsbyloginvalue", con);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.Add("@loginvalue", SqlDbType.Int).Value = logvalue;
                    cmd1.Parameters.Add("@uname", SqlDbType.VarChar).Value = HSusername;
                    cmd1.Parameters.Add("@pass", SqlDbType.VarChar).Value = HSpassword;
                    SqlDataAdapter sda = new SqlDataAdapter(cmd1);

                    DataSet ds = new DataSet();
                    if (cmd1.ExecuteScalar() == null)
                    {
                        Response.Write("<script> alert('login failed , please enter correct USERNAME and PASSWORD')</script>");

                      //  Response.Redirect("hostelRegistration.aspx");
                    }
                    else
                    {

                        sda.Fill(ds);
                        GVhostellogin.DataSource = ds;
                        GVhostellogin.DataBind();
                    }
                }
                if (logvalue == 2222)
                {
                    SqlCommand cmd2 = new SqlCommand("gethosteldetailsbystudentloginvalue ", con);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.Add("@loginvalue", SqlDbType.Int).Value = logvalue;
                    cmd2.Parameters.Add("@uname", SqlDbType.VarChar).Value = HSusername;
                    cmd2.Parameters.Add("@pass", SqlDbType.VarChar).Value = HSpassword;

                    SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);

                    DataSet ds2 = new DataSet();

                    if (cmd2.ExecuteScalar() == null)
                    {
                        Response.Write("<script> alert('login failed , please enter correct USERNAME and PASSWORD')</script>");

                        //  Response.Redirect("hostelRegistration.aspx");
                    }
                    else
                    {
                        sda2.Fill(ds2);
                        GVstudentlogin.DataSource = ds2;
                        GVstudentlogin.DataBind();
                    }
                }



            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("hostelRegistration.aspx");
        }
    }
}