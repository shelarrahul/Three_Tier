using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterTask_Three
{
    public partial class Navbhar : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1.Text = "Welcome :" + Session["name"];
            if (!this.IsPostBack)

            {
                showImage();
            }
        }

        private void showImage()
        {

            UserBs.Class1 objBs = new UserBs.Class1();
            DataSet result = objBs.Imageshow(Convert.ToInt32(Session["id"]));
            DataSet ds = new DataSet();
            ds = result;
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                string url = ds.Tables[0].Rows[0]["image"].ToString();
                Image2.ImageUrl = url;
            }
        }
    }
}