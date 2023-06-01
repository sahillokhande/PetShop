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
    public partial class Login : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
            }

            protected void txtsignup_Click1(object sender, EventArgs e)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
                {
                    if (Isformvalid())
                    {

                        con.Open();

                        SqlCommand cmd = new SqlCommand("Insert into tblUsers(Name,Password,Email,Contact,Address) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtContact.Text + "','" + txtAddress.Text + "')", con);
                        cmd.ExecuteNonQuery();

                        lblMsg.Text = "Registration Do!";
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        Response.Redirect("~/SignIn.aspx");
                        Response.Write("<script> alert('Registration Successfully Done!'); </script>");
                        clr();
                        con.Close();
                    }


                    else
                    {
                        Response.Write("<script> alert('Registration Failed'); </script>");
                        lblMsg.Text = "All Fields are mandatory";
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                    }
                }

            }

            private bool Isformvalid()
            {
                if (txtUname.Text == "")
                {
                    Response.Write("<script> alert('username not vaild');</script>");
                    txtUname.Focus();
                    return false;
                }
                else if (txtPass.Text == "")
                {
                    Response.Write("<script> alert('contact not vaild');</script>");
                    txtPass.Focus();
                    return false;
                }
                else if (txtCPass.Text == "")
                {
                    Response.Write("<script> alert('email not vaild');</script>");
                    txtCPass.Focus();
                    return false;
                }
                else if (txtEmail.Text == "")
                {
                    Response.Write("<script> alert('address not vaild');</script>");
                    txtEmail.Focus();
                    return false;
                }
                else if (txtContact.Text == "")
                {
                    Response.Write("<script> alert('address not vaild');</script>");
                    txtContact.Focus();
                    return false;
                }
                else if (txtAddress.Text == "")
                {
                    Response.Write("<script> alert('address not vaild');</script>");
                    txtAddress.Focus();
                    return false;
                }
                else if (txtPass.Text == "")
                {
                    Response.Write("<script> alert('password not vaild');</script>");
                    txtPass.Focus();
                    return false;
                }
                else if (txtPass.Text != txtCPass.Text)
                {
                    Response.Write("<script> alert('Password not vaild');</script>");
                    return false;
                }
                return true;
            }
            private void clr()
            {
                txtUname.Text = String.Empty;
                txtPass.Text = String.Empty;
                txtEmail.Text = String.Empty;
                txtContact.Text = String.Empty;
                txtAddress.Text = String.Empty;
                txtPass.Text = String.Empty;
                txtCPass.Text = String.Empty;

            }
        }
    }





