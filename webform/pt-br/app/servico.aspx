<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servico.aspx.cs" Inherits="pt_br_app_servico" MasterPageFile="~/pt-br/app/index.master" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">
    #fabButton{
      position:fixed;
      bottom:20px;
      right:50px;
      z-index: 3;
    }
    @media (max-width: 720px) {
      #fabButton{
        bottom:10px;
        right:10px;
      }
    }
  </style>

  <div class="mdl-grid card-box">
    <div class="search mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input id="search-cli" type="text">
      <label class="mdl-textfield__label" for="search-cli">Procure um Cliente</label>
    </div>
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--7-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Cliente">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Clientes Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
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

  <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>

</asp:Content>
