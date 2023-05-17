using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;

namespace CSC__301_project
{
    public partial class sign_up1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //encrption of password 
        string Encrypt(string value)
        {
            using (MD5CryptoServiceProvider md = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = md.ComputeHash(utf8.GetBytes(value));
                return Convert.ToBase64String(data);
            }
            
        }
       

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
                    SqlCommand cmd = new SqlCommand("SELECT * from Student_registration where Student_ID='" + TextBox1.Text.Trim() + "';", con);
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO Student_registration(Student_ID,Full_name,Contact,Date_of_birth,Program,Password) values(@Student_ID,@Full_name,@Contact,@Date_of_birth,@Program,@Password)", con);
                    cmd.Parameters.AddWithValue("@Student_ID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Full_name", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Contact", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Date_of_birth", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Program", TextBox4.Text.Trim());
                   // TextBox6.Text = Encrypt(TextBox6.Text);
                    cmd.Parameters.AddWithValue("@Password",TextBox6.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
                    Response.Redirect("Student login1.aspx");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }


        }


    }
}
