using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class pt_br_app_funcionarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cadastrar(object sender, EventArgs e){
      //Checking if Habilitacão is required

      //Converting Date
      novoFuncionario.InsertParameters["dataNasc"].DefaultValue =
        Convert.ToDateTime(dtNascFunc.Text).ToString("yyyy/MM/dd");

      novoFuncionario.InsertParameters["dataContratacao"].DefaultValue =
        Convert.ToDateTime(contratacaoFunc.Text).ToString("yyyy/MM/dd");

      //Inserindo Funcionario
      novoFuncionario.Insert();

      if (cargoFunc.SelectedItem.Value == "3") {
        //Habilitação required
        //Getting id_func for new Motorista
        DataView lastFunc =
         (DataView)novoFuncionario.Select(DataSourceSelectArguments.Empty);

        int ultimoFuncionario =
        Convert.ToInt32(lastFunc.Table.Rows[0]["MAX(id_func)"].ToString());

        novoMotorista.InsertParameters["id"].DefaultValue =
        ultimoFuncionario.ToString();

        novoMotorista.InsertParameters["dtEmissaoHab"].DefaultValue =
          Convert.ToDateTime(emissaoHabMot.Text).ToString("yyyy/MM/dd");

        novoMotorista.InsertParameters["dtValidadeHab"].DefaultValue =
          Convert.ToDateTime(validadeHabMot.Text).ToString("yyyy/MM/dd");

        //Inserindo Habilitação
        novoMotorista.Insert();
      }
      Response.Redirect("~/pt-br/app/home.aspx");
    }
}
