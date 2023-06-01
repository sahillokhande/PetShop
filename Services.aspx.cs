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
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        

        protected void txtSubmit_Click1(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                { 
                if (Isformvalid())
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblServices(Name,DName,Breed,SServ,Date,Contact) Values('" + txtUname.Text + "','" + txtDname.Text + "','" + txtBreed.Text + "','" + ddl1.Text + "','" + txtDate.Text + "','" + txtContact.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    lblMsg.Text = " Done !";
                    lblMsg.ForeColor = System.Drawing.Color.Green;

                        Response.Write("<script> alert('Registration Successfully Done!'); </script>");
                        Response.Redirect("~/deafult.aspx");
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

            }
            private bool Isformvalid()
            {
                if (txtUname.Text == "")
                {
                    Response.Write("<script> alert('username not vaild');</script>");
                    txtUname.Focus();
                    return false;
                }
                else if (txtDname.Text == "")
                {
                    Response.Write("<script> alert('contact not vaild');</script>");
                    txtDname.Focus();
                    return false;
                }
                else if (txtBreed.Text == "")
                {
                    Response.Write("<script> alert('email not vaild');</script>");
                    txtBreed.Focus();
                    return false;
                }
                else if (ddl1.Text == "")
                {
                    Response.Write("<script> alert('address not vaild');</script>");
                    ddl1.Focus();
                    return false;
                }
                else if (txtDate.Text == "")
                {
                    Response.Write("<script> alert('address not vaild');</script>");
                    txtDate.Focus();
                    return false;
                }
                else if (txtContact.Text == "")
                {
                    Response.Write("<script> alert('address not vaild');</script>");
                    txtContact.Focus();
                    return false;
                }


                return true;
            }
            private void clr()
            {
                txtUname.Text = String.Empty;
                txtDname.Text = String.Empty;
                txtBreed.Text = String.Empty;
                ddl1.Text = String.Empty;
                txtDate.Text = String.Empty;
                txtContact.Text = String.Empty;


            }
        }
    }
    


