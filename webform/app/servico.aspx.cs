using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class app_servico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Session["pesqOS"] = false;

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

    protected void newOs(object sender, EventArgs e){
      try{
        // Inserindo o cliente
        cliente.Insert();
        //obtendo o id do cliente inserido
        DataView ultimoCliente =
        (DataView)cliente.Select(DataSourceSelectArguments.Empty);

        string ultimoclienteID = ultimoCliente.Table.Rows[0]["MAX(id_cli)"].ToString();

        // inserindo o veículo
        veiculo.InsertParameters["cliente"].DefaultValue = ultimoclienteID;
        veiculo.Insert();

        DataView ultimoVeiculo =
        (DataView)veiculo.Select(DataSourceSelectArguments.Empty);

        string ultimoVeiculoID = ultimoVeiculo.Table.Rows[0]["MAX(id_veiculo)"].ToString();

        //inserindo viagem
        viagem.Insert();

        DataView ultimaViagem =
        (DataView)viagem.Select(DataSourceSelectArguments.Empty);

        string ultimaViagemID = ultimaViagem.Table.Rows[0]["MAX(id_viagem)"].ToString();

        //inserindo o sinistro
        sinistro.Insert();

        DataView ultimoSinistro =
        (DataView)sinistro.Select(DataSourceSelectArguments.Empty);

        string ultimoSinistroID = ultimoSinistro.Table.Rows[0]["MAX(id_sinistro)"].ToString();


        //inserindo a Ordem de Serviço
        DateTime agora = DateTime.Now;

        if(agendamentoOS.Text != String.Empty){
          DateTime agendamento = Convert.ToDateTime(agendamentoOS.Text);
          os.InsertParameters["agendamentoOs"].DefaultValue = agendamento.ToString("yyyy-MM-dd HH:mm");
        }else{
          os.InsertParameters["agendamentoOs"].DefaultValue = String.Empty;
        }

        os.InsertParameters["dtab"].DefaultValue = agora.ToString("yyyy-MM-dd HH:mm");
        os.InsertParameters["idVeiculo"].DefaultValue = ultimoVeiculoID;
        os.Insert();

        DataView ultimoOs =
        (DataView)os.Select(DataSourceSelectArguments.Empty);

        string osID = ultimoOs.Table.Rows[0]["MAX(id_os)"].ToString();

        //Inserindo Viagem Servico
        viagemServico.InsertParameters["os"].DefaultValue = osID;
        viagemServico.InsertParameters["viagem"].DefaultValue = ultimaViagemID;
        viagemServico.Insert();

        //Inserindo ServicoOS
        servicoOs.InsertParameters["os"].DefaultValue = osID;
        servicoOs.InsertParameters["sinistro"].DefaultValue = ultimoSinistroID;
        servicoOs.Insert();

        //General Respose
        Response.Redirect("servico.aspx");
      }
      catch(Exception ex){}
    }

    protected void abrirOs1(object sender, EventArgs e){
      pesqOS(0);
    }

    protected void abrirOs2(object sender, EventArgs e){
      pesqOS(1);
    }

    protected void abrirOs3(object sender, EventArgs e){
      pesqOS(2);
    }

    public void pesqOS(int numeroOrdem){
      try{
        Session["pesqOS"] = true;

        //importando o id da os no qual o botão foi pressionado
        DataView osAberta;
        osAberta = (DataView)lattestOs.Select(DataSourceSelectArguments.Empty);

        //Usando o id da os pressionada como Paremetro de pesquisa
        consultaOS.SelectParameters["idConsulta"].DefaultValue =
         osAberta.Table.Rows[numeroOrdem]["id_os"].ToString();

        //Carreganndo os Dados de consulta
        DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);

        //Preenchendo os campos

        //Condições de Abertura
        string nomeFuncionario = consulta.Table.Rows[0]["nome_func"].ToString();
        string sobrenomeFuncionario = consulta.Table.Rows[0]["sobrenome_func"].ToString();
        abertoPor.Text = (nomeFuncionario + " " + sobrenomeFuncionario);

        dataAbertura.Text = Convert.ToDateTime(consulta.Table.Rows[0]["dtab_os"]).ToString();

        //Cliente
        nomeCliConsulta.Text = consulta.Table.Rows[0]["nome_cli"].ToString();
        sobrenomeCliConsulta.Text = consulta.Table.Rows[0]["sobrenome_cli"].ToString();
        cpfCliConsulta.Text = consulta.Table.Rows[0]["cpf_cli"].ToString();
        telefoneCliConsulta.Text = consulta.Table.Rows[0]["telefone_cli"].ToString();

        //Veículo
        fabricanteVeiculoConsulta.Text = consulta.Table.Rows[0]["fabricante_veiculo"].ToString();
        modeloVeiculoConsulta.Text = consulta.Table.Rows[0]["modelo_veiculo"].ToString();
        anoVeiculoConsulta.Text = consulta.Table.Rows[0]["ano_veiculo"].ToString();
        placaVeiculoConsulta.Text = (consulta.Table.Rows[0]["placa_veiculo"].ToString()).ToUpper();
        corVeiculoConsulta.Text = consulta.Table.Rows[0]["cor_veiculo"].ToString();

        //Servico
        selectServicoConsulta.SelectedIndex = Convert.ToInt32(consulta.Table.Rows[0]["id_servico"]) - 1;

        //Seguro
        selectSeguroConsulta.SelectedIndex = Convert.ToInt32(consulta.Table.Rows[0]["id_seguro"]) - 1;

        //Viagem
        bairroViagemDestinoConsulta.Text = consulta.Table.Rows[0]["bairro_destino_viagem"].ToString();
        bairroViagemPartidaConsulta.Text = consulta.Table.Rows[0]["bairro_partida_viagem"].ToString();
        enderecoViagemDestinoConsulta.Text = consulta.Table.Rows[0]["endereco_destino_viagem"].ToString();
        enderecoViagemPartidaConsulta.Text = consulta.Table.Rows[0]["endereco_partida_viagem"].ToString();
        cidadeViagemDestinoConsulta.Text = consulta.Table.Rows[0]["cidade_destino_viagem"].ToString();
        cidadeViagemPartidaConsulta.Text = consulta.Table.Rows[0]["cidade_partida_viagem"].ToString();
        ufViagemDestinoConsulta.Text = consulta.Table.Rows[0]["uf_destino_viagem"].ToString();
        ufViagemPartidaConsulta.Text = consulta.Table.Rows[0]["uf_partida_viagem"].ToString();
        obsViagemConsulta.Text = consulta.Table.Rows[0]["obs_viagem"].ToString();

        //Motorista
        selectMotoristaConsulta.SelectedIndex = Convert.ToInt32(consulta.Table.Rows[0]["id_mot"]) - 1;

        //Viatura (Frota)
        selectFrotaConsulta.SelectedIndex = Convert.ToInt32(consulta.Table.Rows[0]["id_frota"]) - 1;

        //Sinistro
        numeroSinistroConsulta.Text = consulta.Table.Rows[0]["sinistro"].ToString();

        //Agendamento
        if(consulta.Table.Rows[0]["agendamento_os"].ToString() != String.Empty){
          agendamentoOSConsulta.Text = Convert.ToDateTime(consulta.Table.Rows[0]["agendamento_os"]).ToString();
        }else{
          agendamentoOSConsulta.Text = "Sem Agendamento";
        }

        //StatusOS
        statusOsConsulta.Text = consulta.Table.Rows[0]["status_os"].ToString();

      }catch(Exception ex){}
    }

    protected void showOs(object sender,EventArgs e){
      // DataView osAberta;
      // osAberta = (DataView)lattestOs.Select(DataSourceSelectArguments.Empty);
      //
      // consultaOS.SelectParameters["consultaOs"].DefaultValue =
      // osAberta.Table.Rows[0]["id_os"].ToString();
      //
      //
    }
}
