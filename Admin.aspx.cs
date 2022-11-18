using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterTask_Three
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                binddata();
            }
            
        }

        private void binddata()
        {
            UserBs.Class1 objBs = new UserBs.Class1();
            Repeater1.DataSource = objBs.show();
            Repeater1.DataBind();
        }

        protected void OnEditing(object sender, EventArgs e)
        {
            RepeaterItem item=(sender as LinkButton).Parent as RepeaterItem;
            item.FindControl("LinkButton4").Visible = true;
            item.FindControl("LinkButton3").Visible = true;
            item.FindControl("LinkButton1").Visible = false;
            item.FindControl("lbl1").Visible = false;
            item.FindControl("Label2").Visible = false;
            item.FindControl("Label4").Visible = false;
            item.FindControl("Label5").Visible = false;
            item.FindControl("FileUpload1").Visible = true;
            item.FindControl("txtname").Visible = true;
            item.FindControl("txtmob").Visible = true;
            item.FindControl("radio1").Visible = true;
            item.FindControl("drop1").Visible = true;
        }
        protected void OnDeleting(object sender, EventArgs e)
        {

        }
        protected void OnUpdating(object sender, EventArgs e)
        {
           
        
        }
        protected void OnCanceling(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            item.FindControl("LinkButton4").Visible = false;
            item.FindControl("LinkButton3").Visible = false;
            item.FindControl("LinkButton1").Visible = true;
            item.FindControl("lbl1").Visible = true;
            item.FindControl("Label2").Visible = true;
            item.FindControl("Label4").Visible = true;
            item.FindControl("Label5").Visible = true;
            item.FindControl("FileUpload1").Visible = false;
            item.FindControl("txtname").Visible = false;
            item.FindControl("txtmob").Visible = false;
            item.FindControl("radio1").Visible = false;
            item.FindControl("drop1").Visible = false;
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "update")
            {
                // string bookName = ((TextBox)e.Item.FindControl("txtBookName")).Text;
                string id = ((Label)e.Item.FindControl("Label1")).Text;
                string nam = ((TextBox)e.Item.FindControl("txtname")).Text;
                string mob = ((TextBox)e.Item.FindControl("txtmob")).Text;
                string gen = ((RadioButtonList)e.Item.FindControl("radio1")).SelectedValue;
                string user = ((DropDownList)e.Item.FindControl("drop1")).SelectedValue;
                string img = ((Image)e.Item.FindControl("Image1")).ImageUrl;
                FileUpload file = ((FileUpload)e.Item.FindControl("FileUpload1")) as FileUpload;
                string path = "~/Images/";
                if (file.HasFile)
                {
                    path += file.FileName;
                    file.SaveAs(MapPath(path));
                }
                else
                {
                    string img2 = ((Image)e.Item.FindControl("Image1")).ImageUrl;
                    path = img2;
                }
                img = path;
                UserBs.Class1 objBs = new UserBs.Class1();
                int result = objBs.AdminUpdate(nam, mob, gen, user, img, Convert.ToInt32(id));
                
                if (result > 0)
                {
                   
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Data Update successfully')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Data not Update ')", true);
                }
                binddata();
            }
        }
    }
}