using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class app_settings : System.Web.UI.Page
{
  CsharpCryptography Crypto = new CsharpCryptography("ETEP");
  protected void Page_Load(object sender, EventArgs e)
  {
    if(!IsPostBack){
      if(Session["log"] != null){
        try{
          DataView funcionario = (DataView)sqlFuncionario.Select(DataSourceSelectArguments.Empty);
          // Preenchendo..
          nomeFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["nome_func"].ToString());
          sobrenomeFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["sobrenome_func"].ToString());
          cpfFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["cpf_func"].ToString());
          telFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["tel_func"].ToString());
          emailFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["email_func"].ToString());
          cepFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["cep_func"].ToString());
          bairroFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["bairro_func"].ToString());
          cidadeFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["cid_func"].ToString());
          ufFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["uf_func"].ToString());
          residenciaFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["residencia_func"].ToString());

          // DateTime
          //Problemas com Data ("dd/MM/yyyy")
          if (funcionario.Table.Rows[0]["dtnasc_func"].ToString() != String.Empty) {
            dtNascFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["dtnasc_func"].ToString());
          }else{
            dtNascFunc.Text = String.Empty;
          }

          if (funcionario.Table.Rows[0]["dtcont_func"].ToString() != String.Empty) {
            contratacaoFunc.Text = Crypto.Decrypt(funcionario.Table.Rows[0]["dtcont_func"].ToString());
          }else{
            contratacaoFunc.Text = String.Empty;
          }
          // DropDown
          sexoFunc.SelectedValue = Crypto.Decrypt(funcionario.Table.Rows[0]["sx_func"].ToString());
          cargoFunc.SelectedValue = Crypto.Decrypt(funcionario.Table.Rows[0]["residencia_func"].ToString());

        }catch(Exception ex){}
      }
    }
  }

  protected void updateFuncionario(object sender, EventArgs e){
    try{
      sqlFuncionario.UpdateParameters["user"].DefaultValue = Session["log"].ToString();
      sqlFuncionario.UpdateParameters["nomeFunc"].DefaultValue = Crypto.Encrypt(nomeFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["sobrenomeFunc"].DefaultValue = Crypto.Encrypt(sobrenomeFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["cepFunc"].DefaultValue = Crypto.Encrypt(cepFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["cpfFunc"].DefaultValue = Crypto.Encrypt(cpfFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["telFunc"].DefaultValue = Crypto.Encrypt(telFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["emailFunc"].DefaultValue = Crypto.Encrypt(emailFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["residenciaFunc"].DefaultValue = Crypto.Encrypt(residenciaFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["bairroFunc"].DefaultValue = Crypto.Encrypt(bairroFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["cidadeFunc"].DefaultValue = Crypto.Encrypt(cidadeFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["ufFunc"].DefaultValue = Crypto.Encrypt(ufFunc.Text.ToString());
      sqlFuncionario.UpdateParameters["idCargo"].DefaultValue = Crypto.Encrypt(cargoFunc.SelectedValue);
      sqlFuncionario.UpdateParameters["sxFunc"].DefaultValue = Crypto.Encrypt(sexoFunc.SelectedValue);

      if(dtNascFunc.Text.ToString() != String.Empty){
        sqlFuncionario.UpdateParameters["dtnascFunc"].DefaultValue =
        Crypto.Encrypt(Convert.ToDateTime(dtNascFunc.Text).ToString("yyyy-MM-dd"));
      }else{
        sqlFuncionario.UpdateParameters["dtnascFunc"].DefaultValue = null;
      }
      if(contratacaoFunc.Text.ToString() != String.Empty){
        sqlFuncionario.UpdateParameters["dtcontFunc"].DefaultValue =
        Crypto.Encrypt(Convert.ToDateTime(contratacaoFunc.Text).ToString("yyyy-MM-dd"));
      }else{
        sqlFuncionario.UpdateParameters["dtcontFunc"].DefaultValue = null;
      }

      // Solicitando Alteração ao Servidor
      sqlFuncionario.Update();

      // AUDITORIA
      // Gravando Ação no `userlog`
      string curretUser = Session["log"].ToString();
      string acao = "Update Funcionario";
      // Transformando a data no padrão internacional
      string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

      userLog.InsertParameters["funcionario"].DefaultValue = (curretUser);
      userLog.InsertParameters["acao"].DefaultValue = Crypto.Encrypt(acao);
      userLog.InsertParameters["time"].DefaultValue = Crypto.Encrypt(currentDate);

      // Inserindo as informações
      userLog.Insert();

      Response.Redirect("home.aspx");
    }
  catch(Exception ex){}
  }

  protected void changePassword(object sender, EventArgs e){
    try{
      // Getting New pass from UI
      string newPass = novaSenhaASP.Text;
      // Encrypting new pass
      sqlChangePassword.UpdateParameters["PASSWORD"].DefaultValue =
      Crypto.Encrypt(newPass);
      // updating Query
      sqlChangePassword.Update();
      novaSenhaASP.Text = String.Empty;
      Response.Write("<script>alert('Senha Alterada')</script>");

      // AUDITORIA
      // Gravando Ação no `userlog`
      string curretUser = Session["log"].ToString();
      string acao = "Update Password";
      // Transformando a data no padrão internacional
      string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

      userLog.InsertParameters["funcionario"].DefaultValue = (curretUser);
      userLog.InsertParameters["acao"].DefaultValue = Crypto.Encrypt(acao);
      userLog.InsertParameters["time"].DefaultValue = Crypto.Encrypt(currentDate);

      // Inserindo as informações
      userLog.Insert();

    }catch(Exception ex){}
  }
}
