using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlServer;
namespace DogVillaEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!txtName.Text.ToString().Equals("") && !txtEmail.Text.ToString().Equals("") && !txtMsg.Text.ToString().Equals("")) {
                AddContact obj = new AddContact(txtName.Text.ToString(),txtEmail.Text.ToString(),txtMsg.Text.ToString());
                txtEmail.Text = "";
                txtMsg.Text = "";
                txtName.Text = "";
                rslt.InnerHtml = "We will contact you soon ";

            }
        }
    }
}