using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pt_br_app_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void validation(object sender, EventArgs e)
    {
      try
      {
        DataView dv;

        dv = (DataView)MySqlLogin.Select(DataSourceSelectArguments.Empty);

        if(dv.Table.Rows.Count == 0)
        {
          MessageBox.Show("Falha ao realizar Login");
        }
        else
        {
          string cargo = dv.Table.Rows[0]["id_cargo"].ToString();

            // 1 = adm , 2 = secretário, 3 = motorista
          if(cargo == "1")
          {
            Session["Motorista"] = "Off";
            Session["Secretário"] = "On";
            Session["Adm"] = "On";

            Session["id_username"] = dv.Table.Rows[0]["id_username"].ToString();

            Response.Redirect("");
          }

          if(cargo == "2")
          {
            Session["Motorista"] = "Off";
            Session["Secretário"] = "On";
            Session["Adm"] = "Off";

            Session["id_username"] = dv.Table.Rows[0]["id_username"].ToString();

            Response.Redirect("");
          }

          if(cargo == "3")
          {
            Session["Motorista"] = "On";
            Session["Secretário"] = "Off";
            Session["Adm"] = "Off";

            Session["id_username"] = dv.Table.Rows[0]["id_username"].ToString();

            Response.Redirect("");
          }

        }
      }
      catch{ }
    }
}
