using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterTask_Three
{
    public partial class UpdateProP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                getImage();
            }
        }

        private void getImage()
        {
            UserBs.Class1 objBs = new UserBs.Class1();
            DataSet result = objBs.Imageshow(Convert.ToInt32(Session["id"]));
            DataSet ds = new DataSet();
            ds = result;
            for(int i = 0; i < ds.Tables.Count; i++)
            {
                string url = ds.Tables[0].Rows[i]["image"].ToString();
                Image2.ImageUrl=url;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFiles!=null)
            {
                string strPath = Path.GetExtension(FileUpload1.FileName);
                if(strPath!=".jpeg"&& strPath!=".jpg" && strPath != ".png")
                {
                    Label1.Text = "Only these Image Files Allowed(.jpg , .jpeg, .png)";
                }
                else
                {
                    string fileImage = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + fileImage);
                    UserBs.Class1 objBs = new UserBs.Class1();
                    string img = "~/Images/" + fileImage;
                    int result = objBs.UpdateUserImage(img, Convert.ToInt32(Session["id"]));
                    if (result == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User Imagea Update successfully')", true);
                    }
                }
            }
            else
            {
                Label1.Text = "You are not Selected Any files";
            }          
        }
    }
}