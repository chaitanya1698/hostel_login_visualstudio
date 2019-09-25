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
    public partial class DBdropdownlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // string cs = ConfigurationManager.ConnectionStrings["testDBConnectionString"].ConnectionString;

           //using( SqlConnection con = new SqlConnection(cs)){

           //     SqlCommand cmd = new SqlCommand("select sno,sname from test",con);

           //     con.Open();
           //     ddlnametest.DataSource = cmd.ExecuteReader();
           //     ddlnametest.DataBind();
           //   //  SqlDataAdapter da = new SqlDataAdapter();
                
          //  }

        }

       
    }
}