using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project4
{
    public partial class login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            // Your server-side login logic goes here (e.g., validate credentials)
            // You can then redirect the user to a different page based on the result

            // Example: Redirect to a success page
            Response.Redirect("login_success.aspx");
        }
    }
}