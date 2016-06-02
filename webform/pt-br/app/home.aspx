<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="pt_br_app_home" MasterPageFile="~/pt-br/app/index.master" %>

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
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--7-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Cliente">
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
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--5-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-ordemServico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Ordens de Serviço Abertas</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="os1">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID1" runat="server">Sem Dados</label>
            </td>
            <td class="os-date mdl-cell">
              <label id="osData1" runat="server">NotConnected</label>
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
              <label id="osData2" runat="server">NotConnected</label>
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
              <label id="osData3" runat="server">NotConnected</label>
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
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
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
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
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
              <label id="nomeFunc1" runat="server" >Theo Amaral</label>
            </td>
          </tr>
          <tr class="funcionario2">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc2" runat="server" >Theo Amaral</label>
            </td>
          </tr>
          <tr class="funcionario3">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc3" runat="server">Theo Amaral</label>
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
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
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
              <label runat="server" id="nomeMot1" >sem dados</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot2" >sem dados</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot3" >sem dados</label>
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
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--8-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-Vs">
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
                <label runat="server" id="codigoServicoProgresso1">código</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label runat="server" id="cidadeServicoProgresso1">Cidade</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeMotoristaServicoProgresso1">Motorista</label>
              </td>
              <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeFrotaServicoProgresso1">Frota</label>
              </td>
            </tr>
            <tr class="viagem-2">
              <td class="mdl-data-table__cell--non-numeric">
                <label runat="server" id="codigoServicoProgresso2">código</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label runat="server" id="cidadeServicoProgresso2">Cidade</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeMotoristaServicoProgresso2">Motorista</label>
              </td>
              <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
                <label runat="server" id="nomeFrotaServicoProgresso2">Frota</label>
              </td>
          </tr>
          <tr class="viagem-3">
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServicoProgresso3">código</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="cidadeServicoProgresso3">Cidade</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
              <label runat="server" id="nomeMotoristaServicoProgresso3">Motorista</label>
            </td>
            <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
              <label runat="server" id="nomeFrotaServicoProgresso3">Frota</label>
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
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
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
              <label runat="server" id="nomeCliSinistro1">NomeCli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoSinistro1">#sinistro</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeCliSinistro2">NomeCli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoSinistro2">#sinistro</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="nomeCliSinistro3">NomeCli</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoSinistro3">#sinistro</label>
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
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-servico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Serviços</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico1">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS1">#idOs</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico2">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS2">#idOs</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoServico3">#idServico</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoOS3">#idOs</label>
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-servico-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-servico-options">
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--8-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="card-veiculo">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Veículos</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeCliVeiculo1">#Nome_cli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="modeloVeiculo1">#modeloVei</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="placaVeiculo1">#placa</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeCliVeiculo2">#Nome_cli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="modeloVeiculo2">#modeloVei</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="placaVeiculo2">#placa</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="nomeCliVeiculo3">#Nome_cli</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="modeloVeiculo3">#modeloVei</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="placaVeiculo3">#placa</label>
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
  ID="lattestViagemProgresso" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT vs.id_servico, vgm.cidadeC_viagem, mot.nome_func,
   frta.nome_frota, frta.placa_frota
    FROM viagem_servico vs
     INNER JOIN viagem vgm on
      vs.id_viagem = vgm.id_viagem
       INNER JOIN motoristaOnly mot on
        vgm.id_mot = mot.id_mot
          INNER JOIN frota frta on
          vgm.id_frota = frta.id_frota">
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
  ID="lattestSinistro" runat="server"
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
   ORDER BY id_os DESC LIMIT 3  ">
  </asp:SqlDataSource>

  <script type="text/javascript">
  function mascara(t,mask){
    var i = t.value.length;
    var output = mask.substring(1,0);
    var input = mask.substring(i);
    if(input.substring(0,1) != output){
      t.value += input.substring(0,1);
    }
  </script>

</asp:Content>
