ok
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="settings.aspx.cs" Inherits="app_settings" MasterPageFile="~/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
<form action="#" runat="server">
  <div class="mdl-grid mdl-cell mdl-cell--12-col card-box">
    <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col mdl-grid">
      <div class="mdl-card__title mdl-cell mdl-cell-12-col">
        <h2 class="mdl-card__title-text">Ajustes</h2>
      </div>
      <div class="mdl-card__supporting-text mdl-cell mdl-cell--12-col">
        Seus Ajustes
      </div>
      <div class="card-content mdl-card--border mdl-grid mdl-cell mdl-cell--12-col">
        <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect mdl-cell mdl-cell--2-offset-desktop mdl-cell--2-offset-tablet mdl-cell--12-col-desktop mdl-cell--8-col-tablet" for="enviosEstatisticas">
          <input type="checkbox" id="enviosEstatisticas" class="mdl-switch__input" checked>
          <span class="mdl-switch__label">Permitir Envio de diagnósticos para o melhoramento do programa</span>
        </label>
      </div>
      <div class="mdl-card__actions mdl-grid">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-cell mdl-cell--4-offset-desktop mdl-cell--3-col" onclick="showScreen('mudarSenha')">
          Altere sua senha
        </a>
      </div>
    </div>

    <div class="mdl-card mdl-shadow--8dp mdl-cell mdl-cell--12-col mdl-grid" id="mudarSenha" style="display:none;">
      <div class="mdl-card__title mdl-cell mdl-cell-12-col">
        <h2 class="mdl-card__title-text">Alterando Sua Senha</h2>
      </div>
      <div class="card-content mdl-card--border mdl-grid mdl-cell mdl-cell--12-col">
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--6-col mdl-cell--3-offset">
            <asp:TextBox class="mdl-textfield__input" id="novaSenha" type="password" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="novaSenha">Nova Senha</label>
          </div>
      </div>
      <div class="mdl-card__actions mdl-grid mdl-cell mdl-cell--4-col mdl-cell--4-offset">
        <asp:Button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-cell mdl-cell--12-col" Text="alterar" OnClick="changePassword" runat="server">
        </asp:Button>
      </div>
    </div>

  </div>
  </form>

  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white" id="fabButton">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>

<asp:SqlDataSource ID="sqlChangePassword" runat="server"
 ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
 ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
 UpdateCommand="UPDATE login SET password_login = @PASSWORD WHERE id_func = @LOGIN">
  <UpdateParameters>
    <asp:SessionParameter Name="LOGIN" SessionField="log"/>
    <asp:ControlParameter Name="PASSWORD" ControlID="novaSenha" PropertyName="Text"/>
  </UpdateParameters>
</asp:SqlDataSource>

<script type="text/javascript">
  function showScreen(card) {
    document.getElementById(card).style.display='block';
  }
  var shellTitle = document.getElementById("shellTitle");
  window.onload = shellTitle.innerHTML = 'Ajustes';

</script>
</asp:Content>
