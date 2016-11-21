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
    CsharpCryptography Crypto = new CsharpCryptography("ETEP");
    protected void Page_Load(object sender, EventArgs e)
    {
      //Importing Enployes from sql statement
        DataView recentFuncionarios = (DataView)lattestFuncionarios.Select(DataSourceSelectArguments.Empty);
        if (recentFuncionarios.Table.Rows.Count > 0) {
          //Checking wheather user have a profile image or not
          if (recentFuncionarios.Table.Rows[0]["img_func"].ToString() == String.Empty) {
            imgFunc1.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            imgFunc1.Attributes["src"] = Crypto.Decrypt(recentFuncionarios.Table.Rows[0]["img_func"].ToString());
          }
          nomeFunc1.InnerHtml = Crypto.Decrypt(recentFuncionarios.Table.Rows[0]["nome_func"].ToString()) + " " + Crypto.Decrypt(recentFuncionarios.Table.Rows[0]["sobrenome_func"].ToString());
          //Checking 2nd Row
          if(recentFuncionarios.Table.Rows.Count > 1){
            if (recentFuncionarios.Table.Rows[1]["img_func"].ToString() == String.Empty) {
              imgFunc2.Attributes["src"] = "../images/profiles/generic.png";
            }else{
              imgFunc2.Attributes["src"] = Crypto.Decrypt(recentFuncionarios.Table.Rows[1]["img_func"].ToString());
            }
            nomeFunc2.InnerHtml = Crypto.Decrypt(recentFuncionarios.Table.Rows[1]["nome_func"].ToString()) + " " + Crypto.Decrypt(recentFuncionarios.Table.Rows[1]["sobrenome_func"].ToString());
            //Checking 3rd Row
            if(recentFuncionarios.Table.Rows.Count > 2){
              if (recentFuncionarios.Table.Rows[2]["img_func"].ToString() == String.Empty) {
                imgFunc3.Attributes["src"] = "../images/profiles/generic.png";
              }else{
                imgFunc3.Attributes["src"] = Crypto.Decrypt(recentFuncionarios.Table.Rows[2]["img_func"].ToString());
              }
              nomeFunc3.InnerHtml = Crypto.Decrypt(recentFuncionarios.Table.Rows[2]["nome_func"].ToString()) + " " + Crypto.Decrypt(recentFuncionarios.Table.Rows[2]["sobrenome_func"].ToString());
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
      // Getting data from ui
      try{
        novoFuncionario.InsertParameters["nome"].DefaultValue = Crypto.Encrypt(nomeFunc.Text);
        novoFuncionario.InsertParameters["sobrenome"].DefaultValue = Crypto.Encrypt(sobrenomeFunc.Text);
        novoFuncionario.InsertParameters["sexo"].DefaultValue = Crypto.Encrypt(sexoFunc.Text);
        novoFuncionario.InsertParameters["email"].DefaultValue = Crypto.Encrypt(emailFunc.Text);
        novoFuncionario.InsertParameters["cpf"].DefaultValue = Crypto.Encrypt(cpfFunc.Text);
        novoFuncionario.InsertParameters["telefone"].DefaultValue = Crypto.Encrypt(telFunc.Text);
        novoFuncionario.InsertParameters["cep"].DefaultValue = Crypto.Encrypt(cepFunc.Text);
        novoFuncionario.InsertParameters["residencia"].DefaultValue = Crypto.Encrypt(residenciaFunc.Text);
        novoFuncionario.InsertParameters["bairro"].DefaultValue = Crypto.Encrypt(bairroFunc.Text);
        novoFuncionario.InsertParameters["cidade"].DefaultValue = Crypto.Encrypt(cidadeFunc.Text);
        novoFuncionario.InsertParameters["uf"].DefaultValue = Crypto.Encrypt(ufFunc.Text);
        novoFuncionario.InsertParameters["cargo"].DefaultValue = cargoFunc.SelectedValue;
        //Converting Date
        if(dtNascFunc.Text != String.Empty){
          novoFuncionario.InsertParameters["dataNasc"].DefaultValue =
            Crypto.Encrypt(Convert.ToDateTime(dtNascFunc.Text).ToString("yyyy/MM/dd"));
        } else{
          novoFuncionario.InsertParameters["dataNasc"].DefaultValue = null;
        }

        if(contratacaoFunc.Text != String.Empty){
          novoFuncionario.InsertParameters["dataContratacao"].DefaultValue =
            Crypto.Encrypt(Convert.ToDateTime(contratacaoFunc.Text).ToString("yyyy/MM/dd"));
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

        if(emissaoHabMot.Text != String.Empty){
          novoMotorista.InsertParameters["dtEmissaoHab"].DefaultValue =
            Crypto.Encrypt(Convert.ToDateTime(emissaoHabMot.Text).ToString("yyyy/MM/dd"));
        } else{
          novoMotorista.InsertParameters["dtEmissaoHab"].DefaultValue = null;
        }

        if(validadeHabMot.Text != String.Empty){
          novoMotorista.InsertParameters["dtValidadeHab"].DefaultValue =
            Crypto.Encrypt(Convert.ToDateTime(validadeHabMot.Text).ToString("yyyy/MM/dd"));
        } else{
          novoMotorista.InsertParameters["dtValidadeHab"].DefaultValue = null;
        }

        novoMotorista.InsertParameters["nomeHab"].DefaultValue = Crypto.Encrypt(nomeHabMot.Text);
        novoMotorista.InsertParameters["idHab"].DefaultValue = Crypto.Encrypt(idHabMot.Text);
        novoMotorista.InsertParameters["registroHab"].DefaultValue = Crypto.Encrypt(registroHabMot.Text);
        novoMotorista.InsertParameters["localHab"].DefaultValue = Crypto.Encrypt(localGeradoHabMot.Text);

        //Inserindo Habilitação
        novoMotorista.Insert();
      }

      // AUDITORIA
      // Gravando Ação no `userlog`
      string curretUser = Session["log"].ToString();
      string acao = "Insert Func";
      // Transformando a data no padrão internacional
      string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

      userLog.InsertParameters["funcionario"].DefaultValue = (curretUser);
      userLog.InsertParameters["acao"].DefaultValue = Crypto.Encrypt(acao);
      userLog.InsertParameters["time"].DefaultValue = Crypto.Encrypt(currentDate);

      // Inserindo as informações
      userLog.Insert();

      Response.Redirect("~/app/home.aspx");
    }
    catch{

    }
  }
}
