using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace CSC__301_project
{
    public partial class Student_login1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        string Encrypt(string value)
        {
            using (MD5CryptoServiceProvider md = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = md.ComputeHash(utf8.GetBytes(value));
                return Convert.ToBase64String(data);
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Student_registration where Student_ID='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox3.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                       // Response.Write("<script>alert('Successful login');</script>");
                        Session["Admin_ID"] = dr.GetValue(1).ToString();
                        Session["password"] = dr.GetValue(2).ToString();
                        Session["role"] = "student";

                    }
                    // Response.Write("Successful login");
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);
                   
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

            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Student_login(Student_ID,Password) values(@Student_ID,@Password)", con);
                cmd.Parameters.AddWithValue("@Student_ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());
                TextBox3.Text = Encrypt(TextBox3.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                // Response.Write("<script>alert('Sign Up Successful.Go to Student Login');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Password.aspx");
        }

        void passowordcheck()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Student_registration where Student_ID='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox3.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Successful login');</script>");
                        Session["Admin_ID"] = dr.GetValue(1).ToString();
                        Session["password"] = dr.GetValue(2).ToString();
                        Session["role"] = "student";

                    }
                    //Response.Write("<script>alert('Successful login');</script>");

                }


                else
                {
                    Response.Write("<script>alert('Invalid Student details');</script>");

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}

