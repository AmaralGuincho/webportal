using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;
using System.Data;
//using mysql.data;




public partial class Web_websites_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginSubmit_Click(object sender, EventArgs e)
    {
        /*
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
            //Sucesso na Autenticação

            string type = dv.Table.Rows[0]["type_usr"].ToString();
            
            if(type == "adm")
            {   
                Session["Log"] = "On";
                Session["Staff"] = "On";
                Session["Admin"] = "On";

                //registrando o usiario
                Session["id_usr"] = dv.Table.Rows[0]["id_usr"].ToString();

                Response.Redirect("adm/dashboard.aspx");
            }

            if (type == "staff")
            {
                Session["Log"] = "On";
                Session["Staff"] = "On";
                Session["Admin"] = "OFF";

                //registrando o usiario
                Session["id_usr"] = dv.Table.Rows[0]["id_usr"].ToString();

                Response.Redirect("adm/dashboard.aspx");

                
            }

            if (type == "adm")
            {
                Session["Log"] = "On";
                Session["Staff"] = "OFF";
                Session["Admin"] = "OFF";

                //registrando o usiario
                Session["id_usr"] = dv.Table.Rows[0]["id_usr"].ToString();

                Response.Redirect("index.html");
            }


        }
        
      */
    }


}