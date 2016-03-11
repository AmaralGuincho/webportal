using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class adm_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["Log"] == "On")
            {
                adm_manager.Visible = false;
                
                if (Session["Staff"] == "On")
                {
                    DataView usr_dv;
                    usr_dv = (DataView)MySqlSelectUsr.Select(DataSourceSelectArguments.Empty);

                    lblUsername.Text = usr_dv.Table.Rows[0]["nome_usr"].ToString();
                    adm_manager.Visible = false;

                    if(Session["Admin"] == "On")
                     {
                         adm_manager.Visible = true;
                     }
                }
                else
                {
                     Response.Redirect("../index.html");
                }
                
             }
    }



    protected void logoff(object sender, EventArgs e)
    {
        Session["Log"] = "OFF";
        Session["Staff"] = "OFF";
        Session["Admin"] = "OFF";

        Session["id_usr"] = null;

        Response.Redirect("../index.html");
    }
}
