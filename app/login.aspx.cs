using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
//Referencia do .net Data
using System.Data;

public partial class websites_login : System.Web.UI.Page
{
  // Generating a Decryptor
  CsharpCryptography Crypto = new CsharpCryptography("ETEP");
  Email mail = new Email();


    protected void Page_Load(object sender, EventArgs e)
    {
      if(!IsPostBack){
        if(Session["logOn"] != null){
          Response.Redirect("home.aspx");
        }else{
          if(Session["failedLogAttempts"] == null){
            Session["failedLogAttempts"] = 0;
          }
        }
      }
    }

    protected void login(object sender, EventArgs e)
    {
       try{
        //Declarando as Variaveis
        DataView dvLogin, dvFunc;
        Session["log"] = null;
        Session["admin"] = null;

        //Getting UI Data
        string login = txtUsername.Text;
        string password = txtPassword.Text;

        string encryptedLogin = Crypto.Encrypt(login);
        string encryptedPassword = Crypto.Encrypt(password);

        //Verificando o Login
        SqlLogin.SelectParameters["LOGIN"].DefaultValue = encryptedLogin;
        SqlLogin.SelectParameters["SENHA"].DefaultValue = encryptedPassword;

        dvLogin = (DataView)SqlLogin.Select(DataSourceSelectArguments.Empty);

        //Verificando o Usuário
        if (dvLogin.Table.Rows.Count > 0){
            //Carregando log com o id do Funcionario
            Session["log"] = Convert.ToInt32((dvLogin.Table.Rows[0]["id_func"]).ToString());
            //Obtendo Funcionario
            dvFunc = (DataView)SqlFunc.Select(DataSourceSelectArguments.Empty);

            // Verificando se é Administrador
            if (Convert.ToInt32((dvFunc.Table.Rows[0]["id_cargo"]).ToString()) == 1){
              Session["admin"] = "true";
            }
            else{
              Session["admin"] = null;
            }
            //Guardando o id do Funcionario
            Session["log"] = dvFunc.Table.Rows[0]["id_func"].ToString();
            Response.Redirect("~/app/home.aspx");

            // AUDITORIA
            // Gravando Ação no `userlog`
            string curretUser = Session["log"].ToString();
            string acao = "Start Session";
            // Transformando a data no padrão internacional
            string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            userLog.InsertParameters["funcionario"].DefaultValue = (curretUser);
            userLog.InsertParameters["acao"].DefaultValue = Crypto.Encrypt(acao);
            userLog.InsertParameters["time"].DefaultValue = Crypto.Encrypt(currentDate);

            // Inserindo as informações
            userLog.Insert();
        }
        //Falha na Autênticação
        else{
          //Limpando os campos
          txtUsername.Text = String.Empty;
          txtPassword.Text = String.Empty;
          Response.Write("<script>alert('Login ou senha incorretos!');</script>");

          // Adicionando uma tentativa na session logAttempt
          if (Session["failedLogAttempts"] != null) {
            int failedAttempts = Convert.ToInt32(Session["failedLogAttempts"].ToString());
            string jsFailed = failedAttempts.ToString();
            Session["failedLogAttempts"] = failedAttempts + 1;
          }else{
            // Adicionando a primeira falha
            Session["failedLogAttempts"] = 1;
          }
        }
      }
      catch(Exception ex){
        // ERRO NA CONEXÃO COM O BANCO DE DADOS
        Response.Write("<script>function dbError() {if (confirm('Ocorreu um erro no banco de dados interno. Você pode detalhar o erro para nossos desenvolvedores?')) {window.open('mailto:ioetep@gmail.com?subject=Erro+no+Banco+de+Dados&body=Por+favor+detalhe+o+que+estava+fazendo+ao+se+deparar+com+o+erro');}else{alert('Uma menssagem de erro genérica foi enviada ao Desenvolvedor');}} dbError();</script>");
      }
    }

    public void forgotPass(object sender, EventArgs e){
      string email = Crypto.Encrypt(txtUsername.Text);

      sqlForgotPass.SelectParameters["login"].DefaultValue = email;

      DataView listaFunc = (DataView)sqlForgotPass.Select(DataSourceSelectArguments.Empty);
      // Criando novo dataTAbe
      DataTable uncryptedTable = new DataTable();
      uncryptedTable.Columns.Add("id_func", typeof(int));
      uncryptedTable.Columns.Add("id_cargo", typeof(int));
      uncryptedTable.Columns.Add("nome_func", typeof(string));
      uncryptedTable.Columns.Add("sobrenome_func", typeof(string));
      uncryptedTable.Columns.Add("dtnasc_func",typeof(string));
      uncryptedTable.Columns.Add("cep_func",typeof(string));
      uncryptedTable.Columns.Add("cpf_func", typeof(string));
      uncryptedTable.Columns.Add("dtcont_func",typeof(string));
      uncryptedTable.Columns.Add("sx_func", typeof(string));
      uncryptedTable.Columns.Add("tel_func", typeof(string));
      uncryptedTable.Columns.Add("email_func",typeof(string));
      uncryptedTable.Columns.Add("residencia_func",typeof(string));
      uncryptedTable.Columns.Add("bairro_func", typeof(string));
      uncryptedTable.Columns.Add("uf_func",typeof(string));
      uncryptedTable.Columns.Add("cid_func", typeof(string));
      uncryptedTable.Columns.Add("img_func", typeof(string));

      uncryptedTable.DefaultView.RowFilter = "email_func like '"+email+"%'";

      for(int i=0; i<listaFunc.Table.Rows.Count; i++)
      {
        DataRow linha = uncryptedTable.NewRow();

        linha["id_func"] = listaFunc.Table.Rows[i]["id_func"].ToString();
        linha["id_cargo"] = listaFunc.Table.Rows[i]["id_cargo"].ToString();
        linha["nome_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["nome_func"].ToString());
        linha["sobrenome_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["sobrenome_func"].ToString());
        linha["dtnasc_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["dtnasc_func"].ToString());
        linha["cep_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["cep_func"].ToString());
        linha["cpf_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["cpf_func"].ToString());
        linha["dtcont_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["dtcont_func"].ToString());
        linha["sx_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["sx_func"].ToString());
        linha["tel_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["tel_func"].ToString());
        linha["email_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["email_func"].ToString());
        linha["residencia_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["residencia_func"].ToString());
        linha["bairro_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["bairro_func"].ToString());
        linha["uf_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["uf_func"].ToString());
        linha["cid_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["cid_func"].ToString());
        linha["img_func"] = listaFunc.Table.Rows[i]["img_func"].ToString();

        uncryptedTable.Rows.Add(linha);
      };

      DataView funcionarios = new DataView(uncryptedTable);

      string newPassword = Membership.GeneratePassword(12,1);

      sqlUpdateLogin.UpdateParameters["newpassword"].DefaultValue = Crypto.Encrypt(newPassword.ToString());
      sqlUpdateLogin.UpdateParameters["func"].DefaultValue = funcionarios.Table.Rows[0]["id_func"].ToString();

      string destinatario = funcionarios.Table.Rows[0]["email_func"].ToString();
      string nome = funcionarios.Table.Rows[0]["nome_func"].ToString();
      string login = funcionarios.Table.Rows[0]["email_func"].ToString();
      string senha = newPassword.ToString();


      Email.sendForgotPass(destinatario, nome, login, senha);

      sqlUpdateLogin.Update();
    }
}
