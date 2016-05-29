<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frota.aspx.cs" Inherits="pt_br_app_frota" MasterPageFile="~/pt-br/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">

  </style>
  <div class="mdl-grid card-box">

    <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchCli" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-cli"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um Cliente</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div>


    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Veículos Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Sugestões</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="addCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Veículo</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newClient" autocomplete="on" runat="server">

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeFrota" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeFrota">Apelido(opcional)</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="modeloFrota" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="modeloFrota">Modelo</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
            <asp:TextBox ID="anoFrota" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="anoFrota">Ano</label>
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

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="fabricanteFrota" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="fabricanteFrota">Fabricante</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
            <asp:TextBox ID="placaFrota" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this,'###-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="placaFrota">Placa</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
        </form>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Cadastrar
        </a>
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

  </div>

  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white" id="fabButton">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>

  <script src="../scripts/cpf.min.js" charset="utf-8"></script>

  <script>
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
  </script>
</asp:Content>
