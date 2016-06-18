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
      //Importing `ordem de Servico` FROM database
      DataView osAberta;
      osAberta = (DataView)lattestOs.Select(DataSourceSelectArguments.Empty);

      //Checking if DataView is Empty
      if(osAberta.Table.Rows.Count > 0){
        //Getting DataView Info into html file
        osID1.InnerHtml = "#" + osAberta.Table.Rows[0]["id_os"].ToString();

        if(osAberta.Table.Rows.Count > 1){
          //Getting DataView Info into html file
          osID2.InnerHtml = "#" + osAberta.Table.Rows[1]["id_os"].ToString();

          if(osAberta.Table.Rows.Count > 2){
            //Getting DataView Info into html file
            osID3.InnerHtml = "#" + osAberta.Table.Rows[2]["id_os"].ToString();
          }else{
            osID3.InnerHtml = "--";
          }
        }else{
          osID2.InnerHtml = "--";

          osID3.InnerHtml = "--";
        }
      }else{
        osID1.InnerHtml = "--";

        osID2.InnerHtml = "--";

        osID3.InnerHtml = "--";
      }

      DataView recentServicoOs = (DataView)lattestServicoOs.Select(DataSourceSelectArguments.Empty);
      if (recentServicoOs.Table.Rows.Count > 0) {
        codigoServico1.InnerHtml = recentServicoOs.Table.Rows[0]["tipo_servico"].ToString();
        codigoOS1.InnerHtml = "# " + recentServicoOs.Table.Rows[0]["id_os"].ToString();
      }
      if (recentServicoOs.Table.Rows.Count > 1) {
        codigoServico2.InnerHtml = recentServicoOs.Table.Rows[1]["tipo_servico"].ToString();
        codigoOS2.InnerHtml = "# " + recentServicoOs.Table.Rows[1]["id_os"].ToString();
      }
      if (recentServicoOs.Table.Rows.Count > 2) {
        codigoServico3.InnerHtml = recentServicoOs.Table.Rows[2]["tipo_servico"].ToString();
        codigoOS3.InnerHtml = "# " + recentServicoOs.Table.Rows[2]["id_os"].ToString();
      }


    }

    protected void cadastrarCliente(object sender, EventArgs e){
      //Converting date to international format
      cliente.InsertParameters["dataNasc"].DefaultValue =
        Convert.ToDateTime(dtNascCli.Text).ToString("yyyy/MM/dd");

      cliente.Insert();
      //Recording id from insertion
      DataView lastInsertedCli =
        (DataView)cliente.Select(DataSourceSelectArguments.Empty);

      Session["cli"] = lastInsertedCli.Table.Rows[0]["MAX(id_cli)"].ToString();
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
          Session["cli"] = cliente.Table.Rows[0]["id_cli"].ToString();
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

        DataView lastVeiculo =
          (DataView)veiculo.Select(DataSourceSelectArguments.Empty);

        Session["veiculo"] = lastVeiculo.Table.Rows[0]["MAX(id_veiculo)"].ToString();
      }else{
        Response.Write("<script>alert('Cadastre o cliente primeiro!');</script>");
      }
      }catch(Exception ex){}
    }

    protected void newViagem(object sender, EventArgs e){
       try{
         viagem.Insert();

         DataView lastViagem =
           (DataView)viagem.Select(DataSourceSelectArguments.Empty);

         Session["viagem"] = lastViagem.Table.Rows[0]["MAX(id_viagem)"].ToString();

       }catch(Exception ex){}
    }

    protected void newSinistro(object sender, EventArgs e){
      try{
        sinistro.Insert();
        DataView lastSinistro =
          (DataView)sinistro.Select(DataSourceSelectArguments.Empty);

        Session["sinistro"] = lastSinistro.Table.Rows[0]["MAX(id_sinistro)"].ToString();

      }catch(Exception ex){}
    }

    protected void newOs(object sender, EventArgs e){
      try{
      os.InsertParameters["dtab"].DefaultValue =
      DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

      os.Insert();
      DataView lastOs =
        (DataView)os.Select(DataSourceSelectArguments.Empty);

      Session["os"] = lastOs.Table.Rows[0]["MAX(id_os)"].ToString();

      viagemServico.Insert();

      servicoOs.Insert();
      Response.Redirect("~/pt_br/app/home.aspx");
    }catch(Exception ex){}
    }

    protected void showOs(object sender,EventArgs e){
      DataView osAberta;
      osAberta = (DataView)lattestOs.Select(DataSourceSelectArguments.Empty);

      consultaOS.SelectParameters["consultaOs"].DefaultValue =
      osAberta.Table.Rows[0]["id_os"].ToString();

      DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);
      // Cliente
      nomeCliConsulta.Text = consulta.Table.Rows[0]["nome_cli"].ToString();
      sobrenomeCliConsulta.Text = consulta.Table.Rows[0]["sobrenome_cli"].ToString();
      cpfCliConsulta.Text = consulta.Table.Rows[0]["cpf_cli"].ToString();
      emailCliConsulta.Text = consulta.Table.Rows[0]["email_cli"].ToString();
      sexoCliConsulta.SelectedValue = consulta.Table.Rows[0]["sx_cli"].ToString();
      telefoneCliConsulta.Text = consulta.Table.Rows[0]["telefone_cli"].ToString();
      dtNascCliConsulta.Text = Convert.ToDateTime(consulta.Table.Rows[0]["dtnasc_cli"].ToString()).ToString("dd/MM/yyyy");
      bairroCliConsulta.Text = consulta.Table.Rows[0]["bairro_cli"].ToString();
      cidadeCliConsulta.Text = consulta.Table.Rows[0]["cid_cli"].ToString();
      ufCliConsulta.Text = consulta.Table.Rows[0]["uf_cli"].ToString();
      residenciaCliConsulta.Text = consulta.Table.Rows[0]["endereco_cli"].ToString();

      // Veículo
      fabricanteVeiculoConsulta.Text = consulta.Table.Rows[0]["fabricante_veiculo"].ToString();
      modeloVeiculoConsulta.Text = consulta.Table.Rows[0]["modelo_veiculo"].ToString();
      anoVeiculoConsulta.Text = consulta.Table.Rows[0]["ano_veiculo"].ToString();
      placaVeiculoConsulta.Text = (consulta.Table.Rows[0]["placa_veiculo"].ToString()).ToUpper();
      corVeiculoConsulta.Text = consulta.Table.Rows[0]["cor_veiculo"].ToString();

      bairroViagemDestinoConsulta.Text = consulta.Table.Rows[0]["bairro_destino_viagem"].ToString();
      bairroPartidaViagemConsulta.Text = consulta.Table.Rows[0]["bairro_partida_viagem"].ToString();
      enderecoViagemDestinoConsulta.Text = consulta.Table.Rows[0]["endereco_destino_viagem"].ToString();
      enderecoPartidaViagemConsulta.Text = consulta.Table.Rows[0]["endereco_partida_viagem"].ToString();
      cidadeViagemDestinoConsulta.Text = consulta.Table.Rows[0]["cidade_destino_viagem"].ToString();
      cidadePartidaViagemConsulta.Text = consulta.Table.Rows[0]["cidade_partida_viagem"].ToString();
      ufViagemDestinoConsulta.Text = consulta.Table.Rows[0]["uf_destino_viagem"].ToString();
      ufPartidaViagemConsulta.Text = consulta.Table.Rows[0]["uf_partida_viagem"].ToString();
      obsViagemConsulta.Text = consulta.Table.Rows[0]["obs_viagem"].ToString();
    }
}
