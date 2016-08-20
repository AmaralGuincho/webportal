<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seguro.aspx.cs" Inherits="app_seguro" MasterPageFile="~/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">

  </style>
  <form runat="server">
  <div class="mdl-grid card-box">

    <!-- TODO SEARCHING METHOD -->
    <!-- <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchFunc" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-Func"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um funcionario</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div> -->

    <!-- TODO Checking Seguro -->
    <!-- <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardFunc">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Seguro Recente</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-Func-options" UseSubmitBehavior="False">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-Func-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoFunc">
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
    </div> -->
    <!-- END TODO -->
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="addFunc">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Seguro</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newFuncent" autocomplete="off">

          <!-- informacoes gerais -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Informações Gerais</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="nomeSeguro" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="nomeSeguro">Assistência 24hrs</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="nomeAmigavel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="nomeAmigavel">Apelido Seguro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="codPrestador" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="codPrestador">Código do Prestador</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="cgc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="cgc">CGC</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="cordenadorRegiao" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="cordenadorRegiao">Cordenador da Região</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="emailRepresentante" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="emailRepresentante">Email do Representante</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="endereco" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="endereco">Endereço</label>
            </div>
          </div>

          <!-- contato -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Informações de Contato(Telefones)</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="setorCadastroTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="setorCadastroTel">Setor de Cadastro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="setorPagtoTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="setorPagtoTel">Setor de Pagamento</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="fechamentoServicosTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="fechamentoServicosTel">Setor de Fechamento de Serviços</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="casosAndamentoTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="casosAndamentoTel">Casos em Andamento</label>
            </div>
          </div>

          <!-- Passeio -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Passeio</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="passeio40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="passeio40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="passeioMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="passeioMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="passeioHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="passeioHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="passeioHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="passeioHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- Ultilitario Lanca Leve -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Ultilitário Lança Leve</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="ull40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="ull40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="ullMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="ullMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="ullHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="ullHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="ullHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="ullHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- Moto -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Moto</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="moto40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="moto40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="motoMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="motoMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="motoHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="motoHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="motoHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="motoHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- Garagem -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Garagem</h2>
          </div>
            <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="garagem40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="garagem40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="garagemMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="garagemMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="garagemHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="garagemHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="garagemHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="garagemHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- Rodas Extras -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Rodas Extras</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="re40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="re40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="reMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="reMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="reHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="reHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="reHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="reHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- Patins -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Patins</h2>
          </div>
            <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="patins40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="patins40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="patinsMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="patinsMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="patinsHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="patinsHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="patinsHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="patinsHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- Caminhão Leve -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Caminhão Leve</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="cl40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="cl40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="clMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="clMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="clHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="clHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="clHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="clHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- SOS PESADO -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">SOS Pesado</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="sospsd40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="sospsd40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="sospsdMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="sospsdMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="sospsdHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="sospsdHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="sospsdHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="sospsdHoraParada">Hora Parada</label>
            </div>
          </div>

          <!-- Extra Pesado -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Extra Pesado</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="xtrpsd40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="xtrpsd40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="xtrpsdMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="xtrpsdMaior40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="xtrpsdHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="xtrpsdHoraTrabalhada">Hora Trabalhada</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="xtrpsdHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="xtrpsdHoraParada">Hora Parada</label>
            </div>
          </div>


          <!-- Socorro Mecânico -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Socorro Mecânico</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="scrmec40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="scrmec40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="scrmecMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="scrmecMais40km">Mais de 40km</label>
            </div>
          </div>

          <!-- Taxi -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Taxi</h2>
          </div>
            <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="kmRodado" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="kmRodado">km Rodado</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="kmParado" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="kmParado">km Parado</label>
            </div>
          </div>

          <!-- Saida Nacional -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Chaveiro Nacional</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaNacional40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaNacional40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaNacionalMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaNacionalMais40km">Mais de 40km</label>
            </div>
          </div>

          <!-- Saída Importado -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Chaveiro Importado</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaImportado40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaImportado40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaImportadoMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaImportadoMais40km">Mais de 40km</label>
            </div>
          </div>

          <!-- Saída Confecção -->
          <!-- <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Saída Confecção</h2>
          </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaConfeccao40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaConfeccao40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaConfeccaoMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaConfeccaoMais40km">Maior de 40km</label>
            </div>
          </div> -->

          <!-- Residência -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Saída Residência</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saida40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saida40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaMais40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="saidaHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="saidaHoraTrabalhada">Hora Trabalhada</label>
            </div>
          </div>

          <!-- Saída vigilante -->
          <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-bar">
            <h2 class="mdl-card__title-text">Saída Vigilante</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="vigilante40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="vigilante40km">Até 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="vigilanteMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="vigilanteMais40km">Mais de 40km</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="vigilanteHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="vigilanteHoraTrabalhada">Hora Trabalhada</label>
            </div>
          </div>

        </form>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button runat="server" ID="cadastrar" OnClick="cadastro_seguro" Text="Cadastrar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        </asp:Button>
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Cancelar
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-newFunc-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-newFunc-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

  </div>
  </form>

  <asp:SqlDataSource ID="seguro" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  InsertCommand="INSERT INTO seguro
  (nome_seguro, codigo_prestador, cgc, setor_cadastro_tel, setor_pagamento_tel,
   fechamento_servicos_tel, casos_andamento_tel, cordenador_regiao, passeio_40km,
    passeio_maior40km, passeio_hora_trabalhada, passeio_hora_parada, ull_40km, ull_maior40km,
     ull_hora_trabalhada, ull_hora_parada, moto_40km, moto_maior40km, moto_hora_trabalhada,
      moto_hora_parada, garagem_40km, garagem_maior40km, garagem_hora_trabalhada, garagem_hora_parada,
       re_40km, re_maior40km, re_hora_trabalhada, re_hora_parada, patins_40km, patins_maior40km, patins_hora_trabalhada,
        patins_hora_parada, cl_40km, cl_maior40km, cl_hora_trabalhada, cl_hora_parada, sospsd_40km, sospsd_maior40km, sospsd_hora_trabalhada,
         sospsd_hora_parada, xtrpsd_40km, xtrpsd_maior40km, xtrpsd_hora_trabalhada, xtrpsd_hora_parada, scrmec_40km, scrmec_mais40km, km_rodado,
          km_parado, saida_nacional_40km, saida_nacional_mais40km, saida_importado_40km, saida_importado_mais40km,
           saida_40km, saida_mais40km, saida_hora_trabalhada, vigilante_40km, vigilante_mais40km, vigilante_hora_trabalhada,
           endereco, nome_amigavel,email_representante)
  VALUES
  (@nomeSeguro,@codPrestador,@cgc,@setorCadastroTel,@setorPagtoTel,
@fechamentoServicosTel,@casosAndamentoTel,@cordenadorRegiao,@passeio40km,
@passeioMaior40km,@passeioHoraTrabalhada,@passeioHoraParada,@ull40km,
@ullMaior40km,@ullHoraTrabalhada,@ullHoraParada,@moto40km,@motoMaior40km,
@motoHoraTrabalhada,@motoHoraParada,@garagem40km,@garagemMaior40km,
@garagemHoraTrabalhada,@garagemHoraParada,@re40km,@reMaior40km,@reHoraTrabalhada,
@reHoraParada,@patins40km,@patinsMaior40km,@patinsHoraTrabalhada,
@patinsHoraParada,@cl40km,@clMaior40km,@clHoraTrabalhada,@clHoraParada,@sospsd40km,
@sospsdMaior40km,@sospsdHoraTrabalhada,@sospsdHoraParada,@xtrpsd40km,@xtrpsdMaior40km,
@xtrpsdHoraTrabalhada,@xtrpsdHoraParada,@scrmec40km,@scrmecMais40km,@kmRodado,@kmParado,
@saidaNacional40km,@saidaNacionalMais40km,@saidaImportado40km,@saidaImportadoMais40km,
@saida40km,@saidaMais40km,@saidaHoraTrabalhada,
@vigilante40km,@vigilanteMais40km,@vigilanteHoraTrabalhada,
@endereco, @nomeAmigavel, @emailRepresentante)">
    <InsertParameters>
      <asp:ControlParameter Name="nomeSeguro" ControlID="nomeSeguro" PropertyName="Text"/>
      <asp:ControlParameter Name="codPrestador" ControlID="codPrestador" PropertyName="Text"/>
      <asp:ControlParameter Name="cgc" ControlID="cgc" PropertyName="Text"/>
      <asp:ControlParameter Name="setorCadastroTel" ControlID="setorCadastroTel" PropertyName="Text"/>
      <asp:ControlParameter Name="setorPagtoTel" ControlID="setorPagtoTel" PropertyName="Text"/>
      <asp:ControlParameter Name="fechamentoServicosTel" ControlID="fechamentoServicosTel" PropertyName="Text"/>
      <asp:ControlParameter Name="casosAndamentoTel" ControlID="casosAndamentoTel" PropertyName="Text"/>
      <asp:ControlParameter Name="cordenadorRegiao" ControlID="cordenadorRegiao" PropertyName="Text"/>
      <asp:ControlParameter Name="passeio40km" ControlID="passeio40km" PropertyName="Text"/>
      <asp:ControlParameter Name="passeioMaior40km" ControlID="passeioMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="passeioHoraTrabalhada" ControlID="passeioHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="passeioHoraParada" ControlID="passeioHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="ull40km" ControlID="ull40km" PropertyName="Text"/>
      <asp:ControlParameter Name="ullMaior40km" ControlID="ullMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="ullHoraTrabalhada" ControlID="ullHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="ullHoraParada" ControlID="ullHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="moto40km" ControlID="moto40km" PropertyName="Text"/>
      <asp:ControlParameter Name="motoMaior40km" ControlID="motoMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="motoHoraTrabalhada" ControlID="motoHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="motoHoraParada" ControlID="motoHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="garagem40km" ControlID="garagem40km" PropertyName="Text"/>
      <asp:ControlParameter Name="garagemMaior40km" ControlID="garagemMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="garagemHoraTrabalhada" ControlID="garagemHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="garagemHoraParada" ControlID="garagemHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="re40km" ControlID="re40km" PropertyName="Text"/>
      <asp:ControlParameter Name="reMaior40km" ControlID="reMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="reHoraTrabalhada" ControlID="reHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="reHoraParada" ControlID="reHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="patins40km" ControlID="patins40km" PropertyName="Text"/>
      <asp:ControlParameter Name="patinsMaior40km" ControlID="patinsMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="patinsHoraTrabalhada" ControlID="patinsHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="patinsHoraParada" ControlID="patinsHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="cl40km" ControlID="cl40km" PropertyName="Text"/>
      <asp:ControlParameter Name="clMaior40km" ControlID="clMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="clHoraTrabalhada" ControlID="clHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="clHoraParada" ControlID="clHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="sospsd40km" ControlID="sospsd40km" PropertyName="Text"/>
      <asp:ControlParameter Name="sospsdMaior40km" ControlID="sospsdMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="sospsdHoraTrabalhada" ControlID="sospsdHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="sospsdHoraParada" ControlID="sospsdHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="xtrpsd40km" ControlID="xtrpsd40km" PropertyName="Text"/>
      <asp:ControlParameter Name="xtrpsdMaior40km" ControlID="xtrpsdMaior40km" PropertyName="Text"/>
      <asp:ControlParameter Name="xtrpsdHoraTrabalhada" ControlID="xtrpsdHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="xtrpsdHoraParada" ControlID="xtrpsdHoraParada" PropertyName="Text"/>
      <asp:ControlParameter Name="scrmec40km" ControlID="scrmec40km" PropertyName="Text"/>
      <asp:ControlParameter Name="scrmecMais40km" ControlID="scrmecMais40km" PropertyName="Text"/>
      <asp:ControlParameter Name="kmRodado" ControlID="kmRodado" PropertyName="Text"/>
      <asp:ControlParameter Name="kmParado" ControlID="kmParado" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaNacional40km" ControlID="saidaNacional40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaNacionalMais40km" ControlID="saidaNacionalMais40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaImportado40km" ControlID="saidaImportado40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaImportadoMais40km" ControlID="saidaImportadoMais40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaConfeccao40km" ControlID="saidaConfeccao40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaConfeccaoMais40km" ControlID="saidaConfeccaoMais40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saida40km" ControlID="saida40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaMais40km" ControlID="saidaMais40km" PropertyName="Text"/>
      <asp:ControlParameter Name="saidaHoraTrabalhada" ControlID="saidaHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="vigilante40km" ControlID="vigilante40km" PropertyName="Text"/>
      <asp:ControlParameter Name="vigilanteMais40km" ControlID="vigilanteMais40km" PropertyName="Text"/>
      <asp:ControlParameter Name="vigilanteHoraTrabalhada" ControlID="vigilanteHoraTrabalhada" PropertyName="Text"/>
      <asp:ControlParameter Name="endereco" ControlID="endereco" PropertyName="Text"/>
      <asp:ControlParameter Name="emailRepresentante" ControlID="emailRepresentante" PropertyName="Text"/>
      <asp:ControlParameter Name="nomeAmigavel" ControlID="nomeAmigavel" PropertyName="Text"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white" id="fabButton">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>
  <script type="text/javascript">
  var shellTitle = document.getElementById("shellTitle");
  window.onload = shellTitle.innerHTML = 'Seguro';
  </script>
</asp:Content>
