using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;



namespace pETSHOPZ
{
    public partial class Produts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["Name"] != null)
         {
                if (!IsPostBack)
              {
                  if (Request.QueryString["BuyNow"] == "YES")
                    {

                   }
                  BindProductRepeater();
                   BindCartNumber();

                }
           }
            else
            {
              if (Request.QueryString["BuyNow"] == "YES")
              {
                  Response.Redirect("SignIn.aspx");
                }
              else
                {
                    Response.Redirect("~/deafult.aspx");
               }
           }

        }

        private void BindCartNumber()
        {
        }

        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                    }
                }
            }
        }
    }
}
    