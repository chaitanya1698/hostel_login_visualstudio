using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class testdatabasegrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            //using (SqlConnection con = new SqlConnection(cs)) {
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("select * from test", con);

            //    SqlDataReader rdr = cmd.ExecuteReader();
            //    GridView1.DataSource = rdr;
            //    GridView1.DataBind();

            //}



        }
        //testDBConnectionString
        protected void Lbinsert_Click(object sender, EventArgs e) {

            demogrid.InsertParameters["sname"].DefaultValue =
       ((TextBox)GridView1.FooterRow.FindControl("TxtName")).Text;
            demogrid.InsertParameters["smail"].DefaultValue =
       ((TextBox)GridView1.FooterRow.FindControl("Txtcity")).Text;
            demogrid.Insert();
        }




    }
}