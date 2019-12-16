using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlServer;
namespace DogVillaEntity
{
    public partial class AddVilla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!txtName.Text.ToString().Equals("") && !txtPrice.Text.ToString().Equals("") && !txtSize.Text.ToString().Equals("")) {

                Villa obj = new Villa(txtName.Text.ToString(), Convert.ToInt32(txtPrice.Text.ToString()), txtSize.Text.ToString());

                txtName.Text = "";
                txtPrice.Text = "";
                txtSize.Text = "";
                rslt.InnerHtml = "Villa is Stored ";
                   

            }


        }
    }
}