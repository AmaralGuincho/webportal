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
  </style>
  <div class="mdl-grid card-box">
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--4-col-tablet mdl-cell--12-col-phone">
      <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">Últimos Clientes</h2>
      </div>
      <div class="card-content mdl-grid">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col-desktop mdl-cell--8-tablet mdl-cell--4-phone">
          <tr class="client1">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://github.com/caiobep.png" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              Caio Amaral Corrêa
            </td>
            <td class="card-phone">
              (12)99713-6991
            </td>
          </tr>
          <tr class="client2">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/11034179_881465555247936_954094870571254743_n.jpg?oh=c0c24a598efd0edf83d568ecf3bd1445&oe=57E72A27&__gda__=1473829486_95f7845edeabc8dbe38abee02156720a" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              Arthur Tomino
            </td>
            <td class="card-phone">
              (12)997136-6991
            </td>
          </tr>
          <tr class="client3">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://scontent-atl3-1.xx.fbcdn.net/v/t1.0-9/10850040_685418794888629_4557242307461784229_n.jpg?oh=b61cf6c0ee16fe6e2e0a7685b5fef011&oe=57DF0364" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              Pedro Henrrique
            </td>
            <td class="card-phone">
              (12)997136-8991
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-options">
            <li class="mdl-menu__item"><i class="material-icons md-14">visibility_off</i>  Esconder</li>
            <li class="mdl-menu__item"><i class="material-icons md-14">star</i> Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--4-col-tablet mdl-cell--12-col-phone">
      <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">Ordens de Serviço Abertas</h2>
      </div>
      <div class="card-content mdl-grid">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="client1">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://github.com/caiobep.png" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              Caio Amaral Corrêa
            </td>
            <td class="card-phone">
              (12)99713-6991
            </td>
          </tr>
          <tr class="client2">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/11034179_881465555247936_954094870571254743_n.jpg?oh=c0c24a598efd0edf83d568ecf3bd1445&oe=57E72A27&__gda__=1473829486_95f7845edeabc8dbe38abee02156720a" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              Arthur Tomino
            </td>
            <td class="card-phone">
              (12)997136-6991
            </td>
          </tr>
          <tr class="client3">
            <td class="card-avatar mdl-data-table__cell--non-numeric">
              <img src="https://scontent-atl3-1.xx.fbcdn.net/v/t1.0-9/10850040_685418794888629_4557242307461784229_n.jpg?oh=b61cf6c0ee16fe6e2e0a7685b5fef011&oe=57DF0364" class="avatar"/>
            </td>
            <td class="card-name mdl-data-table__cell--non-numeric">
              Pedro Henrrique
            </td>
            <td class="card-phone">
              (12)997136-8991
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-oe-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-oe-options">
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
