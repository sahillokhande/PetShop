using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace pETSHOPZ
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                    if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
                    {
                        txtUsername.Text = Request.Cookies["UNAME"].Value;
                        txtPass.Text = Request.Cookies["UPWD"].Value;
                        CheckBox1.Checked = true;
                    }
                }

            }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Name=@Name and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@Name", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPass.Text);
                Clr();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUsername.Text;
                        Response.Cookies["UPWD"].Value = txtPass.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }

                    string Usertype;
                    Usertype = dt.Rows[0][6].ToString().Trim();

                    if (Usertype == "User")
                    {

                        Session["Name"] = txtUsername.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }
                    if (Usertype == "Admin")
                    {

                        Session["Name"] = txtUsername.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Invalid Username and password";
                }
                //Response.Write("<script> alert('Login Successfully Done'); </script>");
                con.Close();
                //lblMsg.Text = "Registration Successfully Done";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
            }
        }

            private void Clr()
            {
                txtUsername.Text = String.Empty;
                txtPass.Text = String.Empty;
            }

        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Name=@Name and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@Name", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPass.Text);
                Clr();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUsername.Text;
                        Response.Cookies["UPWD"].Value = txtPass.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }

                    string Utype;
                    Utype = dt.Rows[0][6].ToString().Trim();

                    if (Utype == "User")
                    {

                        Session["Name"] = txtUsername.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }
                    if (Utype == "Admin")
                    {

                        Session["Name"] = txtUsername.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Invalid Username and password";
                }
                //Response.Write("<script> alert('Login Successfully Done'); </script>");
                con.Close();
                //lblMsg.Text = "Registration Successfully Done";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
            }

        }
    }
}

      