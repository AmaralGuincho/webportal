using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_websites_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginSubmit_Click(object sender, EventArgs e)
    {
        if(txtUsername.Text == "deadpool") {
          if (txtPassword.Text == "666") {
                Response.Redirect("adm/dashboard.aspx");
          }
        }
    }
}