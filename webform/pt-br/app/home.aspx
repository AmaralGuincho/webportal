<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="pt_br_app_home" MasterPageFile="~/pt-br/app/index.master" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">
    .fab{display:none;}
    .card{
      align-items: flex-start;
      align-content: flex-start;
    }
    .card-content{
      padding:0;
      margin:0;
      width:100%;
    }
    label{
      font-size: 14px;
      font-weight: 400;
    }
  </style>

  <div class="mdl-grid card-box">
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--7-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone" id="card-Cliente">
      <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">Clientes Recentes</h2>
      </div>
      <div class="card-content mdl-grid">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="client1">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://github.com/caiobep.png" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              <label>Caio Amaral Corrêa</label>
            </td>
            <td class="card-phone mdl-cell mdl-cell--hide-phone">
              <label>(12)99713-6991</label>
            </td>
          </tr>
          <tr class="client2">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/11034179_881465555247936_954094870571254743_n.jpg?oh=c0c24a598efd0edf83d568ecf3bd1445&oe=57E72A27&__gda__=1473829486_95f7845edeabc8dbe38abee02156720a" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              <label>Arthur Tomino</label>
            </td>
            <td class="card-phone mdl-cell mdl-cell--hide-phone">
              <label>(12)997136-6991</label>
            </td>
          </tr>
          <tr class="client3">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://scontent-atl3-1.xx.fbcdn.net/v/t1.0-9/10850040_685418794888629_4557242307461784229_n.jpg?oh=b61cf6c0ee16fe6e2e0a7685b5fef011&oe=57DF0364" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              <label>Pedro Henrrique</label>
            </td>
            <td class="card-phone mdl-cell mdl-cell--hide-phone">
              <label>(12)997136-8991</label>
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--5-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone" id="card-ordemServico">
      <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">Ordens de Serviço Abertas</h2>
      </div>
      <div class="card-content mdl-grid">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="os1">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label>#1293</label>
            </td>
            <td class="os-date mdl-cell">
              <label>14:00 PM 15/05/17</label>
            </td>
          </tr>
          <tr class="os2">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label>#12903</label>
            </td>
            <td class="os-date">
              <label>15:00 PM 15/05/17</label>
            </td>
          </tr>
          <tr class="os3">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label>#12991</label>
            </td>
            <td class="os-date">
              <label>3:00 AM 13/03/17</label>
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone" id="card-Cliente">
      <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">Frota</h2>
      </div>
      <div class="card-content mdl-grid">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
            <tr class="frota1">
              <td class="card-avatar mdl-data-table__cell--non-numeric">
                <img src="http://www.federalassistance.com.br/img/veiculos/originais/leve_branco2_orig.jpg" class="avatar"/>
              </td>
              <td class="card-name mdl-data-table__cell--non-numeric">
                <label>IVECO 3</label>
              </td>
              <td class="card-phone mdl-cell mdl-data-table__cell--non-numeric">
                <label>Disponível</label>
              </td>
            </tr>
            <tr class="frota2">
              <td class="card-avatar mdl-data-table__cell--non-numeric">
                <img src="http://origin.fstatic.com.br/240x180/iveco-daily-guincho_2c6789d2.jpg" class="avatar"/>
              </td>
              <td class="card-name mdl-data-table__cell--non-numeric">
                <label>IVECO 1</label>
              </td>
              <td class="card-phone mdl-cell mdl-data-table__cell--non-numeric">
                <label>Disponível</label>
              </td>
            </tr>
            <tr class="frota3">
              <td class="card-avatar mdl-data-table__cell--non-numeric">
                <img src="http://www.caminhoesecarretas.com.br/PortalVeiculos/Fotos/547342_img_0003_big.jpg" class="avatar"/>
              </td>
              <td class="card-name mdl-data-table__cell--non-numeric">
                <label>Mercedes 1</label>
              </td>
              <td class="card-phone mdl-cell mdl-data-table__cell--non-numeric">
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--4-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone" id="card-Funcionario">
      <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">Funcionários</h2>
      </div>
      <div class="card-content mdl-grid">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="client1">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://scontent-gru2-1.xx.fbcdn.net/v/t1.0-9/1236344_573064589416811_349776953_n.jpg?oh=b53b185822f398b27b8c90045fbbcc80&oe=57E50DE5" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              <label>Theo Amaral</label>
            </td>
          </tr>
          <tr class="client2">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/922935_671198722894050_1722055897_n.jpg?oh=a2cb8b968372529f32b5719f9a5037a0&oe=57DD3102&__gda__=1473472625_39d80b1a7da5ea81ca13fe084a4cdb71" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              <label>Jéssica Amaral</label>
            </td>
          </tr>
          <tr class="client3">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/12036466_647980228691661_6971487042815542337_n.jpg?oh=29cb08d21ea44c135bddcf55fb4c1526&oe=57D0745F&__gda__=1469848594_950c454086e6dccbc942b8d2fbdac03f" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
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
  </div>

  <button class="fab mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--fab mdl-button--colored mdl-color--red mdl-color-text--white">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>
</asp:Content>
