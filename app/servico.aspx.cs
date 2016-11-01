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
  CsharpCryptography Crypto = new CsharpCryptography("ETEP");
    protected void Page_Load(object sender, EventArgs e)
    {

      if (! IsPostBack)
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
        codigoServico1.InnerHtml = Crypto.Decrypt(recentServicoOs.Table.Rows[0]["tipo_servico"].ToString());
        codigoOS1.InnerHtml = "# " + recentServicoOs.Table.Rows[0]["id_os"].ToString();
      }
      if (recentServicoOs.Table.Rows.Count > 1) {
        codigoServico2.InnerHtml = Crypto.Decrypt(recentServicoOs.Table.Rows[1]["tipo_servico"].ToString());
        codigoOS2.InnerHtml = "# " + recentServicoOs.Table.Rows[1]["id_os"].ToString();
      }
      if (recentServicoOs.Table.Rows.Count > 2) {
        codigoServico3.InnerHtml = Crypto.Decrypt(recentServicoOs.Table.Rows[2]["tipo_servico"].ToString());
        codigoOS3.InnerHtml = "# " + recentServicoOs.Table.Rows[2]["id_os"].ToString();
      }
      //loading dropDown lists
      loadDropDownOs();
      loadDropDownPesq();

      }
    }

    public void loadDropDownOs(){
      DataView ddlSeguro = (DataView)seguro.Select(DataSourceSelectArguments.Empty);
      DataView ddlServico = (DataView)servico.Select(DataSourceSelectArguments.Empty);
      DataView ddlMot = (DataView)allMotorista.Select(DataSourceSelectArguments.Empty);
      DataView ddlFrota = (DataView)allFrota.Select(DataSourceSelectArguments.Empty);

      //Seguro
      selectSeguroConsulta.Items.Clear();
      for(int i = 0; i < ddlSeguro.Table.Rows.Count; i++){
        selectSeguroConsulta.Items.Add(new ListItem(Crypto.Decrypt(ddlSeguro.Table.Rows[i]["nome_seguro"].ToString()),
        ddlSeguro.Table.Rows[i]["id_seguro"].ToString()));
      }

      //Servico
      selectServicoConsulta.Items.Clear();
      for(int i = 0; i < ddlServico.Table.Rows.Count; i++)
      {
        selectServicoConsulta.Items.Add(new ListItem(Crypto.Decrypt(ddlServico.Table.Rows[i]["tipo_servico"].ToString()),
        ddlServico.Table.Rows[i]["id_servico"].ToString()));
      }

      //Motorista
      selectMotoristaConsulta.Items.Clear();
      for(int i = 0; i < ddlMot.Table.Rows.Count; i++)
      {
        selectMotoristaConsulta.Items.Add(new ListItem(Crypto.Decrypt(ddlMot.Table.Rows[i]["nome_func"].ToString()),
        ddlMot.Table.Rows[i]["id_mot"].ToString()));
      }

      //Viatura (Frota)
      selectFrotaConsulta.Items.Clear();
      for(int i = 0; i < ddlFrota.Table.Rows.Count; i++)
      {
        selectFrotaConsulta.Items.Add(new ListItem(Crypto.Decrypt(ddlFrota.Table.Rows[i]["nome_frota"].ToString()),
        ddlFrota.Table.Rows[i]["id_frota"].ToString()));
      }

    }

    public void loadDropDownPesq(){
      DataView ddlSeguro = (DataView)seguro.Select(DataSourceSelectArguments.Empty);
      DataView ddlServico = (DataView)servico.Select(DataSourceSelectArguments.Empty);
      DataView ddlMot = (DataView)allMotorista.Select(DataSourceSelectArguments.Empty);
      DataView ddlFrota = (DataView)allFrota.Select(DataSourceSelectArguments.Empty);

      //Seguro
      selectSeguro.Items.Clear();
      for(int i = 0; i < ddlSeguro.Table.Rows.Count; i++){
        selectSeguro.Items.Add(new ListItem(Crypto.Decrypt(ddlSeguro.Table.Rows[i]["nome_seguro"].ToString()),
        ddlSeguro.Table.Rows[i]["id_seguro"].ToString()));
      }

      //Servico
      selectServico.Items.Clear();
      for(int i = 0; i < ddlServico.Table.Rows.Count; i++)
      {
        selectServico.Items.Add(new ListItem(Crypto.Decrypt(ddlServico.Table.Rows[i]["tipo_servico"].ToString()),
        ddlServico.Table.Rows[i]["id_servico"].ToString()));
      }

      //Motorista
      selectMotorista.Items.Clear();
      for(int i = 0; i < ddlMot.Table.Rows.Count; i++)
      {
        selectMotorista.Items.Add(new ListItem(Crypto.Decrypt(ddlMot.Table.Rows[i]["nome_func"].ToString()),
        ddlMot.Table.Rows[i]["id_mot"].ToString()));
      }

      //Viatura (Frota)
      selectFrota.Items.Clear();
      for(int i = 0; i < ddlFrota.Table.Rows.Count; i++)
      {
        selectFrota.Items.Add(new ListItem(Crypto.Decrypt(ddlFrota.Table.Rows[i]["nome_frota"].ToString()),
        ddlFrota.Table.Rows[i]["id_frota"].ToString()));
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

        //General Response
        Response.Redirect("servico.aspx");
      }
      catch(Exception ex){
        Response.Write("<script>alert('Ocorreu um erro');</script>");
      }
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


    protected void abrirOs4(object sender, EventArgs e){
      closedOS(0);
    }

    protected void abrirOs5(object sender, EventArgs e){
      closedOS(1);
    }

    protected void abrirOs6(object sender, EventArgs e){
      closedOS(2);
    }

    public void closedOS(int numeroOrdem)
    {
        Session["pesqOS"] = true;

        DataView osFechada;
        osFechada = (DataView)lattestServicoOs.Select(DataSourceSelectArguments.Empty);
        consultaOS.SelectParameters["idConsulta"].DefaultValue =
         osFechada.Table.Rows[numeroOrdem]["id_os"].ToString();

        //Carreganndo os Dados de consulta
        DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);

        //Preenchendo os campos

        //Condições de Abertura
        string nomeFuncionario = Crypto.Decrypt(consulta.Table.Rows[0]["nome_func"].ToString());
        string sobrenomeFuncionario = Crypto.Decrypt(consulta.Table.Rows[0]["sobrenome_func"].ToString());
        abertoPor.Text = (nomeFuncionario + " " + sobrenomeFuncionario);

        dataAbertura.Text = Convert.ToDateTime(consulta.Table.Rows[0]["dtab_os"]).ToString();

        //Cliente
        nomeCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["nome_cli"].ToString());
        sobrenomeCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["sobrenome_cli"].ToString());
        cpfCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cpf_cli"].ToString());
        telefoneCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["telefone_cli"].ToString());

        //Veículo
        fabricanteVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["fabricante_veiculo"].ToString());
        modeloVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["modelo_veiculo"].ToString());
        anoVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["ano_veiculo"].ToString());
        placaVeiculoConsulta.Text = (Crypto.Decrypt(consulta.Table.Rows[0]["placa_veiculo"].ToString())).ToUpper();
        corVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cor_veiculo"].ToString());

        //Viagem
        bairroViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["bairro_destino_viagem"].ToString());
        bairroViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["bairro_partida_viagem"].ToString());
        enderecoViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["endereco_destino_viagem"].ToString());
        enderecoViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["endereco_partida_viagem"].ToString());
        cidadeViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cidade_destino_viagem"].ToString());
        cidadeViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cidade_partida_viagem"].ToString());
        ufViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["uf_destino_viagem"].ToString());
        ufViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["uf_partida_viagem"].ToString());
        obsViagemConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["obs_viagem"].ToString());

        //StatusOS
        statusOsConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["status_os"].ToString());

        //Sinistro
        numeroSinistroConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["sinistro"].ToString());

        //Agendamento
        if (consulta.Table.Rows[0]["agendamento_os"].ToString() != String.Empty)
        {
            agendamentoOSConsulta.Text = Crypto.Decrypt(Convert.ToDateTime(consulta.Table.Rows[0]["agendamento_os"]).ToString());
        }
        else
        {
            agendamentoOSConsulta.Text = "Sem Agendamento";
        }
    }

    public void pesqOS(int numeroOrdem){
      try{
        Session["pesqOS"] = true;

        //importando o id da os no qual o botão foi pressionado
        DataView osAberta;
        osAberta = (DataView)lattestOs.Select(DataSourceSelectArguments.Empty);

        //seção com o id_OS para realizar a consulta
        Session["currentOs"] = osAberta.Table.Rows[numeroOrdem]["id_os"].ToString();

        //Usando o id da os pressionada como Paremetro de pesquisa
        consultaOS.SelectParameters["idConsulta"].DefaultValue =
         osAberta.Table.Rows[numeroOrdem]["id_os"].ToString();

        //Carreganndo os Dados de consulta
        DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);

        //Preenchendo os campos

        //Condições de Abertura
        string nomeFuncionario = Crypto.Decrypt(consulta.Table.Rows[0]["nome_func"].ToString());
        string sobrenomeFuncionario = Crypto.Decrypt(consulta.Table.Rows[0]["sobrenome_func"].ToString());
        abertoPor.Text = (nomeFuncionario + " " + sobrenomeFuncionario);

        dataAbertura.Text = Crypto.Decrypt(Convert.ToDateTime(consulta.Table.Rows[0]["dtab_os"]).ToString());

        //Cliente
        nomeCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["nome_cli"].ToString());
        sobrenomeCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["sobrenome_cli"].ToString());
        cpfCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cpf_cli"].ToString());
        telefoneCliConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["telefone_cli"].ToString());

        //Veículo
        fabricanteVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["fabricante_veiculo"].ToString());
        modeloVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["modelo_veiculo"].ToString());
        anoVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["ano_veiculo"].ToString());
        placaVeiculoConsulta.Text = (Crypto.Decrypt(consulta.Table.Rows[0]["placa_veiculo"].ToString())).ToUpper();
        corVeiculoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cor_veiculo"].ToString());


        //Viagem
        bairroViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["bairro_destino_viagem"].ToString());
        bairroViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["bairro_partida_viagem"].ToString());
        enderecoViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["endereco_destino_viagem"].ToString());
        enderecoViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["endereco_partida_viagem"].ToString());
        cidadeViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cidade_destino_viagem"].ToString());
        cidadeViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["cidade_partida_viagem"].ToString());
        ufViagemDestinoConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["uf_destino_viagem"].ToString());
        ufViagemPartidaConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["uf_partida_viagem"].ToString());
        obsViagemConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["obs_viagem"].ToString());

        //Sinistro
        numeroSinistroConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["sinistro"].ToString());

        //Agendamento
        if(consulta.Table.Rows[0]["agendamento_os"].ToString() != String.Empty){
          agendamentoOSConsulta.Text = Crypto.Decrypt(Convert.ToDateTime(consulta.Table.Rows[0]["agendamento_os"]).ToString());
        }else{
          agendamentoOSConsulta.Text = "Sem Agendamento";
        }

        //StatusOS
        statusOsConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["status_os"].ToString());

      }catch(Exception ex){
        Response.Write("<script>alert('Ocorreu um erro');</script>");
      }
    }

    protected void showOs(object sender,EventArgs e){
      // DataView osAberta;
      // osAberta = (DataView)lattestOs.Select(DataSourceSelectArguments.Empty);
      //
      // consultaOS.SelectParameters["consultaOs"].DefaultValue =
      // osAberta.Table.Rows[0]["id_os"].ToString();
    }

    protected void updateCliente(){
      //Buscando o id da OS
      var idOS = Session["currentOs"].ToString();

      //Buscando a OS
      consultaOS.SelectParameters["idConsulta"].DefaultValue = idOS;
      DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);

      //Realizando o `update` no cliente selecionado em `consultaOS`
      cliente.UpdateParameters["idCli"].DefaultValue =
        consulta.Table.Rows[0]["id_cli"].ToString();

      // Solicitando Alteração p/ o MySQL
      cliente.Update();
    }

    protected void updateVeiculo(){
      //Buscando o id da OS
      var idOS = Session["currentOs"].ToString();

      //Buscando a OS
      consultaOS.SelectParameters["idConsulta"].DefaultValue = idOS;
      DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);

      // Realizando o update no veículo selacionado em `consultaOS`
      veiculo.UpdateParameters["idVeiculo"].DefaultValue =
        consulta.Table.Rows[0]["id_veiculo"].ToString();

      // Solicitando Alteração p/ o MySQL
      veiculo.Update();
    }

    protected void updateViagem(){
      var idOS = Session["currentOs"].ToString();

      //Buscando a OS
      consultaOS.SelectParameters["idConsulta"].DefaultValue = idOS;
      DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);

      viagem.UpdateParameters["idViagem"].DefaultValue =
        consulta.Table.Rows[0]["id_viagem"].ToString();

      viagem.Update();
    }

    protected void updateSinistro(){
      //Buscando o id da OS
      var idOS = Session["currentOs"].ToString();

      //Buscando a OS
      consultaOS.SelectParameters["idConsulta"].DefaultValue = idOS;
      DataView consulta = (DataView)consultaOS.Select(DataSourceSelectArguments.Empty);

      // Realizando o update no veículo selacionado em `consultaOS`
      sinistro.UpdateParameters["idSinistro"].DefaultValue =
        consulta.Table.Rows[0]["id_sinistro"].ToString();

      // Solicitando Alteração p/ o MySQL
      sinistro.Update();
    }

    protected void updateOrdemServico(){
      //Buscando o id da OS
      var idOS = Session["currentOs"].ToString();

      // Realizando o update no veículo selacionado em `consultaOS`
      os.UpdateParameters["idOS"].DefaultValue = idOS;
      if(agendamentoOS.Text != String.Empty){
        DateTime agendamento = Convert.ToDateTime(agendamentoOSConsulta.Text);
        os.InsertParameters["agendamentoOs"].DefaultValue = agendamento.ToString("yyyy-MM-dd HH:mm");
      }else{
        os.InsertParameters["agendamentoOs"].DefaultValue = String.Empty;
      }

      // Solicitando Alteração p/ o MySQL
      os.Update();
    }

    protected void updateServico(){
      //Buscando o id da OS
      var idOS = Session["currentOs"].ToString();

      // Realizando o update no veículo selacionado em `consultaOS`
      servicoOs.UpdateParameters["idOS"].DefaultValue = idOS;

      servicoOs.Update();
    }

    protected void updateOs(object sender,EventArgs e){
      try{
        updateCliente();
        updateVeiculo();
        updateViagem();
        updateSinistro();
        updateOrdemServico();
        updateServico();
        Response.Redirect("servico.aspx");
      }catch(Exception ex){
        Response.Write("<script>alert('Ocorreu um erro');</script>");
      }
    }
}
