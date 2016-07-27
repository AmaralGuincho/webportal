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

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeSeguro" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeSeguro">nomeSeguro</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="codPrestador" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="codPrestador">codPrestador</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="cep" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="cep">cep</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="cgc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="cgc">cgc</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="setorCadastroTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="setorCadastroTel">setorCadastroTel</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="setorPagtoTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="setorPagtoTel">setorPagtoTel</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="fechamentoServicosTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="fechamentoServicosTel">fechamentoServicosTel</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="casosAndamentoTel" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="casosAndamentoTel">casosAndamentoTel</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="cordenadorRegiao" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="cordenadorRegiao">cordenadorRegiao</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="passeio40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="passeio40km">passeio40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="passeioMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="passeioMaior40km">passeioMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="passeioHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="passeioHoraTrabalhada">passeioHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="passeioHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="passeioHoraParada">passeioHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="ull40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="ull40km">ull40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="ullMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="ullMaior40km">ullMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="ullHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="ullHoraTrabalhada">ullHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="ullHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="ullHoraParada">ullHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="moto40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="moto40km">moto40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="motoMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="motoMaior40km">motoMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="motoHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="motoHoraTrabalhada">motoHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="motoHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="motoHoraParada">motoHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="garagem40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="garagem40km">garagem40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="garagemMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="garagemMaior40km">garagemMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="garagemHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="garagemHoraTrabalhada">garagemHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="garagemHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="garagemHoraParada">garagemHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="re40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="re40km">re40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="reMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="reMaior40km">reMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="reHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="reHoraTrabalhada">reHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="reHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="reHoraParada">reHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="patins40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="patins40km">patins40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="patinsMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="patinsMaior40km">patinsMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="patinsHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="patinsHoraTrabalhada">patinsHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="patinsHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="patinsHoraParada">patinsHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="cl40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="cl40km">cl40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="clMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="clMaior40km">clMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="clHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="clHoraTrabalhada">clHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="clHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="clHoraParada">clHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="sospsd40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="sospsd40km">sospsd40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="sospsdMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="sospsdMaior40km">sospsdMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="sospsdHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="sospsdHoraTrabalhada">sospsdHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="sospsdHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="sospsdHoraParada">sospsdHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="xtrpsd40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="xtrpsd40km">xtrpsd40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="xtrpsdMaior40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="xtrpsdMaior40km">xtrpsdMaior40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="xtrpsdHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="xtrpsdHoraTrabalhada">xtrpsdHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="xtrpsdHoraParada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="xtrpsdHoraParada">xtrpsdHoraParada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="scrmec40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="scrmec40km">scrmec40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="scrmecMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="scrmecMais40km">scrmecMais40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="kmRodado" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="kmRodado">kmRodado</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="kmParado" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="kmParado">kmParado</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaNacional40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaNacional40km">saidaNacional40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaNacionalMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaNacionalMais40km">saidaNacionalMais40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaImportado40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaImportado40km">saidaImportado40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaImportadoMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaImportadoMais40km">saidaImportadoMais40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaConfeccao40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaConfeccao40km">saidaConfeccao40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaConfeccaoMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaConfeccaoMais40km">saidaConfeccaoMais40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saida40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saida40km">saida40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaMais40km">saidaMais40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="saidaHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="saidaHoraTrabalhada">saidaHoraTrabalhada</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="vigilante40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="vigilante40km">vigilante40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="vigilanteMais40km" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="vigilanteMais40km">vigilanteMais40km</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="vigilanteHoraTrabalhada" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="vigilanteHoraTrabalhada">vigilanteHoraTrabalhada</label>
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
  (nome_seguro, cod_prestador, cep, cgc, setor_cadastro_tel, setor_pagto_tel,
   fechamento_servicos_tel, casos_andamento_tel, cordenador_regiao, passeio_40km,
    passeio_maior40km, passeio_hora_trabalhada, passeio_hora_parada, ull_40km, ull_maior40km,
     ull_hora_trabalhada, ull_hora_parada, moto_40km, moto_maior40km, moto_hora_trabalhada,
      moto_hora_parada, garagem_40km, garagem_maior40km, garagem_hora_trabalhada, garagem_hora_parada,
       re_40km, re_maior40km, re_hora_trabalhada, re_hora_parada, patins_40km, patins_maior40km, patins_hora_trabalhada,
        patins_hora_parada, cl_40km, cl_maior40km, cl_hora_trabalhada, cl_hora_parada, sospsd_40km, sospsd_maior40km, sospsd_hora_trabalhada,
         sospsd_hora_parada, xtrpsd_40km, xtrpsd_maior40km, xtrpsd_hora_trabalhada, xtrpsd_hora_parada, scrmec_40km, scrmec_mais40km, km_rodado,
          km_parado, saida_nacional_40km, saida_nacional_mais40km, saida_importado_40km, saida_importado_mais40km, saida_confeccao_40km, saida_confeccao_mais40km,
           saida_40km, saida_mais40km, saida_hora_trabalhada, vigilante_40km, vigilante_mais40km, vigilante_hora_trabalhada)
  VALUES
  (@nomeSeguro,@codPrestador,@cep,@cgc,@setorCadastroTel,@setorPagtoTel,
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
@saidaConfeccao40km,@saidaConfeccaoMais40km,@saida40km,@saidaMais40km,@saidaHoraTrabalhada,
@vigilante40km,@vigilanteMais40km,@vigilanteHoraTrabalhada)">
    <InsertParameters>
      <asp:ControlParameter Name="nomeSeguro" ControlID="nomeSeguro" PropertyName="Text"/>
      <asp:ControlParameter Name="codPrestador" ControlID="codPrestador" PropertyName="Text"/>
      <asp:ControlParameter Name="cep" ControlID="cep" PropertyName="Text"/>
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
