using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterTask_Three
{
    public partial class Login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserBs.Class1 objBs=new UserBs.Class1();
            DataSet result= objBs.loguser(TextBox1.Text, TextBox2.Text);
            DataSet ds = new DataSet();
            ds = result;
            if(ds.Tables[0].Rows.Count == 1)
            {
                Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                Session["name"] = ds.Tables[0].Rows[0][1].ToString();
                Session["usertype"] = ds.Tables[0].Rows[0][6].ToString();

                if (Session["usertype"].Equals("Admin"))
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Redirect("Homepage.aspx");
                }
            }
            //    UserBs.Class1 obhbs=new UserBs.Class1();
            //    DataTable result = obhbs.loguser(TextBox1.Text, TextBox2.Text);
            //    DataSet dt = new DataSet();
            //    if (dt.Tables[1].Rows.Count==1)
            //    {
            //        Session["id"] = dt.Tables[0].Rows[0].ToString();
            //        Session["name"] = dt.Tables[0].Rows[1].ToString();
            //        Session["usertype"] = dt.Tables[0].Rows[6].ToString();
            //        if (Session["usertype"].Equals("User"))
            //        {
            //            Response.Redirect("Homepage.aspx");
            //        }
            //        else
            //        {
            //            /*Response.Redirect("Homepage.aspx")*/
            //            ;
            //        }
            //    }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}