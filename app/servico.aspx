<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servico.aspx.cs" Inherits="app_servico" MasterPageFile="~/app/index.master"  EnableEventValidation="false" MaintainScrollPositionOnPostBack="true" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
<style media="screen">
  .title{
    margin-bottom: 0;
  }
  .card{
    background-color: rgba(244, 244, 244, 0.78);
  }
  .opcao{
    padding:20px;
    background-color: #FFF;
  }

</style>
<form  runat="server">
  <div class="mdl-grid card-box">
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="osAberta">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Ordens de Serviço Abertas</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col">
          <tr class="os1">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID1" runat="server">Sem Dados</label>
            </td>
            <td class="os-date mdl-cell">
              <asp:Button ID="openOS1" Text="Abrir" runat="server" onclick="abrirOs1" Class="abrirOs mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
          <tr class="os2">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID2" runat="server">Sem Dados</label>
            </td>
            <td class="os-date mdl-cell">
              <asp:Button ID="openOS2" Text="Abrir" runat="server" onclick="abrirOs2" Class="abrirOs mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
          <tr class="os3">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID3" runat="server">Sem Dados</label>
            </td>
            <td class="os-date mdl-cell">
              <asp:Button ID="openOS3" Text="Abrir" runat="server" onclick="abrirOs3"  Class="abrirOs mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <!-- <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a> -->
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options" UseSubmitBehavior="False">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="servicoRecente">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Serviços Fechados Recentemente</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col">
          <thead>
            <tr>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Tipo de Servico</label>
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Código Os</label>
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                <label></label>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico1">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS1">#idOs</label>
            </td>
            <td class="mdl-data-tavle__cell">
              <asp:Button ID="openServicoOs1" Text="Abrir" onclick="abrirOs4" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico2">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS2">#idOs</label>
            </td>
            <td class="mdl-data-tavle__cell">
              <asp:Button ID="openServicoOs2" Text="Abrir" onclick="abrirOs5" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoServico3">#idServico</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoOS3">#idOs</label>
          </td>
          <td class="mdl-data-tavle__cell">
            <asp:Button ID="openServicoOs3" Text="Abrir" onclick="abrirOs6" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
          </td>
        </tr>
      </tbody>
        </table>
      </div>

      <div class="mdl-card__actions">
        <!-- <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a> -->
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-sugestao-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-sugestao-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <!-- NovaOS -->
    <div class=" mdl-card mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="novoServico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Novo Serviço</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">

        <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
            <h2 class="mdl-card__title-text">Sinistro</h2>
            <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
              <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="numeroSinistro"></asp:TextBox>
              <label class="mdl-textfield__label" for="numeroSinistro">Número do Sinistro</label>
            </div>
        </div>

        <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
            <h2 class="mdl-card__title-text">Selecione o Seguro</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
              <label class="simpleLabeldd" for="selectSeguro">Seguradora</label>
              <asp:DropDownList ID="selectSeguro" runat="server" class="dropdown">
              </asp:DropDownList>
            </div>
        </div>

        <div class="mdl-card mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid mdl-card--border mdl-shadow--1dp" id="newCli">
          <div class="title mdl-card__title mdl-cell mdl-cell--12-col">
            <h3 class="mdl-card__title-text">Cliente</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="nomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="nomeCli">Nome</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="SobrenomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="SobrenomeCli">Sobrenome</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox id="cpfCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
                <label class="mdl-textfield__label" for="cpfCli">CPF</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="telCli" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-###')"></asp:TextBox>
                <label class="mdl-textfield__label" for="telCli">Telefone</label>
              </div>
          </div>
          <!-- <div class="mdl-card__actions">
            <asp:Button  runat="server" ID="novoCliente" Text="Cadastrar e Ultilizar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
            <a id="newCliCancelar" onclick="showCard('none','newCli')" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
              cancelar
            </a>
          </div> -->
        </div>
      <!-- Fim cliente -->

      <!-- inicio veiculo -->
      <div class="mdl-card mdl-cell mdl-cell--12-col mdl-card--border" id="newVeiculo">
        <div class="title mdl-card__title">
          <h2 class="mdl-card__title-text">Veículo</h2>
        </div>
        <div class="mdl-card__supporting-text mdl-grid">
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="modeloVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="modeloVeiculo">Modelo Veículo</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="placaVeiculo" pattern="[0-9,A-Z,-]*" onkeydown="mascara(this,'###-####')" onkeypress="this.value = this.value.toUpperCase();"></asp:TextBox>
            <label class="mdl-textfield__label" for="placaVeiculo">Placa</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="anoVeiculo" pattern="[0-9]*"></asp:TextBox>
            <label class="mdl-textfield__label" for="anoVeiculo">Ano de Fabricação</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="fabricanteVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="fabricanteVeiculo">Fabricante</label>
            <span class="mdl-textfield__error">Digite o Nome do fabricante</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="corVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="corVeiculo">Cor</label>
          </div>
        </div>
      </div>
      <!-- fim veiculo -->

      <!-- Tipo de Servico -->
      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Tipo de Serviço</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectServico">Tipo de Serviço</label>
            <asp:DropDownList ID="selectServico" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>
      </div>

      <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="searchSinistro" style="display:none;">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Sinistro Existênte</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <form action="#">
            <div class="mdl-textfield mdl-js-textfield">
              <asp:DropDownList ID="sinistroddl" runat="server" class="dropdown">
                <asp:ListItem Text="Servidor fora do ar" />
              </asp:DropDownList>
            </div>
          </form>
        </div>
        <div class="mdl-card__actions">
          <asp:Button Text="Ultilizar" id="sinistroExistente" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','searchSinistro')">
            cancelar
          </a>
        </div>
      </div>

      <div class="card mdl-card mdl-cell mdl-cell--12-col" id="newViagem">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Adicionando uma Viagem</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <h2 class="mdl-card__title-text">Local de Partida</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <input ID="cepViagemPartida" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepPartida()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemPartida">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemPartida" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemPartida">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemPartida">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemPartida">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemPartida" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemPartida">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Local do Destino</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <input ID="cepViagemDestino" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepDestino()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemDestino">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemDestino">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemDestino">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemDestino">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemDestino" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemDestino">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Observações</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="obsViagem" runat="server" class="mdl-textfield__input mdl-cell mdl-cell--12-col"
               TextMode="multiline" rows="4"></asp:TextBox>
              <label class="mdl-textfield__label" for="obsViagem">Observações</label>
            </div>

        </div>

      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Motorista</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectMotorista">Nome do Motorista</label>
            <asp:DropDownList ID="selectMotorista" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione a Viatura</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectFrota">Veículo</label>
            <asp:DropDownList ID="selectFrota" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Agendamento</h2>
          <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <asp:TextBox runat="server" ID="agendamentoOS" type="datetime-local" class="mdl-textfield__input" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="agendamentoOS">Data e Hora</label>
          </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Status</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <label class="simpleLabeldd" for="statusOs">Status</label>
            <asp:DropDownList ID="statusOs" runat="server" class="dropdown">
              <asp:ListItem Text="Aberto"/>
              <asp:ListItem Text="Fechado"/>
              <asp:ListItem Text="Recusado"/>
            </asp:DropDownList>
          </div>
      </div>
      <!-- FINAL DO CONTEUDO DO CARTAO -->
      </div>

      <div class="mdl-layout-spacer"></div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button id="registrarOs" runat="server" OnClick="newOs" Text="Abrir Ordem de Serviço"
         class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        </asp:Button>
      </div>

      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options" UseSubmitBehavior="False">
          <i class="material-icons">clear</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>
    <!-- FIM DO CARTÃO NOVO SERVICO -->

    <!-- ConsultaOS -->
    <div class=" mdl-card mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="pesqServico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Serviço</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">

        <div class="mdl-card mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid mdl-card--border mdl-shadow--1dp" id="Abertura">
          <div class="title mdl-card__title mdl-cell mdl-cell--12-col">
            <h3 class="mdl-card__title-text">Condições de Abertura</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--6-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="abertoPor" type="text" class="mdl-textfield__input" runat="server" disabled></asp:TextBox>
                <label class="mdl-textfield__label" for="abertoPor">Aberto Por</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="dataAbertura" type="text" class="mdl-textfield__input" runat="server" disabled></asp:TextBox>
                <label class="mdl-textfield__label" for="dataAbertura">Data de Abertura</label>
              </div>
          </div>
        </div>

        <div class="mdl-card mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid mdl-card--border mdl-shadow--1dp" id="pesqCli">
          <div class="title mdl-card__title mdl-cell mdl-cell--12-col">
            <h3 class="mdl-card__title-text">Cliente</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="nomeCliConsulta" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="nomeCliConsulta">Nome</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="sobrenomeCliConsulta" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="sobrenomeCliConsulta">Sobrenome</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox id="cpfCliConsulta" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
                <label class="mdl-textfield__label" for="cpfCliConsulta">CPF</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="telefoneCliConsulta" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-###')"></asp:TextBox>
                <label class="mdl-textfield__label" for="telefoneCliConsulta">Telefone</label>
              </div>
          </div>
        </div>
      <!-- Fim cliente -->

      <!-- inicio veiculo -->
      <div class="mdl-card mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-card--border" id="newVeiculo">
        <div class="title mdl-card__title">
          <h2 class="mdl-card__title-text">Veículo</h2>
        </div>
        <div class="mdl-card__supporting-text mdl-grid">
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell--4-col-phone">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="modeloVeiculoConsulta"></asp:TextBox>
            <label class="mdl-textfield__label" for="modeloVeiculoConsulta">Modelo Veículo</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell--4-col-phone">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="placaVeiculoConsulta" pattern="[0-9,A-Z,-]*" onkeydown="mascara(this,'###-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="placaVeiculoConsulta">Placa</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell--4-col-phone">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="anoVeiculoConsulta" pattern="[0-9]*"></asp:TextBox>
            <label class="mdl-textfield__label" for="anoVeiculoConsulta">Ano de Fabricação</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell--4-col-phone">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="fabricanteVeiculoConsulta"></asp:TextBox>
            <label class="mdl-textfield__label" for="fabricanteVeiculoConsulta">Fabricante</label>
            <span class="mdl-textfield__error">Digite o Nome do fabricante</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell--4-col-phone">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="corVeiculoConsulta"></asp:TextBox>
            <label class="mdl-textfield__label" for="corVeiculoConsulta">Cor</label>
          </div>
        </div>
      </div>
      <!-- fim veiculo -->

      <!-- Tipo de Servico -->
      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Tipo de Serviço</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectServicoConsulta">Tipo de Serviço</label>
            <asp:DropDownList ID="selectServicoConsulta" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Seguro</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectSeguroConsulta">Seguradora</label>
            <asp:DropDownList ID="selectSeguroConsulta" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>
      </div>

      <div class="card mdl-card mdl-cell mdl-cell--12-col" id="newViagem">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Adicionando uma Viagem</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <h2 class="mdl-card__title-text">Local de Partida</h2>
            <!-- <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <input ID="cepViagemPartidaConsulta" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepPartida()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemPartidaConsulta">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div> -->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemPartidaConsulta" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemPartidaConsulta">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemPartidaConsulta" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemPartidaConsulta">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemPartidaConsulta" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemPartidaConsulta">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemPartidaConsulta" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemPartidaConsulta">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Local do Destino</h2>
            <!-- <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <input ID="cepViagemDestinoConsulta" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepDestino()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemDestinoConsulta">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div> -->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemDestinoConsulta" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemDestinoConsulta">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemDestinoConsulta" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemDestinoConsulta">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemDestinoConsulta" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemDestinoConsulta">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemDestinoConsulta" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemDestinoConsulta">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Observações</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="obsViagemConsulta" runat="server" class="mdl-textfield__input mdl-cell mdl-cell--12-col"
               TextMode="multiline" rows="4"></asp:TextBox>
              <label class="mdl-textfield__label" for="obsViagem">Observações</label>
            </div>
        </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Motorista</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectMotoristaConsulta">Nome do Motorista</label>
            <asp:DropDownList ID="selectMotoristaConsulta" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione a Viatura</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectFrotaConsulta">Veículo</label>
            <asp:DropDownList ID="selectFrotaConsulta" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Sinistro</h2>
          <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="numeroSinistroConsulta"></asp:TextBox>
            <label class="mdl-textfield__label" for="numeroSinistroConsulta">Número do Sinistro</label>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Agendamento</h2>
          <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <asp:TextBox runat="server" ID="agendamentoOSConsulta" class="mdl-textfield__input" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="agendamentoOSConsulta">Data e Hora</label>
          </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Status</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <label class="simpleLabeldd" for="statusOsConsulta">Status</label>
            <asp:DropDownList ID="statusOsConsulta" runat="server" class="dropdown">
              <asp:ListItem Text="Aberto"/>
              <asp:ListItem Text="Fechado"/>
              <asp:ListItem Text="Recusado"/>
            </asp:DropDownList>
          </div>
      </div>
      <!-- FINAL DO CONTEUDO DO CARTAO -->
      </div>

      <div class="mdl-layout-spacer"></div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button id="PesqregistrarOs" runat="server" Text="Atualizar Ordem de Serviço"
         class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"
         onclick="updateOs">
        </asp:Button>
      </div>

      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="Pesqcard-cli-options" UseSubmitBehavior="False">
          <i class="material-icons">clear</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="Pesqcard-cli-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

  </div>
</form>


  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white"
    id="fabButton"
    onclick="showCard('novoServico','osAberta'); showCard('none','servicoRecente')">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>
  <!-- DataSource -->

  <asp:SqlDataSource ID="cliente" runat="server"
   ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
   ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
   SelectCommand="SELECT MAX(id_cli) FROM cliente"
   InsertCommand="INSERT INTO cliente
    (nome_cli, sobrenome_cli, cpf_cli, telefone_cli)
     VALUES
     (@nome, @sobrenome, @cpf, @telefone)"
   UpdateCommand="
    UPDATE cliente SET
      nome_cli = @nome,
      sobrenome_cli = @sobrenome,
      cpf_cli = @cpf,
      telefone_cli = @telefone
    WHERE
      id_cli = @idCli">
    <InsertParameters>
      <asp:Parameter Name="nome"/>
      <asp:Parameter Name="sobrenome"/>
      <asp:Parameter Name="cpf"/>
      <asp:Parameter Name="telefone"/>
    </InsertParameters>
    <UpdateParameters>
      <asp:ControlParameter Name="nome" ControlID="nomeCliConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="sobrenome" ControlID="SobrenomeCliConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="cpf" ControlID="cpfCliConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="telefone" ControlID="telefoneCliConsulta" PropertyName="Text"/>
      <asp:Parameter Name="idCli"/>
    </UpdateParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="veiculo" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  InsertCommand="INSERT INTO veiculo
  (id_cli, fabricante_veiculo, modelo_veiculo, ano_veiculo, placa_veiculo, cor_veiculo)
  VALUES
  (@cliente, @fabricante, @modelo, @ano, @placa, @cor)"
  SelectCommand="SELECT MAX(id_veiculo) FROM veiculo"
  UpdateCommand="
  UPDATE veiculo SET
   fabricante_veiculo = @fabricante,
   modelo_veiculo = @modelo,
   ano_veiculo = @ano,
   placa_veiculo = @placa,
   cor_veiculo = @cor
  WHERE
  id_veiculo = @idVeiculo">
    <InsertParameters>
      <asp:Parameter Name="fabricante"/>
      <asp:Parameter Name="modelo"/>
      <asp:Parameter Name="placa"/>
      <asp:Parameter Name="cor"/>
      <asp:Parameter Name="ano"/>
      <asp:Parameter Name="cliente"/>
    </InsertParameters>
    <UpdateParameters>
      <asp:ControlParameter Name="fabricante" ControlID="fabricanteVeiculoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="modelo" ControlID="modeloVeiculoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="placa" ControlID="placaVeiculoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="cor" ControlID="corVeiculoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="ano" ControlID="anoVeiculoConsulta" PropertyName="Text"/>
      <asp:Parameter Name="idVeiculo"/>
    </UpdateParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="viagem" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT MAX(id_viagem) FROM viagem"
    InsertCommand="INSERT INTO viagem
    (id_mot, id_frota, bairro_destino_viagem, bairro_partida_viagem,
    endereco_destino_viagem, endereco_partida_viagem, cidade_destino_viagem,
    cidade_partida_viagem, uf_destino_viagem, uf_partida_viagem, obs_viagem)
    VALUES
    (@idMot, @idFrota, @bairroDestinoViagem, @bairroPartidaViagem,
    @enderecoDestinoViagem, @enderecoPartidaViagem, @cidadeDestinoViagem,
    @cidadePartidaViagem, @ufDestinoViagem, @ufPartidaViagem, @obsViagem)"
    UpdateCommand = "
    UPDATE viagem SET
      id_mot = @idMot,
      id_frota = @idFrota,
      bairro_destino_viagem = @bairroDestinoViagem,
      bairro_partida_viagem = @bairroPartidaViagem,
      endereco_destino_viagem = @enderecoDestinoViagem,
      endereco_partida_viagem = @enderecoPartidaViagem,
      cidade_destino_viagem = @cidadeDestinoViagem,
      cidade_partida_viagem = @cidadePartidaViagem,
      uf_destino_viagem = @ufDestinoViagem,
      uf_partida_viagem = @ufPartidaViagem,
      obs_viagem = @obsViagem
  WHERE
    id_viagem = @idViagem">
    <InsertParameters>
      <asp:Parameter Name="idMot"/>
      <asp:Parameter Name="idFrota"/>
      <asp:Parameter Name="bairroDestinoViagem"/>
      <asp:Parameter Name="bairroPartidaViagem"/>
      <asp:Parameter Name="enderecoDestinoViagem"/>
      <asp:Parameter Name="enderecoPartidaViagem"/>
      <asp:Parameter Name="cidadeDestinoViagem"/>
      <asp:Parameter Name="cidadePartidaViagem"/>
      <asp:Parameter Name="ufDestinoViagem"/>
      <asp:Parameter Name="ufPartidaViagem"/>
      <asp:Parameter Name="obsViagem"/>
    </InsertParameters>
    <UpdateParameters>
      <asp:ControlParameter Name="idMot" ControlID="selectMotoristaConsulta" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="idFrota" ControlID="selectFrotaConsulta" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="bairroDestinoViagem" ControlID="bairroViagemDestinoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="bairroPartidaViagem" ControlID="bairroViagemPartidaConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="enderecoDestinoViagem" ControlID="enderecoViagemDestinoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="enderecoPartidaViagem" ControlID="enderecoViagemPartidaConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="cidadeDestinoViagem" ControlID="cidadeViagemDestinoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="cidadePartidaViagem" ControlID="cidadeViagemPartidaConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="ufDestinoViagem" ControlID="ufViagemDestinoConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="ufPartidaViagem" ControlID="ufViagemPartidaConsulta" PropertyName="Text"/>
      <asp:ControlParameter Name="obsViagem" ControlID="obsViagemConsulta" PropertyName="Text"/>
      <asp:Parameter Name="idViagem" />
    </UpdateParameters>
  </asp:SqlDataSource>

 <!-- TODO update -->
  <asp:SqlDataSource ID="seguro" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_seguro, nome_seguro, nome_amigavel FROM seguro">
  </asp:SqlDataSource>

<!-- TODO update -->
  <asp:SqlDataSource ID="servico" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_servico, tipo_servico FROM servico">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="sinistro" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO sinistro (sinistro) VALUES (@sinistro)"
    SelectCommand="SELECT MAX(id_sinistro) FROM sinistro"
    UpdateCommand="UPDATE sinistro SET
    sinistro = @sinistro
    WHERE
    id_sinistro = @idSinistro">
    <InsertParameters>
      <asp:Parameter Name="sinistro"/>
    </InsertParameters>
    <UpdateParameters>
      <asp:Parameter Name="idSinistro"/>
      <asp:ControlParameter Name="sinistro" ControlID="numeroSinistroConsulta" PropertyName="Text"/>
    </UpdateParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="motorista" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="
    SELECT t1.id_mot, t1.nome_func FROM motoristaOnly t1
      WHERE NOT EXISTS(
        SELECT t2.id_mot, t2.nome_func FROM motoristaOnly t2
          INNER JOIN viagem on viagem.id_mot = t2.id_mot
          INNER JOIN viagem_servico on viagem_servico.id_viagem = viagem.id_viagem
          RIGHT JOIN ordem_de_servico on ordem_de_servico.id_os = viagem_servico.id_os
        WHERE ordem_de_servico.status_os = 'aberto' AND
        t1.id_mot = t2.id_mot
    );
">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="allMotorista" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="
    SELECT id_mot, nome_func FROM motoristaOnly">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="allFrota" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT * FROM frota">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="frota" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="
    SELECT f1.id_frota, f1.nome_frota, f1.placa_frota FROM frota f1
      WHERE NOT EXISTS(
        SELECT f2.id_frota, f2.nome_frota, f2.placa_frota from frota f2
          INNER JOIN  viagem on
            viagem.id_frota = f2.id_frota
          INNER JOIN viagem_servico on
            viagem_servico.id_viagem = viagem.id_viagem
          RIGHT JOIN ordem_de_servico on
            ordem_de_servico.id_os = viagem_servico.id_os

        WHERE ordem_de_servico.status_os = 'aberto' AND
        f1.id_frota = f2.id_frota
    );">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="os" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT MAX(id_os) FROM ordem_de_servico"
    InsertCommand="INSERT INTO ordem_de_servico
    (id_func, id_veiculo, dtab_os, agendamento_os, status_os)
    VALUES
    (@idFunc, @idVeiculo, @dtab, @agendamentoOs, @status)"
    UpdateCommand="
    UPDATE ordem_de_servico SET
      agendamento_os = @agendamentOos,
      status_os = @statusOs
    WHERE
      id_os = @idOS">
    <InsertParameters>
      <asp:Parameter Name="status"/>
      <asp:Parameter Name="agendamentoOs"/>
      <asp:Parameter Name="dtab"/>
      <asp:Parameter Name="idVeiculo"/>
      <asp:SessionParameter Name="idFunc" SessionField="log" />
    </InsertParameters>
    <UpdateParameters>
      <asp:ControlParameter Name="statusOs" ControlID="statusOsConsulta" PropertyName="Text"/>
      <asp:Parameter Name="agendamentoOs"/>
      <asp:Parameter Name="idOS"/>
    </UpdateParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="viagemServico" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO viagem_servico (id_viagem, id_os)
    VALUES(@viagem, @OS)">
    <InsertParameters>
      <asp:Parameter Name="os"/>
      <asp:Parameter Name="viagem"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="servicoOs" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO servico_os(id_servico, id_os, id_sinistro, id_seguro)
    VALUES(@servico, @OS, @sinistro, @seguro)"
    UpdateCommand="
    UPDATE servico_os SET
      id_servico = @idServico,
      id_seguro = @idSeguro
    WHERE id_os = @idOS">
    <InsertParameters>
      <asp:Parameter Name="os"/>
      <asp:Parameter Name="sinistro"/>
      <asp:Parameter Name="servico"/>
      <asp:Parameter Name="seguro"/>
    </InsertParameters>
    <UpdateParameters>
      <asp:ControlParameter Name="idSeguro" ControlID="selectSeguroConsulta" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="idServico" ControlID="selectServicoConsulta" PropertyName="SelectedValue"/>
      <asp:Parameter Name="idOS"/>
    </UpdateParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT id_os, dtab_os FROM ordem_de_servico WHERE (status_os = 'Aberto') ORDER BY id_os DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestServicoOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT os.id_os, os.dtab_os, servico.tipo_servico
  FROM ordem_de_servico os
  INNER JOIN servico_os on
   os.id_os = servico_os.id_os
  INNER JOIN servico on
    servico_os.id_servico = servico.id_servico

   WHERE (status_os = 'Fechado') ORDER BY dtab_os DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="consultaOS" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="
    SELECT
    cliente.id_cli, cliente.nome_cli, cliente.sobrenome_cli, cliente.cpf_cli,
    cliente.telefone_cli,

    veiculo.id_veiculo, veiculo.fabricante_veiculo, veiculo.modelo_veiculo,
    veiculo.ano_veiculo, veiculo.placa_veiculo, veiculo.cor_veiculo,

    funcionario.id_func, funcionario.nome_func, funcionario.sobrenome_func,

    viagem.id_mot, viagem.id_frota,

    motoristaOnly.id_mot as 'idMotorista', motoristaOnly.nome_func as 'nomeMotorista',

    frota.nome_frota,

    viagem.id_viagem, viagem.bairro_destino_viagem, viagem.bairro_partida_viagem,
    viagem.endereco_destino_viagem, viagem.endereco_partida_viagem,
    viagem.cidade_destino_viagem, viagem.cidade_partida_viagem,
    viagem.uf_destino_viagem, viagem.uf_partida_viagem, viagem.obs_viagem,

    sinistro.id_sinistro, sinistro.sinistro,

    os.dtab_os, os.agendamento_os, os.status_os,

    servico.id_servico,servico.tipo_servico,

    seguro.id_seguro, seguro.nome_seguro
    FROM servico_os

      INNER JOIN viagem_servico ON
        servico_os.id_os = viagem_servico.id_os
      INNER JOIN ordem_de_servico os ON
        viagem_servico.id_os = os.id_os
      INNER JOIN funcionario ON
        os.id_func = funcionario.id_func
      INNER JOIN veiculo ON
        os.id_veiculo = veiculo.id_veiculo
      INNER JOIN cliente ON
        veiculo.id_cli = cliente.id_cli
      INNER JOIN viagem ON
        viagem_servico.id_viagem = viagem.id_viagem
      INNER JOIN motorista ON
        viagem.id_mot = motorista.id_mot
      INNER JOIN motoristaOnly ON
        viagem.id_mot = motoristaOnly.id_mot
      INNER JOIN frota ON
        viagem.id_frota = frota.id_frota
      INNER JOIN servico ON
        servico_os.id_servico = servico.id_servico
      INNER JOIN sinistro ON
        servico_os.id_sinistro = sinistro.id_sinistro
      INNER JOIN seguro ON
        servico_os.id_seguro = seguro.id_seguro

    WHERE
    os.id_os = (@idConsulta)">
    <SelectParameters>
      <asp:Parameter name="idConsulta"/>
    </SelectParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="userLog" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  InsertCommand="INSERT INTO userlog VALUES (null,@funcionario,@acao,@time)">
    <InsertParameters>
      <asp:Parameter Name="funcionario"/>
      <asp:Parameter Name="acao"/>
      <asp:Parameter Name="time"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <script src="../scripts/cpf.min.js" charset="utf-8"></script>
  <script>
  // var searchTool = document.getElementById('searchTool');
  var searchDiv = document.getElementById('searchDiv');
  var isPesq = '<%=Session["pesqOS"]%>';
  var shellTitle = document.getElementById("shellTitle");

  window.onload = showCard('none','novoServico');
  window.onload = showCard('none','pesqServico');
  window.onload = shellTitle.innerHTML = 'Ordem de Serviço';
  window.onload = checkPesq();
  // window.onload = searchDiv.classList.remove("hidden");

  // searchTool.addEventListener("onkeypress", () => {
  //
  // });

  function checkPesq() {
    if(isPesq == 'True') {
      showCard('pesqServico','none');
      showCard('none','osAberta');
      showCard('none','servicoRecente');
    }else{
      showCard('none','pesqServico');
    }
  }

  function mascara(t,mask){
    var i = t.value.length;
    var output = mask.substring(1,0);
    var input = mask.substring(i);
    if(input.substring(0,1) != output){
      t.value += input.substring(0,1);
    }
  }


  function pesquisaCepPartida() {
    var valor = document.getElementById('cepViagemPartida').value;
    var cep = valor.replace(/\D/g, '');
    if (cep != "") {
      var validacep = /^[0-9]{8}$/;
      if(validacep.test(cep)) {
        var script = document.createElement('script');
        script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callbackViagemPartida';
        document.body.appendChild(script);
      }
      else {
        alert("Formato de CEP inválido.");
      }
    }
    else {

      valor = "";
    }
  }

  function meu_callbackViagemPartida(conteudo) {
    if (!("erro" in conteudo)) {
      var endereco = document.getElementById('<%=enderecoViagemPartida.ClientID%>');
      var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
      var cidade = document.getElementById('<%=cidadeViagemPartida.ClientID%>');
      var bairro = document.getElementById('<%=bairroViagemPartida.ClientID%>');
      //Atualiza os campos com os valores.
      endereco.value=(conteudo.logradouro);
      bairro.value= (conteudo.bairro);
      cidade.value=(conteudo.localidade);
      uf.value=(conteudo.uf);
    }
    else {
      //CEP não Encontrado.
      var endereco = document.getElementById('<%=enderecoViagemPartida.ClientID%>');
      var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
      var cidade = document.getElementById('<%=cidadeViagemPartida.ClientID%>');
      var bairro = document.getElementById('<%=bairroViagemPartida.ClientID%>');
      endereco.value="desconhecido";
      bairro.value= "desconhecido";
      cidade.value="desconhecido";
      uf.value="desconhecido";
    }

  }

  function pesquisaCepDestino() {
    var valor = document.getElementById('cepViagemDestino').value;
    var cep = valor.replace(/\D/g, '');
    if (cep != "") {
      var validacep = /^[0-9]{8}$/;
      if(validacep.test(cep)) {
        var script = document.createElement('script');
        script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callbackViagemDestino';
        document.body.appendChild(script);
      }
      else {
        alert("Formato de CEP inválido.");
      }
    }
    else {valor = "";}
  }

  function meu_callbackViagemDestino(conteudo) {
    if (!("erro" in conteudo)) {
      var endereco = document.getElementById('<%=enderecoViagemDestino.ClientID%>');
      var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
      var cidade = document.getElementById('<%=cidadeViagemDestino.ClientID%>');
      var bairro = document.getElementById('<%=bairroViagemDestino.ClientID%>');
      //Atualiza os campos com os valores.
      endereco.value=(conteudo.logradouro);
      bairro.value= (conteudo.bairro);
      cidade.value=(conteudo.localidade);
      uf.value=(conteudo.uf);
    }
    else {
      //CEP não Encontrado.
      var endereco = document.getElementById('<%=enderecoViagemDestino.ClientID%>');
      var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
      var cidade = document.getElementById('<%=cidadeViagemDestino.ClientID%>');
      var bairro = document.getElementById('<%=bairroViagemDestino.ClientID%>');
      endereco.value="desconhecido";
      bairro.value= "desconhecido";
      cidade.value="desconhecido";
      uf.value="desconhecido";
    }

  }

  function showCard(card,reverseCard) {
    if(card != 'none'){
      document.getElementById(card).style.display='block';
    }
    if(reverseCard != 'none'){
      document.getElementById(reverseCard).style.display='none';
    }
  }

  function placaMask(e){
    var upperCaseLetter = e.toUpperCase();
    return upperCaseLetter
  }
  </script>
</asp:Content>
