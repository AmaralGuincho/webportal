using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Data;
using MySql.Data;




public partial class Web_websites_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginSubmit_Click(object sender, EventArgs e)
    {
        DataView dv;

        dv = (DataView)MySqlLogin.Select
            (DataSourceSelectArguments.Empty);

        if (dv.Table.Rows.Count == 0)
        {
            //Fail to login
            Response.Redirect("index.html");
        }
        else
        {
            string type = dv.Table.Rows[0]["type_usr"].ToString();

            Response.Redirect("adm/dashboard.aspx");
        }

      
    }


}