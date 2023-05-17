using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSC__301_project
{
    public partial class Admin_login1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Admin_sign_up where Admin_ID='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Successful Admin login');</script>");
                        Session["Admin_ID"] = dr.GetValue(1).ToString();
                        Session["password"] = dr.GetValue(2).ToString();
                        Session["role"] = "Admin";
                        Adminlogin();
                       
                    }
                    Response.Redirect("default.aspx");

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme1()", true);
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            void Adminlogin()
            {
                //Response.Write("<script>alert('Testing');</script>");
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("INSERT INTO Admin_login(Admin_ID,password) values(@Admin_ID,@password)", con);
                    cmd.Parameters.AddWithValue("@Admin_ID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Sign Up Successful.Go to Student Login');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


            }

        }
    }
}
