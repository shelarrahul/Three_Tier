using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterTask_Three
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Button3.Text == "Submit")
                {
                    UserBs.Class1 objBs = new UserBs.Class1();
                    int result=objBs.insert(TextBox1.Text, TextBox3.Text, TextBox4.Text, Password1.Value, RadioButtonList1.SelectedValue);
                    if(result>0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('data insert successfully')", true);
                    }
                }
            }catch(Exception ex)
            {
                throw ex;
            }
        }
        //public void insertData()
        //{
        //    UserSchema.Class1 objSchema = new UserSchema.Class1();
        //    objSchema.Name = TextBox1.Text;
        //    objSchema.Mobile = TextBox3.Text;
        //    objSchema.Gmail = TextBox4.Text;
        //    objSchema.Password = Password1.Value;
        //    objSchema.Gender =RadioButtonList1.SelectedValue;
        //    UserBs.Class1 objBS=new UserBs.Class1();
        //    int result = objBS.insert(objSchema);
        //    if (result > 0)
        //    {
        //        ScriptManager.RegisterStartupScript(this,this.GetType(),"alert","alert('data insert successfully')",true);
        //    }
        //}     
    }
}