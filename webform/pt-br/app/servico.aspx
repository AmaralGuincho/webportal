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
<form  runat="server">
  <div class="mdl-grid card-box">
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="novoServico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Abrindo um Serviço</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">

        <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Escolha um tipo de Cliente</h2>
          <asp:Button ID="clienteExistente" Text="Cliente Existente" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
          <asp:Button ID="novoCliente" Text="Novo Cliente" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
        </div>

        <div class="card mdl-card mdl-shadow--8dp mdl-cell mdl-cell--12-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="searchCli">
          <div class="mdl-card__title mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Pesquisar um Cliente</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newClient" autocomplete="on">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="nomePesqCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="nomePesqCli">Nome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="sobrenomePesqCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="sobrenomePesqCli">Sobrenome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
                <asp:TextBox ID="dtNascPesqCli" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
                <label class="mdl-textfield__label" for="dtNascPesqCli">Nascimento</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox id="cpfPesqCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
                <label class="mdl-textfield__label" for="cpfPesqCli">CPF</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>
              <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <label class="simpleLabeldd" for="sexoPesqCli">Sexo</label>
                <asp:DropDownList ID="sexoPesqCli" runat="server" class="dropdown">
                  <asp:ListItem Text="Masculino" Value="M"/>
                  <asp:ListItem Text="Feminino" Value="F"/>
                </asp:DropDownList>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="telPesqCli" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="telPesqCli">Telefone</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="emailPesqCli" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="emailPesqCli">Email</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="cepPesqCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisacep()"></asp:TextBox>
                <label class="mdl-textfield__label" for="cepPesqCli">CEP</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
                <asp:TextBox ID="residenciaPesqCli" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="residenciaPesqCli">Residência</label>
              </div>
            </form>
          </div>
          <div class="mdl-card__actions mdl-card--border">
            <asp:Button  runat="server" Text="Ultilizar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
            <asp:Button runat="server" Text="Cancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
          </div>
        </div>

        <div class="card mdl-card mdl-shadow--8dp mdl-cell mdl-cell--12-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="newCli">
          <div class="mdl-card__title mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Cadastrando um Novo Cliente</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newClient" autocomplete="on">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="nomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="nomeCli">Nome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="SobrenomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="SobrenomeCli">Sobrenome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
                <asp:TextBox ID="dtNascCli" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
                <label class="mdl-textfield__label" for="dtNascCli">Nascimento</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox id="cpfCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
                <label class="mdl-textfield__label" for="cpfCli">CPF</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>
              <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <label class="simpleLabeldd" for="sexoCli">Sexo</label>
                <asp:DropDownList ID="sexoCli" runat="server" class="dropdown">
                  <asp:ListItem Text="Masculino" Value="M"/>
                  <asp:ListItem Text="Feminino" Value="F"/>
                </asp:DropDownList>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="telCli" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="telCli">Telefone</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="emailCli" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="emailCli">Email</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="cepCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisacep()"></asp:TextBox>
                <label class="mdl-textfield__label" for="cepCli">CEP</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
                <asp:TextBox ID="residenciaCli" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="residenciaCli">Residência</label>
              </div>
            </form>
          </div>
          <div class="mdl-card__actions mdl-card--border">
            <asp:Button  runat="server" Text="Cadastrar e Ultilizar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
            <asp:Button runat="server" Text="Cancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
          </div>
        </div>
      </div>


      <div class="opcao mdl-cell mdl-cell--12-col">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Selecione o Tipo de Serviço</h2>
        </div>
        <div class="mdl-grid">
          <asp:DropDownList ID="tipoServico" runat="server" class="dropdown">
            <asp:ListItem Text="Retirada de Automovel" value="1"/>
            <asp:ListItem Text="Transporte" Value="2"/>
            <asp:ListItem Text="SOS-Guincho" Value="3"/>
          </asp:DropDownList>
        </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Selecione o Seguro</h2>
        </div>
        <div class="mdl-grid">
          <asp:DropDownList ID="seguroServico" runat="server" class="dropdown mdl-cell mdl-cell--4-col">
            <asp:ListItem Text="Bradesco" value="1"/>
            <asp:ListItem Text="Sul América" Value="2"/>
            <asp:ListItem Text="itau" Value="3"/>
          </asp:DropDownList>
        </div>
      </div>


      <div class="mdl-card__actions mdl-card--border">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Abrir Ordem de Serviço
        </a>
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

  <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>

</asp:Content>
