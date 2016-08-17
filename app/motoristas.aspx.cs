using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class app_motoristas : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    //Importing Enployes from sql statement
      DataView recentMotoristas = (DataView)lattestMotoristas.Select(DataSourceSelectArguments.Empty);
      if (recentMotoristas.Table.Rows.Count > 0) {
        //Checking wheather user have a profile image or not
        if (recentMotoristas.Table.Rows[0]["img_func"].ToString() == String.Empty) {
          imgMot1.Attributes["src"] = "../images/profiles/generic.png";
        }else{
          imgMot1.Attributes["src"] = recentMotoristas.Table.Rows[0]["img_func"].ToString();
        }
        nomeMot1.InnerHtml = recentMotoristas.Table.Rows[0]["nome_func"].ToString() + " " + recentMotoristas.Table.Rows[0]["sobrenome_func"].ToString();
        //Checking 2nd Row
        if(recentMotoristas.Table.Rows.Count > 1){
          if (recentMotoristas.Table.Rows[1]["img_func"].ToString() == String.Empty) {
            imgMot2.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            imgMot2.Attributes["src"] = recentMotoristas.Table.Rows[1]["img_func"].ToString();
          }
          nomeMot2.InnerHtml = recentMotoristas.Table.Rows[1]["nome_func"].ToString() + " " + recentMotoristas.Table.Rows[1]["sobrenome_func"].ToString();
          //Checking 3rd Row
          if(recentMotoristas.Table.Rows.Count > 2){
            if (recentMotoristas.Table.Rows[2]["img_func"].ToString() == String.Empty) {
              imgMot3.Attributes["src"] = "../images/profiles/generic.png";
            }else{
              imgMot3.Attributes["src"] = recentMotoristas.Table.Rows[2]["img_func"].ToString();
            }
            nomeMot3.InnerHtml = recentMotoristas.Table.Rows[2]["nome_func"].ToString() + " " + recentMotoristas.Table.Rows[2]["sobrenome_func"].ToString();
          }else{
            nomeMot3.InnerHtml = "--";
          }
        }else{
          nomeMot2.InnerHtml = "--";
          nomeMot3.InnerHtml = "--";
        }
      }else{
        nomeMot1.InnerHtml = "--";
        nomeMot2.InnerHtml = "--";
        nomeMot3.InnerHtml = "--";
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

    novoFuncionario.InsertParameters["cargo"].DefaultValue = "3";

    //Inserindo Funcionario
    novoFuncionario.Insert();

      //Habilitação required
      //Getting id_func for new Motorista
      DataView lastFunc =
       (DataView)novoFuncionario.Select(DataSourceSelectArguments.Empty);

      int ultimoFuncionario =
      Convert.ToInt32(lastFunc.Table.Rows[0]["MAX(id_func)"].ToString());

      novoMotorista.InsertParameters["id"].DefaultValue =
      ultimoFuncionario.ToString();

      if(emissaoHabMot.Text != String.Empty){
        novoMotorista.InsertParameters["dtEmissaoHab"].DefaultValue =
          Convert.ToDateTime(emissaoHabMot.Text).ToString("yyyy/MM/dd");
      } else{
        novoMotorista.InsertParameters["dtEmissaoHab"].DefaultValue = "0000/00/00";
      }

      if(validadeHabMot.Text != String.Empty){
        novoMotorista.InsertParameters["dtValidadeHab"].DefaultValue =
          Convert.ToDateTime(validadeHabMot.Text).ToString("yyyy/MM/dd");
      } else{
        novoMotorista.InsertParameters["dtValidadeHab"].DefaultValue = "0000/00/00";
      }
      //Inserindo Habilitação
      novoMotorista.Insert();

    Response.Redirect("~/app/home.aspx");
  }
}
