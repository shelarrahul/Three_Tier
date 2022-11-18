using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterTask_Three
{
    public partial class updateprofiledetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["intertask"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                getdata();
            }

        }
        private void getdata()
        {
            UserBs.Class1 objBs=new UserBs.Class1();
            DataSet result = objBs.show();
            DataSet ds = new DataSet();
            ds = result;
            if (ds.Tables[0].Rows.Count>1)
            {
                TextBox1.Text = (result.Tables[0].Rows[1]["name"].ToString());
                TextBox2.Text = (result.Tables[0].Rows[2]["mobile"].ToString());
                TextBox3.Text = (result.Tables[0].Rows[3]["gmail"].ToString());
                RadioButtonList1.SelectedValue = (result.Tables[0].Rows[5]["gender"].ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserBs.Class1 objBs = new UserBs.Class1();
            string nam = TextBox1.Text;
            string mob = TextBox2.Text;
            string gmail = TextBox3.Text;
            string gen = RadioButtonList1.SelectedValue;
            int result = objBs.UserprofileUp(nam, mob, gmail, gen, Convert.ToInt32(Session["id"]));
            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User Profile data Update successfully')", true);
            }
        }
    }
}