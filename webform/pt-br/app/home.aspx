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
              <label id="osID1" runat="server">Ainda não temos dados sufucientes</label>
            </td>
            <td class="os-date mdl-cell">
              <label id="osData1" runat="server">--</label>
            </td>
          </tr>
          <tr class="os2">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID2" runat="server">Ainda não temos dados sufucientes</label>
            </td>
            <td class="os-date mdl-cell">
              <label id="osData2" runat="server">--</label>
            </td>
          </tr>
          <tr class="os3">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID3" runat="server">Ainda não temos dados sufucientes</label>
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
                <img src="http://www.federalassistance.com.br/img/veiculos/originais/leve_branco2_orig.jpg" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label>IVECO 3</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label>Disponível</label>
              </td>
            </tr>
            <tr class="frota2">
              <td class="mdl-data-table__cell--non-numeric">
                <img src="http://origin.fstatic.com.br/240x180/iveco-daily-guincho_2c6789d2.jpg" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label>IVECO 1</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label>Disponível</label>
              </td>
            </tr>
            <tr class="frota3">
              <td class="mdl-data-table__cell--non-numeric">
                <img src="http://www.caminhoesecarretas.com.br/PortalVeiculos/Fotos/547342_img_0003_big.jpg" class="avatar"/>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label>Mercedes 1</label>
              </td>
              <td class="mdl-cell mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label>Em Serviço</label>
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
          <tr class="client1">
            <td class="mdl-data-table__cell--non-numeric">
              <img src="https://scontent-gru2-1.xx.fbcdn.net/v/t1.0-9/1236344_573064589416811_349776953_n.jpg?oh=b53b185822f398b27b8c90045fbbcc80&oe=57E50DE5" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>Theo Amaral</label>
            </td>
          </tr>
          <tr class="client2">
            <td class="mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/922935_671198722894050_1722055897_n.jpg?oh=a2cb8b968372529f32b5719f9a5037a0&oe=57DD3102&__gda__=1473472625_39d80b1a7da5ea81ca13fe084a4cdb71" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>Jéssica Amaral</label>
            </td>
          </tr>
          <tr class="client3">
            <td class="mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/12036466_647980228691661_6971487042815542337_n.jpg?oh=29cb08d21ea44c135bddcf55fb4c1526&oe=57D0745F&__gda__=1469848594_950c454086e6dccbc942b8d2fbdac03f" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>Carolina Achetti</label>
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
              <img src="https://scontent-atl3-1.xx.fbcdn.net/v/l/t1.0-9/13227004_117463975336487_4831492734377396982_n.jpg?oh=409367d318020533fde709ad7d6c187b&oe=579C3C22" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>Anderson Guedes</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img src="https://scontent-atl3-1.xx.fbcdn.net/v/t1.0-9/11406877_1085566011473376_8986291945168675517_n.jpg?oh=14ee0e390d571dad6f4918daa31d6d5d&oe=57D60456" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>Leonardo De Vitto</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpt1/v/t1.0-1/c24.0.150.150/1489072_10201726808907148_842429878_n.jpg?oh=0d0b0a8b3df23e7d2780b133b598fe80&oe=57D38C7E&__gda__=1469848333_ed545cd52cdfc12172f54d149b6c9634" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>Fatbiana</label>
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
                <label>142</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label>São José dos Campos</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label>Anderson Guedes</label>
              </td>
              <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
                <label>Mercedes 1</label>
              </td>
            </tr>
            <tr class="viagem-2">
              <td class="mdl-data-table__cell--non-numeric">
                <label>122</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric">
                <label>Caraguatatúba</label>
              </td>
              <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
                <label>Leonardo DeVitto</label>
              </td>
              <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
                <label>Iveco 2</label>
              </td>
          </tr>
          <tr class="viagem-3">
            <td class="mdl-data-table__cell--non-numeric">
              <label>132</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>Jacareí</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric mdl-cell--hide-phone">
              <label>Fatbiana</label>
            </td>
            <td class="mdl-data-table__cel--non-numeric mdl-cell--hide-phone">
              <label>Mercedes 3</label>
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
              <label>NomeCli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#sinistro</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label>NomeCli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#sinistro</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label>NomeCli</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label>#sinistro</label>
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
              <label>#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#idOs</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#idOs</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label>#idServico</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label>#idOs</label>
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
              <label>#Nome_cli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#modeloVei</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#placa</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#Nome_cli</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#modeloVei</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label>#placa</label>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label>#Nome_cli</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label>#modeloVei</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label>#placa</label>
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
