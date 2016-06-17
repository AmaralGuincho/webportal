using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class pt_br_app_servico : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cadastrarCliente(object sender, EventArgs e){
      //Converting date to international format
      cliente.InsertParameters["dataNasc"].DefaultValue =
        Convert.ToDateTime(dtNascCli.Text).ToString("yyyy/MM/dd");

      cliente.Insert();
      //Recording id from insertion
      DataView lastInsertedCli =
        (DataView)cliente.Select(DataSourceSelectArguments.Empty);

      Session["cli"] = Convert.ToInt32(lastInsertedCli.Table.Rows[0]["MAX(id_cli)"].ToString());
    }
    protected void pesquisarCliente(object sender, EventArgs e){
      try{
        DataView cliente = (DataView)clientePesq.Select(DataSourceSelectArguments.Empty);

        if(cliente.Table.Rows.Count > 0){
          nomeCliPesq.Text = cliente.Table.Rows[0]["nome_cli"].ToString();
          SobrenomeCliPesq.Text = cliente.Table.Rows[0]["sobrenome_cli"].ToString();
          dtNascCliPesq.Text = cliente.Table.Rows[0]["dtnasc_cli"].ToString();
          cpfCliPesq.Text = cliente.Table.Rows[0]["cpf_cli"].ToString();
          // sexo
          telCliPesq.Text = cliente.Table.Rows[0]["telefone_cli"].ToString();
          emailCliPesq.Text = cliente.Table.Rows[0]["cep_cli"].ToString();
          bairroCliPesq.Text = cliente.Table.Rows[0]["bairro_cli"].ToString();
          cidadeCliPesq.Text = cliente.Table.Rows[0]["cid_cli"].ToString();
          ufCliPesq.Text = cliente.Table.Rows[0]["uf_cli"].ToString();
          residenciaCliPesq.Text = cliente.Table.Rows[0]["endereco_cli"].ToString();
          //Setting Id cli as current cli
          Session["cli"] = Convert.ToInt32(cliente.Table.Rows[0]["id_cli"].ToString());
          pesqCliente.Text = String.Empty;
        }else{
          Response.Write("<script>alert('Parece que esse cliente não foi registrado')</script>");
          pesqCliente.Text = String.Empty;
        }
      }
      catch(Exception ex){}
    }

    protected void novoVeiculo(object sender, EventArgs e){
      //Setting Current cli as car owner
      try{
        if(!string.IsNullOrEmpty(Session["cli"] as string)){
        veiculo.InsertParameters["cliente"].DefaultValue = Session["cli"].ToString();
        veiculo.Insert();
      }else{
        Response.Write("<script>alert('Cadastre o cliente primeiro!');</script>");
        modeloVeiculo.Text = String.Empty;
        placaVeiculo.Text = String.Empty;
        anoVeiculo.Text = String.Empty;
        fabricanteVeiculo.Text = String.Empty;
        corVeiculo.Text = String.Empty;
      }
      }catch(Exception ex){}
    }

    protected void newViagem(object sender, EventArgs e){
      try{
        viagem.Insert();
      }catch(Exception ex){}
    }

    protected void newSinistro(object sender, EventArgs e){
      //try{
        sinistro.Insert();
        DataView lastSinistro =
          (DataView)sinistro.Select(DataSourceSelectArguments.Empty);

        Session["sinistro"] = Convert.ToInt32(lastSinistro.Table.Rows[0]["MAX(id_sinistro)"].ToString());

      //}catch(Exception ex){}
    }
}
