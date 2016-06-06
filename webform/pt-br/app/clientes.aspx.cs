using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class pt_br_app_clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cadastrar(object sender, EventArgs e){
      //Converting date to international format

      novoCliente.InsertParameters["dataNasc"].DefaultValue =
        Convert.ToDateTime(dtNascCli.Text).ToString("yyyy/MM/dd");


      novoCliente.Insert();
    }
}
