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
    public partial class AddsubCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainCat();
                BindSubCategoryRepeater();
            }
        }

        private void BindSubCategoryRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("Select A.*,B.* from SubCategory A inner join  Category B on B.CatID = A.MainCatID", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptrsubCategory.DataSource = dt;
                rptrsubCategory.DataBind();
            }
        }

        protected void btnAddSubCategory_Click(object sender, EventArgs e)
        {
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into SubCategory(SubCatName,MainCatID)Values('" + txtSubCategory.Text + "','" + ddl1.SelectedItem.Value + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Sub Category Added Succesfully'); </script>");
                    txtSubCategory.Text = String.Empty;

                    con.Close();
                    ddl1.ClearSelection();
                    ddl1.Items.FindByValue("0").Selected = true;

                }
                BindSubCategoryRepeater();
            }
        }
        private void BindMainCat()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Category", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddl1.DataSource = dt;
                    ddl1.DataTextField = "CatName";
                    ddl1.DataValueField = "CatID";
                    ddl1.DataBind();
                    ddl1.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }
    }

}
