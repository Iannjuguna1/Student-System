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
    public partial class Admin_sign_up1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //insert new record 
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme1()", true);
            }
            else
            {
                signUpNewMember();
            }


            // user defined method
            bool checkMemberExists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from Admin_sign_up where Admin_ID='" + TextBox1.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }
            }
            void signUpNewMember()
            {
                //Response.Write("<script>alert('Testing');</script>");
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("INSERT Admin_sign_up(Admin_ID,Name,Contact,Password) values(@Admin_ID,@Name,@Contact,@Password)", con);
                    cmd.Parameters.AddWithValue("@Admin_ID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Contact", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", TextBox4.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }


        }
        //update record 
       
        
    }
}

