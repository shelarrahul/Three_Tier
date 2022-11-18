using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterTask_Three
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!this.IsPostBack)
            {
                showData();
            }
        }

        private void showData()
        {
            try
            {
                UserBs.Class1 objbs = new UserBs.Class1();
                Repeater1.DataSource = objbs.show();
                Repeater1.DataBind();
               
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}