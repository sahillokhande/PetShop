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
    public partial class AddServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMaterail();
            }
        }

        private void BindMaterail()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("Select * from Services", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptrService.DataSource = dt;
                rptrService.DataBind();
            }
        }

        protected void btnAddMaterial_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Services(ServiceName)Values('" + txtServices.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Size Added Succesfully'); </script>");
                txtServices.Text = String.Empty;
                con.Close();
                txtServices.Focus();
            }

        }
    }
}