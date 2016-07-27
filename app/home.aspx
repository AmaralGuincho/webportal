<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="app_home" MasterPageFile="~/app/index.master" %>

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
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Vs">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Viagens em Progresso</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <thead>
            <tr>
              <th class="mdl-data-table__cell--non-numeric">
                Código Serviço
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                Cidade
              </th>
              <th class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                Motorista
              </th>
              <th frota="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                Frota
              </th>
            </tr>
          <tbody>
            <tr class="viagem-1">
              <td class="mdl-data-table__cell--non-numeric">
                <label runat="server" id="codigoServicoProgresso1">--</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label runat="server" id="cidadeServicoProgresso1">--</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeMotoristaServicoProgresso1">--</label>
              </td>
              <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeFrotaServicoProgresso1">--</label>
              </td>
            </tr>
            <tr class="viagem-2">
              <td class="mdl-data-table__cell--non-numeric">
                <label runat="server" id="codigoServicoProgresso2">--</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label runat="server" id="cidadeServicoProgresso2">--</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeMotoristaServicoProgresso2">--</label>
              </td>
              <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeFrotaServicoProgresso2">--</label>
              </td>
          </tr>
          <tr class="viagem-3">
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServicoProgresso3">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="cidadeServicoProgresso3">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
              <label runat="server" id="nomeMotoristaServicoProgresso3">--</label>
            </td>
            <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
              <label runat="server" id="nomeFrotaServicoProgresso3">--</label>
            </td>
          </tr>
        </tbody>
      </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-vp-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-vp-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-ordemServico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Ordens de Serviço Abertas</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="os1">
            <td class="os-code">
              <label id="osID1" runat="server">--</label>
            </td>
            <td class="os-date mdl-cell">
              <label id="osData1" runat="server">--</label>
            </td>
          </tr>
          <tr class="os2">
            <td class="os-code">
              <label id="osID2" runat="server">--</label>
            </td>
            <td class="os-date mdl-cell">
              <label id="osData2" runat="server">--</label>
            </td>
          </tr>
          <tr class="os3">
            <td class="os-code">
              <label id="osID3" runat="server">--</label>
            </td>
            <td class="os-date mdl-cell">
              <label id="osData3" runat="server">--</label>
            </td>
          </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-os-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-os-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Cliente">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Frota</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
            <tr class="frota1">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrota1" src="" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrota1" runat="server">--</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrota1" runat="server">--</label>
              </td>
            </tr>
            <tr class="frota2">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrota2" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrota2" runat="server">--</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrota2" runat="server">--</label>
              </td>
            </tr>
            <tr class="frota3">
              <td class="mdl-data-table__cell--non-numeric">
                <img runat="server" id="imgFrota3" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label id="nomeFrota3" runat="server">--</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone mdl-cell--hide-desktop">
                <label id="statusFrota3" runat="server">--</label>
              </td>
            </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-frota-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-frota-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Funcionario">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Funcionários</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="funcionario1">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc1" runat="server" >--</label>
            </td>
          </tr>
          <tr class="funcionario2">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc2" runat="server" >--</label>
            </td>
          </tr>
          <tr class="funcionario3">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc3" runat="server">--</label>
            </td>
          </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-func-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-func-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-veiculo">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Veículos</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeCliVeiculo1">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="modeloVeiculo1">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="placaVeiculo1">--</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeCliVeiculo2">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="modeloVeiculo2">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="placaVeiculo2">--</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="nomeCliVeiculo3">--</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="modeloVeiculo3">--</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="placaVeiculo3">--</label>
          </td>
        </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-veiculo-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-veiculo-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Motorista">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Motoristas</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot1" >--</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot2" >--</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot3" >--</label>
            </td>
          </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-moto-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-moto-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--8-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Cliente">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Clientes Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="client1">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgCli1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeCli1" runat="server">Ainda Não Temos Dados Suficientes</label>
            </td>
            <td class="mdl-cell mdl-cell--hide-phone">
              <label id="telCli1" runat="server">--</label>
            </td>
          </tr>
          <tr class="client2">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgCli2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeCli2" runat="server">Ainda Não Temos Dados Suficientes</label>
            </td>
            <td class="mdl-cell mdl-cell--hide-phone">
              <label id="telCli2"  runat="server">--</label>
            </td>
          </tr>
          <tr class="client3">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgCli3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeCli3" runat="server">Ainda Não Temos Dados Suficientes</label>
            </td>
            <td class="mdl-cell mdl-cell--hide-phone">
              <label id="telCli3" runat="server">--</label>
            </td>
          </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" href="clientes.aspx">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Sinistro">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Sinistros</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeCliSinistro1">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoSinistro1">--</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeCliSinistro2">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoSinistro2">--</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="nomeCliSinistro3">--</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoSinistro3">--</label>
          </td>
        </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-sinistro-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-sinistro-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-servico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Serviços</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <thead>
            <tr>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Código Servico</label>
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Código Os</label>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico1">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS1">--</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico2">--</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS2">--</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoServico3">--</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoOS3">--</label>
          </td>
        </tr>
      </tbody>
        </table>
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-servico-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-servico-options">
            <li class="mdl-menu__item">Esconder</li>
            <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

  </div>


  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white" hidden id="fabButton">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>
  <script type="text/javascript">
    var shellTitle = document.getElementById("shellTitle");
    window.onload = shellTitle.innerHTML = 'Inbox';
  </script>
  <!-- Sql Interacions -->
  <asp:SqlDataSource
  ID="lattestClientes" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT img_cli, nome_cli, sobrenome_cli, telefone_cli FROM cliente ORDER BY id_cli DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT id_os, dtab_os FROM ordem_de_servico WHERE (status_os = 'Aberto') ORDER BY id_os ASC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestFrota" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT nome_frota, img_frota, placa_frota FROM frota ORDER BY id_frota DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestFuncionarios" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT img_func, nome_func, sobrenome_func, tel_func FROM funcionario WHERE id_cargo BETWEEN 1 and 2 ORDER BY id_func DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestMotoristas" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT func.nome_func, func.sobrenome_func, func.img_func, func.tel_func FROM funcionario func INNER JOIN motorista mot ON (func.id_func = mot.id_func) ORDER BY func.id_func DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestOnGoingTrip" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT servico.tipo_servico, viagem.cidade_destino_viagem, motoristaOnly.nome_func,
   frota.nome_frota, frota.placa_frota
   FROM servico_os INNER JOIN viagem_servico ON
        servico_os.id_os = viagem_servico.id_os
        INNER JOIN servico on
        servico_os.id_servico = servico.id_servico
        INNER JOIN viagem on
        viagem_servico.id_viagem = viagem.id_viagem
        INNER JOIN motoristaOnly on
        viagem.id_mot = motoristaOnly.id_mot
        INNER JOIN ordem_de_servico ON
        servico_os.id_os = ordem_de_servico.id_os
        INNER JOIN funcionario on
        ordem_de_servico.id_func = funcionario.id_func
        INNER JOIN frota on
        viagem.id_frota = frota.id_frota
    WHERE ordem_de_servico.status_os = 'aberto'
              ORDER BY servico.id_servico DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestSinistro" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT sinistro.sinistro, cliente.nome_cli
  FROM sinistro INNER JOIN cliente on
    sinistro.id_sinistro = cliente.id_cli ORDER by sinistro.id_sinistro DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestVeiculo" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT cliente.nome_cli, veiculo.modelo_veiculo, veiculo.cor_veiculo, veiculo.placa_veiculo
  FROM veiculo INNER JOIN cliente on
  veiculo.id_cli = cliente.id_cli ORDER BY id_veiculo DESC LIMIT 3  ">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestServicoOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT id_os, id_servico FROM servico_os
   ORDER BY id_os DESC LIMIT 3 ">
  </asp:SqlDataSource>

</asp:Content>
