using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSC__301_project
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = false; 
                    LinkButton2.Visible = false; 

                    LinkButton3.Visible = false; 
                    LinkButton4.Visible = false;

                    LinkButton5.Visible = true;
                    LinkButton6.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = false;
                    LinkButton11.Visible = false;

                }
                  else if (Session["role"].Equals("student"))
                {
                    LinkButton1.Visible = false; 
                    LinkButton2.Visible = true; 

                    LinkButton3.Visible = false;
                    LinkButton4.Visible = true;

                    LinkButton5.Visible = true;
                    LinkButton6.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                    LinkButton11.Visible = false;

                }
                else if (Session["role"].Equals("Admin"))
                {
                    LinkButton1.Visible = true; 
                    LinkButton2.Visible = true; 

                    LinkButton3.Visible = true; 
                    LinkButton4.Visible = false; 

                    LinkButton5.Visible = true;
                    LinkButton6.Visible = false;
                    LinkButton7.Visible = true;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;
                    LinkButton11.Visible = true;

                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            Session["role"] = "";
        }
            



      
        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            LinkButton1.Visible = false;
            LinkButton2.Visible = false;

            LinkButton3.Visible = false;
            LinkButton4.Visible = false;

            LinkButton5.Visible = true;
            LinkButton6.Visible = true;
            LinkButton7.Visible = true;
            LinkButton8.Visible = true;
            LinkButton9.Visible = true;

            LinkButton10.Visible = false;
            LinkButton11.Visible = false;


        }
            protected void LinkButton3_Click(object sender, EventArgs e)
            {
                Response.Redirect("Admin sign up1.aspx");
            }
       

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign up1.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student login1.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin login1.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Help.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("system.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }


    }
}
