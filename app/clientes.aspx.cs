using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class app_clientes : System.Web.UI.Page
{
    CsharpCryptography Crypto = new CsharpCryptography("ETEP");

    protected void Page_Load(object sender, EventArgs e)
    {
      //Importing SqlDataSources to DataView
      DataView recentClientes;
      recentClientes = (DataView)cliente.Select(DataSourceSelectArguments.Empty);

      //Getting DataView's info, into Html file
      //Checking if DataView is Empty
      if(recentClientes.Table.Rows.Count > 0){
        //Populating 1st Table Row
        //Checking if user does have a pic
        if(recentClientes.Table.Rows[0]["img_cli"].ToString() == String.Empty){
          imgCli1.Attributes["src"] = "../images/profiles/generic.png";
        }else{
          imgCli1.Attributes["src"] = Crypto.Decrypt(recentClientes.Table.Rows[0]["img_cli"].ToString());
        }
        nomeCli1.InnerHtml = Crypto.Decrypt(recentClientes.Table.Rows[0]["nome_cli"].ToString()) + " " + Crypto.Decrypt(recentClientes.Table.Rows[0]["sobrenome_cli"].ToString());
        telCli1.InnerHtml = Crypto.Decrypt(recentClientes.Table.Rows[0]["telefone_cli"].ToString());

        //Checking if 2nd Row is Empty
        if(recentClientes.Table.Rows.Count > 1){
          //Populating 2nd Table Row
          //Checking if user does have a pic
          if(recentClientes.Table.Rows[1]["img_cli"].ToString() == String.Empty){
            imgCli2.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            imgCli2.Attributes["src"] = Crypto.Decrypt(recentClientes.Table.Rows[1]["img_cli"].ToString());
          }
          nomeCli2.InnerHtml = Crypto.Decrypt(recentClientes.Table.Rows[1]["nome_cli"].ToString()) + " " + Crypto.Decrypt(recentClientes.Table.Rows[1]["sobrenome_cli"].ToString());
          telCli2.InnerHtml = Crypto.Decrypt(recentClientes.Table.Rows[1]["telefone_cli"].ToString());

            //Checking if 3rd Row is Empty
            if(recentClientes.Table.Rows.Count > 2){
              //Populating 3rd Table Row
              //Checking if user does have a pic
              if(recentClientes.Table.Rows[2]["img_cli"].ToString() == String.Empty){
                imgCli3.Attributes["src"] = "../images/profiles/generic.png";
              }else{
                imgCli3.Attributes["src"] = Crypto.Decrypt(recentClientes.Table.Rows[2]["img_cli"].ToString());
              }
              nomeCli3.InnerHtml = Crypto.Decrypt(recentClientes.Table.Rows[2]["nome_cli"].ToString()) + " " + Crypto.Decrypt(recentClientes.Table.Rows[2]["sobrenome_cli"].ToString());
              telCli3.InnerHtml = Crypto.Decrypt(recentClientes.Table.Rows[2]["telefone_cli"].ToString());
            }
        }
      }
    }
    protected void cadastrar(object sender, EventArgs e){
      //Converting date to international format
      cliente.InsertParameters["nome"].DefaultValue = Crypto.Encrypt(nomeCli.Text);
      cliente.InsertParameters["sobrenome"].DefaultValue = Crypto.Encrypt(SobrenomeCli.Text);
      cliente.InsertParameters["sexo"].DefaultValue = Crypto.Encrypt(sexoCli.Text);
      cliente.InsertParameters["email"].DefaultValue = Crypto.Encrypt(emailCli.Text);
      cliente.InsertParameters["cpf"].DefaultValue = Crypto.Encrypt(cpfCli.Text);
      cliente.InsertParameters["telefone"].DefaultValue = Crypto.Encrypt(telCli.Text);
      cliente.InsertParameters["cep"].DefaultValue = Crypto.Encrypt(cepCli.Text);
      cliente.InsertParameters["bairro"].DefaultValue = Crypto.Encrypt(bairroCli.Text);
      cliente.InsertParameters["uf"].DefaultValue = Crypto.Encrypt(ufCli.Text);
      cliente.InsertParameters["cidade"].DefaultValue = Crypto.Encrypt(cidadeCli.Text);
      cliente.InsertParameters["endereco"].DefaultValue = Crypto.Encrypt(residenciaCli.Text);
      cliente.InsertParameters["dataNasc"].DefaultValue =
      Crypto.Encrypt(Convert.ToDateTime(dtNascCli.Text).ToString("yyyy/MM/dd"));


      cliente.Insert();

      // AUDITORIA
      // Gravando Ação no `userlog`
      string curretUser = Session["log"].ToString();
      string acao = "Insert Client";
      // Transformando a data no padrão internacional
      string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

      userLog.InsertParameters["funcionario"].DefaultValue = (curretUser);
      userLog.InsertParameters["acao"].DefaultValue = Crypto.Encrypt(acao);
      userLog.InsertParameters["time"].DefaultValue = Crypto.Encrypt(currentDate);

      // Inserindo as informações
      userLog.Insert();

      Response.Redirect("home.aspx");
    }
}
