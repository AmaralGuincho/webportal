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
      }
    }
  }

  protected void updateFuncionario(object sender, EventArgs e){
    sqlFuncionario.UpdateParameters["user"].DefaultValue = Session["log"].ToString();
    sqlFuncionario.UpdateParameters["nomeFunc"].DefaultValue = nomeFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["sobrenomeFunc"].DefaultValue = sobrenomeFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["cepFunc"].DefaultValue = cepFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["cpfFunc"].DefaultValue = cpfFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["telFunc"].DefaultValue = telFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["emailFunc"].DefaultValue = emailFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["residenciaFunc"].DefaultValue = residenciaFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["bairroFunc"].DefaultValue = bairroFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["cidadeFunc"].DefaultValue = cidadeFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["ufFunc"].DefaultValue = ufFunc.Text.ToString();
    sqlFuncionario.UpdateParameters["idCargo"].DefaultValue = cargoFunc.SelectedValue;
    sqlFuncionario.UpdateParameters["sxFunc"].DefaultValue = sexoFunc.SelectedValue;

    if(dtNascFunc.Text.ToString() != String.Empty){
      sqlFuncionario.UpdateParameters["dtnascFunc"].DefaultValue =
      Convert.ToDateTime(dtNascFunc.Text).ToString("yyyy-MM-dd");
    }else{
      sqlFuncionario.UpdateParameters["dtnascFunc"].DefaultValue = null;
    }
    if(contratacaoFunc.Text.ToString() != String.Empty){
      sqlFuncionario.UpdateParameters["dtcontFunc"].DefaultValue =
      Convert.ToDateTime(contratacaoFunc.Text).ToString("yyyy-MM-dd");
    }else{
      sqlFuncionario.UpdateParameters["dtcontFunc"].DefaultValue = null;
    }

    // Solicitando Alteração ao Servidor
    sqlFuncionario.Update();
    Response.Redirect("home.aspx");
  }

  protected void changePassword(object sender, EventArgs e){
    try{
      sqlChangePassword.Update();
      // novaSenha.Text = String.Empty;
      Response.Write("<script>alert('Senha Alterada!')</script>");
    }
    catch(Exception ex){}
  }
}
