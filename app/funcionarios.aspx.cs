using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class app_funcionarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //Importing Enployes from sql statement
        DataView recentFuncionarios = (DataView)lattestFuncionarios.Select(DataSourceSelectArguments.Empty);
        if (recentFuncionarios.Table.Rows.Count > 0) {
          //Checking wheather user have a profile image or not
          if (recentFuncionarios.Table.Rows[0]["img_func"].ToString() == String.Empty) {
            imgFunc1.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            imgFunc1.Attributes["src"] = recentFuncionarios.Table.Rows[0]["img_func"].ToString();
          }
          nomeFunc1.InnerHtml = recentFuncionarios.Table.Rows[0]["nome_func"].ToString() + " " + recentFuncionarios.Table.Rows[0]["sobrenome_func"].ToString();
          //Checking 2nd Row
          if(recentFuncionarios.Table.Rows.Count > 1){
            if (recentFuncionarios.Table.Rows[1]["img_func"].ToString() == String.Empty) {
              imgFunc2.Attributes["src"] = "../images/profiles/generic.png";
            }else{
              imgFunc2.Attributes["src"] = recentFuncionarios.Table.Rows[1]["img_func"].ToString();
            }
            nomeFunc2.InnerHtml = recentFuncionarios.Table.Rows[1]["nome_func"].ToString() + " " + recentFuncionarios.Table.Rows[1]["sobrenome_func"].ToString();
            //Checking 3rd Row
            if(recentFuncionarios.Table.Rows.Count > 2){
              if (recentFuncionarios.Table.Rows[2]["img_func"].ToString() == String.Empty) {
                imgFunc3.Attributes["src"] = "../images/profiles/generic.png";
              }else{
                imgFunc3.Attributes["src"] = recentFuncionarios.Table.Rows[2]["img_func"].ToString();
              }
              nomeFunc3.InnerHtml = recentFuncionarios.Table.Rows[2]["nome_func"].ToString() + " " + recentFuncionarios.Table.Rows[2]["sobrenome_func"].ToString();
            }else{
              nomeFunc3.InnerHtml = "--";
            }
          }else{
            nomeFunc2.InnerHtml = "--";
            nomeFunc3.InnerHtml = "--";
          }
        }else{
          nomeFunc1.InnerHtml = "--";
          nomeFunc2.InnerHtml = "--";
          nomeFunc3.InnerHtml = "--";
        }

    }

    protected void cadastrar(object sender, EventArgs e){
      //Checking if Habilitacão is required

      //Converting Date
      if(dtNascFunc.Text != String.Empty){
        novoFuncionario.InsertParameters["dataNasc"].DefaultValue =
          Convert.ToDateTime(dtNascFunc.Text).ToString("yyyy/MM/dd");
      } else{
        novoFuncionario.InsertParameters["dataNasc"].DefaultValue = null;
      }

      if(contratacaoFunc.Text != String.Empty){
        novoFuncionario.InsertParameters["dataContratacao"].DefaultValue =
          Convert.ToDateTime(contratacaoFunc.Text).ToString("yyyy/MM/dd");
      } else{
        novoFuncionario.InsertParameters["dataContratacao"].DefaultValue = null;

      }

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
      Response.Redirect("~/app/home.aspx");
    }
}
