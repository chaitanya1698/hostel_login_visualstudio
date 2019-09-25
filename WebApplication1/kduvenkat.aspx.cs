using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class kduvenkat : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                TextBox1.Text = "0";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownList1.SelectedItem.Text  + DropDownList1.SelectedItem.Selected;
                

           // int count = Convert.ToInt32( TextBox1.Text) + 1;
           // TextBox1.Text = count.ToString();
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("the selected city is" + DropDownList1.SelectedItem);
        }

        protected void rbGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write(" the selected gender is " + rbGender.Text );

            

        }
    }
}