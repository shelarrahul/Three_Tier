using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace InterTask_Three
{
    public partial class Changepass : System.Web.UI.Page
    {
        int up;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["intertask"].ToString());
            con.Open();
            string str = "select * from userdetails where id = '" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                if (TextBox1.Text == dr["password"].ToString())
                {

                    up = 1;
                }

            }
            dr.Close();
            con.Close();
            if (up == 1)
            {
                UserBs.Class1 objBs = new UserBs.Class1();
                string pass = TextBox3.Text;
                int result = objBs.Userpass(pass, Convert.ToInt32(Session["id"]));

                if (result > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('data Update successfully')", true);
                }
            }
        }
        public void Userpassupd(int id)
        {


        }
    }
}