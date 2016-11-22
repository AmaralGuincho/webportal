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
      if (! IsPostBack){

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

      // Recently Closed OS's
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

    public void insertCliente(){
      // Defining cliente's Parametters
      cliente.InsertParameters["nome"].DefaultValue = Crypto.Encrypt(nomeCli.Text.ToString());
      cliente.InsertParameters["sobrenome"].DefaultValue = Crypto.Encrypt(SobrenomeCli.Text.ToString());
      cliente.InsertParameters["cpf"].DefaultValue = Crypto.Encrypt(cpfCli.Text.ToString());
      cliente.InsertParameters["telefone"].DefaultValue = Crypto.Encrypt(telCli.Text.ToString());
      // Inserting Cliente
      cliente.Insert();
    }

    public void insertVeiculo(string ultimoCliente){
      // Defining veiculo's Parametters
      veiculo.InsertParameters["cliente"].DefaultValue = ultimoCliente;
      veiculo.InsertParameters["fabricante"].DefaultValue = Crypto.Encrypt(fabricanteVeiculo.Text.ToString());
      veiculo.InsertParameters["modelo"].DefaultValue = Crypto.Encrypt(modeloVeiculo.Text.ToString());
      veiculo.InsertParameters["placa"].DefaultValue = Crypto.Encrypt(placaVeiculo.Text.ToString());
      veiculo.InsertParameters["cor"].DefaultValue = Crypto.Encrypt(corVeiculo.Text.ToString());
      veiculo.InsertParameters["ano"].DefaultValue = Crypto.Encrypt(anoVeiculo.Text.ToString());
      // Inserting Veiculo
      veiculo.Insert();

    }

    public void insertViagem(){
      //Defining Viagem Parametters
      viagem.InsertParameters["bairroDestinoViagem"].DefaultValue = Crypto.Encrypt(bairroViagemDestino.Text.ToString());
      viagem.InsertParameters["bairroPartidaViagem"].DefaultValue = Crypto.Encrypt(bairroViagemPartida.Text.ToString());
      viagem.InsertParameters["enderecoDestinoViagem"].DefaultValue = Crypto.Encrypt(enderecoViagemDestino.Text.ToString());
      viagem.InsertParameters["enderecoPartidaViagem"].DefaultValue = Crypto.Encrypt(enderecoViagemPartida.Text.ToString());
      viagem.InsertParameters["cidadeDestinoViagem"].DefaultValue = Crypto.Encrypt(cidadeViagemDestino.Text.ToString());
      viagem.InsertParameters["cidadePartidaViagem"].DefaultValue = Crypto.Encrypt(cidadeViagemPartida.Text.ToString());
      viagem.InsertParameters["ufDestinoViagem"].DefaultValue = Crypto.Encrypt(ufViagemDestino.Text.ToString());
      viagem.InsertParameters["ufPartidaViagem"].DefaultValue = Crypto.Encrypt(ufViagemPartida.Text.ToString());
      viagem.InsertParameters["obsViagem"].DefaultValue = Crypto.Encrypt(obsViagem.Text.ToString());
      // Loading DropDown Lists itens on it
      viagem.InsertParameters["idMot"].DefaultValue = selectMotorista.SelectedValue.ToString();
      viagem.InsertParameters["idFrota"].DefaultValue = selectFrota.SelectedValue.ToString();
      // Inserting Viagem
      viagem.Insert();
    }

    public void insertSinistro(){
      //Defining Sinistro Parametters
      sinistro.InsertParameters["sinistro"].DefaultValue = Crypto.Encrypt(numeroSinistro.Text.ToString());
      // Inserting Sinistro
      sinistro.Insert();
    }


    protected void newOs(object sender, EventArgs e){
      try{
        // Inserting Cliente
        insertCliente();

        //Getting Last Client ID
        DataView ultimoClienteDv = (DataView)cliente.Select(DataSourceSelectArguments.Empty);
        string ultimoCliente = ultimoClienteDv.Table.Rows[0]["MAX(id_cli)"].ToString();

        // Inserting Veículo
        insertVeiculo(ultimoCliente);

        // Getting Last Veiculo ID
        DataView ultimoVeiculoDv = (DataView)veiculo.Select(DataSourceSelectArguments.Empty);
        string ultimoVeiculo = ultimoVeiculoDv.Table.Rows[0]["MAX(id_veiculo)"].ToString();

        // Inserting Viagem
        insertViagem();

        // Getting last Viagem ID
        DataView ultimaViagemDv = (DataView)viagem.Select(DataSourceSelectArguments.Empty);
        string ultimaViagem = ultimaViagemDv.Table.Rows[0]["MAX(id_viagem)"].ToString();

        // Inserting sinistro
        insertSinistro();

        // Getting last Sinistro ID
        DataView ultimoSinistroDv = (DataView)sinistro.Select(DataSourceSelectArguments.Empty);
        string ultimoSinistro = ultimoSinistroDv.Table.Rows[0]["MAX(id_sinistro)"].ToString();

        //Inserting OS
        // Getting Current Time
        DateTime now = DateTime.Now;
        // Checking if there is a schedule
        if(agendamentoOS.Text != String.Empty){
          DateTime agendamento = Convert.ToDateTime(agendamentoOS.Text);
          os.InsertParameters["agendamentoOs"].DefaultValue = Crypto.Encrypt(agendamento.ToString("yyyy-MM-dd HH:mm"));
        }else{
          os.InsertParameters["agendamentoOs"].DefaultValue = String.Empty;
        }
        // Defining other Parametters
        os.InsertParameters["dtab"].DefaultValue = Crypto.Encrypt(now.ToString("yyyy-MM-dd HH:mm"));
        os.InsertParameters["idVeiculo"].DefaultValue = ultimoVeiculo;
        os.InsertParameters["status"].DefaultValue = Crypto.Encrypt(statusOs.Text);
        os.Insert();

        // Getting Last OS ID
        DataView ultimoOsDv = (DataView)os.Select(DataSourceSelectArguments.Empty);
        string lastOS = ultimoOsDv.Table.Rows[0]["MAX(id_os)"].ToString();

        //Inserindo Viagem Servico
        viagemServico.InsertParameters["os"].DefaultValue = lastOS;
        viagemServico.InsertParameters["viagem"].DefaultValue = ultimaViagem;
        viagemServico.Insert();

        //Inserindo ServicoOS
        servicoOs.InsertParameters["os"].DefaultValue = lastOS;
        servicoOs.InsertParameters["sinistro"].DefaultValue = ultimoSinistro;
        servicoOs.InsertParameters["servico"].DefaultValue = selectServico.SelectedValue;
        servicoOs.InsertParameters["seguro"].DefaultValue = selectSeguro.SelectedValue;

        servicoOs.Insert();

        //General Response
        Response.Write("<script>alert('Ordem de Serviço Aberta com sucesso!');</script>");
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

        dataAbertura.Text = Convert.ToDateTime(Crypto.Decrypt(consulta.Table.Rows[0]["dtab_os"].ToString())).ToString("dd/MM/yyyy HH:mm");

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
        statusOsConsulta.Text = consulta.Table.Rows[0]["status_os"].ToString();

        //Sinistro
        numeroSinistroConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["sinistro"].ToString());

        //Agendamento
        if (consulta.Table.Rows[0]["agendamento_os"].ToString() == String.Empty){
            agendamentoOSConsulta.Text = Convert.ToDateTime(Crypto.Decrypt(consulta.Table.Rows[0]["agendamento_os"].ToString())).ToString("dd/MM/yyyy HH:mm");
        }
        else{
            agendamentoOSConsulta.Text = "Sem Agendamento";
        }
    }

    public void pesqOS(int numeroOrdem){
      // try{
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

        dataAbertura.Text = Convert.ToDateTime(Crypto.Decrypt(consulta.Table.Rows[0]["dtab_os"].ToString())).ToString("dd/MM/yyyy HH:mm");

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
          agendamentoOSConsulta.Text = Convert.ToDateTime(Crypto.Decrypt(consulta.Table.Rows[0]["agendamento_os"].ToString())).ToString("dd/MM/yyyy HH:mm");
        }else{
          agendamentoOSConsulta.Text = "Sem Agendamento";
        }

        //StatusOS
        statusOsConsulta.Text = Crypto.Decrypt(consulta.Table.Rows[0]["status_os"].ToString());

      // }catch(Exception ex){
        // Response.Write("<script>alert('Ocorreu um erro');</script>");
      // }
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

      // Definindo os Parametros de alteração
      cliente.UpdateParameters["nome"].DefaultValue = Crypto.Encrypt(nomeCliConsulta.Text.ToString());
      cliente.UpdateParameters["sobrenome"].DefaultValue = Crypto.Encrypt(sobrenomeCliConsulta.Text.ToString());
      cliente.UpdateParameters["cpf"].DefaultValue = Crypto.Encrypt(cpfCliConsulta.Text.ToString());
      cliente.UpdateParameters["telefone"].DefaultValue = Crypto.Encrypt(telefoneCliConsulta.Text.ToString());

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

      // Definindo os parametros de alteração
      veiculo.UpdateParameters["fabricante"].DefaultValue = Crypto.Encrypt(fabricanteVeiculoConsulta.Text.ToString());
      veiculo.UpdateParameters["modelo"].DefaultValue = Crypto.Encrypt(modeloVeiculoConsulta.Text.ToString());
      veiculo.UpdateParameters["placa"].DefaultValue = Crypto.Encrypt(placaVeiculoConsulta.Text.ToString());
      veiculo.UpdateParameters["cor"].DefaultValue = Crypto.Encrypt(corVeiculoConsulta.Text.ToString());
      veiculo.UpdateParameters["ano"].DefaultValue = Crypto.Encrypt(anoVeiculoConsulta.Text.ToString());

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

      // Definindo os parametros de alteração
      viagem.UpdateParameters["bairroDestinoViagem"].DefaultValue = Crypto.Encrypt(bairroViagemDestinoConsulta.Text.ToString());
      viagem.UpdateParameters["bairroPartidaViagem"].DefaultValue = Crypto.Encrypt(bairroViagemPartidaConsulta.Text.ToString());
      viagem.UpdateParameters["enderecoDestinoViagem"].DefaultValue = Crypto.Encrypt(enderecoViagemDestinoConsulta.Text.ToString());
      viagem.UpdateParameters["enderecoPartidaViagem"].DefaultValue = Crypto.Encrypt(enderecoViagemPartidaConsulta.Text.ToString());
      viagem.UpdateParameters["cidadeDestinoViagem"].DefaultValue = Crypto.Encrypt(cidadeViagemDestinoConsulta.Text.ToString());
      viagem.UpdateParameters["cidadePartidaViagem"].DefaultValue = Crypto.Encrypt(cidadeViagemPartidaConsulta.Text.ToString());
      viagem.UpdateParameters["ufDestinoViagem"].DefaultValue = Crypto.Encrypt(ufViagemDestinoConsulta.Text.ToString());
      viagem.UpdateParameters["ufPartidaViagem"].DefaultValue = Crypto.Encrypt(ufViagemPartidaConsulta.Text.ToString());
      viagem.UpdateParameters["obsViagem"].DefaultValue = Crypto.Encrypt(obsViagemConsulta.Text.ToString());
      // Carregando os Itens do DropDownList
      viagem.UpdateParameters["idMot"].DefaultValue = selectMotoristaConsulta.SelectedValue.ToString();
      viagem.UpdateParameters["idFrota"].DefaultValue = selectFrotaConsulta.SelectedValue.ToString();
      // Solicitando Alteração p/ o MySQL
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
      // Definindo os parametros de alteração
      sinistro.UpdateParameters["sinistro"].DefaultValue = Crypto.Encrypt(numeroSinistroConsulta.Text.ToString());
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
        os.UpdateParameters["agendamentoOs"].DefaultValue = agendamento.ToString("yyyy-MM-dd HH:mm");
      }else{
        os.UpdateParameters["agendamentoOs"].DefaultValue = String.Empty;
      }
      // Definindo os Parametros para alteração
      os.UpdateParameters["statusOs"].DefaultValue = Crypto.Encrypt(statusOsConsulta.Text.ToString());
      // Solicitando Alteração p/ o MySQL
      os.Update();
    }

    protected void updateServico(){
      //Buscando o id da OS
      var idOS = Session["currentOs"].ToString();

      // Realizando o update no veículo selacionado em `consultaOS`
      servicoOs.UpdateParameters["idOS"].DefaultValue = idOS;

      //Inserindo ServicoOS
      servicoOs.UpdateParameters["idServico"].DefaultValue = selectServicoConsulta.SelectedValue;
      servicoOs.UpdateParameters["idSeguro"].DefaultValue = selectSeguroConsulta.SelectedValue;

      servicoOs.Update();
    }

    protected void updateOs(object sender,EventArgs e){
      // try{
        updateCliente();
        updateVeiculo();
        updateViagem();
        updateSinistro();
        updateOrdemServico();
        updateServico();

        // AUDITORIA -------------------------------------------//
        // Gravando Ação no `userlog`
        string curretUser = Session["log"].ToString();
        string acao = "Update OrdemServico";
        // Transformando a data no padrão internacional
        string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

        userLog.InsertParameters["funcionario"].DefaultValue = (curretUser);
        userLog.InsertParameters["acao"].DefaultValue = Crypto.Encrypt(acao);
        userLog.InsertParameters["time"].DefaultValue = Crypto.Encrypt(currentDate);

        // Inserindo as informações
        userLog.Insert();

        Response.Redirect("servico.aspx");
      // }catch(Exception ex){
        // Response.Write("<script>alert('Ocorreu um erro');</script>");
      // }
    }
}
