using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pt_br_app_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SqlLogin_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void loginEntrar_Click(object sender, EventArgs e)
    {
        DataView dv;

        dv = (DataView)SqlLogin.Select(DataSourceSelectArguments.Empty);

        if(dv.Table.Rows.Count == 0)
        {
            Response.Write("Não Logado!");
            lblPassword.InnerText ="Senha inválida";
        }
        else
        {
            Session["logado"] = "OK";
            Response.Redirect("index.aspx");
        }
    }
}