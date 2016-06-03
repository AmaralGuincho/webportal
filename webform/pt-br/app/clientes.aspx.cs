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
      // Preparing Data For SqlInsert
      novoCliente.InsertParameters["cpf"].DefaultValue
      = cpfCli.Text.Replace('.','');

      novoCliente.InsertParameters["dataNasc"].DefaultValue
      = Convert.ToDateTime(dataNascCli.Text).ToString("yyyy/MM/dd");

      novoCliente.InsertParameters["cep"].DefaultValue
      = cepCli.Text.Replace('.','');

      novoCliente.InsertParameters["telefone"].DefaultValue
      = telCli.Text.Replace('-','');

    }
}
