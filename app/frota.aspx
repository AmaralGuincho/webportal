<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frota.aspx.cs" Inherits="app_frota" MasterPageFile="~/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">

  </style>
  <form runat="server">
  <div class="mdl-grid card-box">

    <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchCli" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-cli"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um Cliente</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div>


    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Veículos Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell-4-col-phone">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet">
            <tr class="frota1">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrota1" src="" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrota1" runat="server">IVECO 3</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrota1" runat="server">Disponível</label>
              </td>
            </tr>
            <tr class="frota2">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrota2" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrota2" runat="server">IVECO 1</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrota2" runat="server">Disponível</label>
              </td>
            </tr>
            <tr class="frota3">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrota3" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrota3" runat="server">Mercedes 1</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrota3" runat="server">Em Serviço</label>
              </td>
            </tr>
        </table>
      </div>
      <!-- <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div> -->
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Sugestões</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
            <tr class="frota1">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrotaSugestao1" src="../images/profiles/generic.png" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrotaSugestao1" runat="server">Ainda Não temos dados Suficientes</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrotaSugestao1" runat="server">--</label>
              </td>
            </tr>
            <tr class="frota2">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrotaSugestao2" src="../images/profiles/generic.png" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrotaSugestao2" runat="server">Ainda Não temos dados Suficientes</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrotaSugestao2" runat="server">--</label>
              </td>
            </tr>
            <tr class="frota3">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrotaSugestao3" src="../images/profiles/generic.png" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrotaSugestao3" runat="server">Ainda Não temos dados Suficientes</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrotaSugestao3" runat="server">--</label>
              </td>
            </tr>
        </table>
      </div>
      <!-- <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div> -->
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="addCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Veículo</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newClient" autocomplete="off">

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeFrota" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeFrota">Apelido(opcional)</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="modeloFrota" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="modeloFrota">Modelo</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="anoFrota" type="text" class="mdl-textfield__input" pattern="[0-9]*" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="anoFrota">Ano</label>
            <span class="mdl-textfield__error">Digite apenas o ano</span>
          </div>
          <div class="mdl-textfield mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="tipoFrota">Tipo</label>
            <asp:DropDownList ID="tipoFrota" runat="server" class="dropdown">
              <asp:ListItem Text="Guincho" Value="guincho"/>
              <asp:ListItem Text="SOSGuincho" Value="sos"/>
              <asp:ListItem Text="Taxi" Value="taxi"/>
              <asp:ListItem Text="Moto" Value="moto"/>
            </asp:DropDownList>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="fabricanteFrota" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="fabricanteFrota">Fabricante</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="placaFrota" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this,'###-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="placaFrota">Placa</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="corFrota" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="corFrota">Cor</label>
          </div>
        </form>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button ID="cadastroFrota" OnClick="cadastro" Text="Cadastrar" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        </asp:Button>
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Cancelar
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-newCli-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-newCli-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>
  </form>

  </div>

  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white" id="fabButton">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>

  <asp:SqlDataSource ID="frota" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  InsertCommand="INSERT INTO frota
  (nome_frota, modelo_frota, ano_frota, fabricante_frota, tipo_frota, placa_frota, cor_frota)
  VALUES
  (@nome, @modelo, @ano, @fabricante, @tipo, @placa, @cor)">
    <InsertParameters>
      <asp:Parameter Name="nome"/>
      <asp:Parameter Name="modelo"/>
      <asp:Parameter Name="ano"/>
      <asp:Parameter Name="fabricante"/>
      <asp:Parameter Name="tipo"/>
      <asp:Parameter Name="placa"/>
      <asp:Parameter Name="cor"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestFrota" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT nome_frota, img_frota, placa_frota FROM frota ORDER BY id_frota DESC LIMIT 3">
  </asp:SqlDataSource>

  <script src="../scripts/cpf.min.js" charset="utf-8"></script>

  <script>
    var shellTitle = document.getElementById("shellTitle");
    window.onload = shellTitle.innerHTML = 'Frota';

    var dialog = document.querySelector('dialog');
    var showDialogButton = document.querySelector('#fabButton');
    if (! dialog.showModal) {
    dialogPolyfill.registerDialog(dialog);
  }
    showDialogButton.addEventListener('click', function() {
    dialog.showModal();
  });
  dialog.querySelector('.close').addEventListener('click', function() {
    dialog.close();
  });

  function mascara(t,mask){
    var i = t.value.length;
    var output = mask.substring(1,0);
    var input = mask.substring(i);
    if(input.substring(0,1) != output){
      t.value += input.substring(0,1);
    }
  }

  window.onload = function shellName() {
    var shellTitle = document.getElementById("shellTitle");
    shellTitle.innerHTML = 'Frota';
  }
  </script>
</asp:Content>
