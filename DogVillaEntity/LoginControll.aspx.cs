using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlServer;
namespace DogVillaEntity
{
    public partial class LoginControll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!txtName.Text.ToString().Equals("") && !txtPassword.Text.ToString().Equals("")) {
                AdminLogin obj = new AdminLogin(txtName.Text.ToString(), txtPassword.Text.ToString());
                int z = obj.Verify();
                if (z == 1)
                {
                    Response.Redirect("AdminPannel.aspx");
                }
                else {
                    rslt.InnerHtml = "Invalid User Name or Password try Again ";
                }

                txtName.Text = "";
                txtPassword.Text = "";

            }
        }
    }
}