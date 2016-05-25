using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pt_br_app_index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Verificação das Sessions
        if (Session["Log"] != "On")
            Response.Redirect("login.aspx");
        if (Session["Admin"] == "On")
            Response.Write("<script>alert('Bem vindo, Administrador!');</script>");
    }
}
