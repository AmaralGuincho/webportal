﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servico.aspx.cs" Inherits="pt_br_app_servico" MasterPageFile="~/pt-br/app/index.master"%>

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
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Serviços Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options" UseSubmitBehavior="False">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Ordens de Serviço</h2>
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
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="novoServico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Abrindo um Serviço</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">

        <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Escolha um tipo de Cliente</h2>
          <a ID="clienteExistente" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('searchCli','newCli');">
            Cliente Existente
          </a>
          <a ID="clienteNovo" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('newCli','searchCli');">
            Novo Cliente
          </a>
        </div>

        <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="searchCli" style="display:none;">
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
            <asp:Button  runat="server" id="usarPesqCli" Text="Ultilizar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
            <a onclick="showCard('none','searchCli');" id="pesqCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
              cancelar
            </a>
          </div>
        </div>

        <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="newCli" style="display:none;">
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
            <asp:Button  runat="server" ID="novoCliente" Text="Cadastrar e Ultilizar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
            <a id="newCliCancelar" onclick="showCard('none','newCli')" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
              cancelar
            </a>
          </div>
        </div>

      <!-- Fim cliente -->

      <!-- inicio veiculo -->
      <div class="opcao mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Veículo</h2>
        <a onclick="showCard('newVeiculo','none')" ID="clienteExistente" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Adicionar um Veículo
        </a>
      </div>

      <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="newVeiculo" style="display:none;">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Novo Veículo</h2>
        </div>
        <div class="mdl-card__supporting-text mdl-grid">
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="modeloVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="modeloVeiculo">Modelo Veículo</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--2-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="placaVeiculo" pattern="[0-9,-]*" onkeydown="mascara(this,'###-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="placaVeiculo">Placa</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="anoVeiculo" pattern="[0-9,/]*" onkeypress="mascara(this,'####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="anoVeiculo">Ano de Fabricação</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="corVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="corVeiculo">Cor</label>
          </div>
        </div>
        <div class="mdl-card__actions">
          <asp:Button Text="Ultilizar" id="btnNewVeiculo" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','newVeiculo')">
            cancelar
          </a>
        </div>
      </div>

      <!-- fim veiculo -->

      <div class="opcao mdl-cell mdl-cell--6-col">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Selecione o Tipo de Serviço</h2>
        </div>
        <div class="mdl-grid">
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
            <asp:DropDownList ID="tipoServico" runat="server" class="dropdown mdl-cell mdl-cell--4-col">
              <asp:ListItem Text="Retirada de Automovel" value="1"/>
              <asp:ListItem Text="Transporte" Value="2"/>
              <asp:ListItem Text="SOS-Guincho" Value="3"/>
            </asp:DropDownList>
          </div>
        </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--6-col">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Selecione o Seguro</h2>
        </div>
        <div class="mdl-grid">
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
            <asp:DropDownList ID="seguroServico" runat="server" class="dropdown">
              <asp:ListItem Text="Bradesco" value="1"/>
              <asp:ListItem Text="Sul América" Value="2"/>
              <asp:ListItem Text="itau" Value="3"/>
            </asp:DropDownList>
          </div>
        </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Selecione um Sinistro</h2>
        <a ID="sinistroExistente" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('newSinistro','searchSinistro')">
          Usar um sinistro Existênte
        </a>
        <a ID="sinistroNovo" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('searchSinistro','newSinistro')">
          Criar um novo Sinistro
        </a>
      </div>

      <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="newSinistro" style="display:none;">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Novo Sinistro</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <form action="#">
            <div class="mdl-textfield mdl-js-textfield">
              <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="numeroSinistro"></asp:TextBox>
              <label class="mdl-textfield__label" for="numeroSinistro">Número do Sinistro</label>
            </div>
          </form>
        </div>
        <div class="mdl-card__actions">
          <asp:Button Text="Ultilizar" id="sinistroNovo" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','newSinistro')">
            cancelar
          </a>
        </div>
      </div>

      <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="searchSinistro" style="display:none;">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Sinistro Existênte</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <form action="#">
            <div class="mdl-textfield mdl-js-textfield">
              <asp:DropDownList ID="sinistroddl" runat="server" class="dropdown">
                <asp:ListItem Text="Servidor fora do ar" />
              </asp:DropDownList>
            </div>
          </form>
        </div>
        <div class="mdl-card__actions">
          <asp:Button Text="Ultilizar" id="sinistroExistente" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','searchSinistro')">
            cancelar
          </a>
        </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Viagem</h2>
        <a ID="sinistroExistente" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('newViagem','none')">
          Adicionar uma Viagem
        </a>
      </div>

      <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="newViagem" style="display:none;">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Adicionando uma Viagem</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <h2 class="mdl-card__title-text">Local de Partida</h2>
          <form action="#">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
              <input ID="cepViagemPartida" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepPartida()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemPartida">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemPartida" class="mdl-textfield__input" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemPartida">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidViagemPartida" class="mdl-textfield__input" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="cidViagemPartida">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemPartida" class="mdl-textfield__input" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemPartida">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="endViagemPartida" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="endViagemPartida">Endereço</label>
            </div>
          </form>
          <h2 class="mdl-card__title-text">Local do Destino</h2>
          <form action="#">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
              <input ID="cepViagemDestino" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepDestino()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemDestino">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemDestino" class="mdl-textfield__input" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemDestino">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidViagemDestino" class="mdl-textfield__input" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="cidViagemDestino">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemDestino" class="mdl-textfield__input" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemDestino">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="endViagemDestino" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
              <label class="mdl-textfield__label" for="endViagemDestino">Endereço</label>
            </div>
          </form>
        </div>
        <div class="mdl-card__actions">
          <asp:Button Text="Adicionar" id="registrarViagem" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','newViagem')">
            cancelar
          </a>
        </div>
      </div>
      <!-- FINAL DO CONTEUDO DO CARTAO -->
    </div>

      <div class="mdl-layout-spacer"></div>
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


  <script src="../scripts/cpf.min.js" charset="utf-8"></script>
  <script>
    var dialog = document.querySelector('dialog');
    var showDialogButton = document.querySelector('#fabButton');
    if (! dialog.showModal) {
    dialogPolyfill.registerDialog(dialog);
  }
    showDialogButton.addEventListener('click', function() {
    dialog.showModal();
  });
  dialog.querySelector('.close').addEventListener('click', function() {
    dialog.close();
  });

  function mascara(t,mask){
    var i = t.value.length;
    var output = mask.substring(1,0);
    var input = mask.substring(i);
    if(input.substring(0,1) != output){
      t.value += input.substring(0,1);
    }
  }

  function validateCpf() {
    if(CPF.validate(document.getElementById('<%=cpfCli.ClientID%>').value) != true){
      alert("O CPF inserido não existe!");
    }
  }

function pesquisaCepPartida() {
    var valor = document.getElementById('cepViagemPartida').value;
    //Nova variável "cep" somente com dígitos.
    var cep = valor.replace(/\D/g, '');

    //Verifica se campo cep possui valor informado.
    if (cep != "") {

        //Expressão regular para validar o CEP.
        var validacep = /^[0-9]{8}$/;

        //Valida o formato do CEP.
        if(validacep.test(cep)) {


            //Cria um elemento javascript.
            var script = document.createElement('script');

            //Sincroniza com o callback.
            script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callbackViagemPartida';

            //Insere script no documento e carrega o conteúdo.
            document.body.appendChild(script);

        } //end if.
        else {
            //cep é inválido.
            alert("Formato de CEP inválido.");
        }
    } //end if.
    else {
        //cep sem valor, limpa formulário.
        valor = "";
    }
  }

  function meu_callbackViagemPartida(conteudo) {
      if (!("erro" in conteudo)) {
        var endereco = document.getElementById('<%=endViagemPartida.ClientID%>');
        var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
        var cidade = document.getElementById('<%=cidViagemPartida.ClientID%>');
        var bairro = document.getElementById('<%=bairroViagemPartida.ClientID%>');
          //Atualiza os campos com os valores.
          endereco.value=(conteudo.logradouro);
          bairro.value= (conteudo.bairro);
          cidade.value=(conteudo.localidade);
          uf.value=(conteudo.uf);
      }
      else {
          //CEP não Encontrado.
          var endereco = document.getElementById('<%=endViagemPartida.ClientID%>');
          var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
          var cidade = document.getElementById('<%=cidViagemPartida.ClientID%>');
          var bairro = document.getElementById('<%=bairroViagemPartida.ClientID%>');
          endereco.value="desconhecido";
          bairro.value= "desconhecido";
          cidade.value="desconhecido";
          uf.value="desconhecido";
      }

  }

  function validateCpf() {
    if(CPF.validate(document.getElementById('<%=cpfCli.ClientID%>').value) != true){
      alert("O CPF inserido não existe!");
    }
  }

function pesquisacep() {
    var valor = document.getElementById('<%=cepCli.ClientID%>').value;
    //Nova variável "cep" somente com dígitos.
    var cep = valor.replace(/\D/g, '');

    //Verifica se campo cep possui valor informado.
    if (cep != "") {

        //Expressão regular para validar o CEP.
        var validacep = /^[0-9]{8}$/;

        //Valida o formato do CEP.
        if(validacep.test(cep)) {


            //Cria um elemento javascript.
            var script = document.createElement('script');

            //Sincroniza com o callback.
            script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

            //Insere script no documento e carrega o conteúdo.
            document.body.appendChild(script);

        } //end if.
        else {
            //cep é inválido.
            alert("Formato de CEP inválido.");
        }
    } //end if.
    else {
        //cep sem valor, limpa formulário.
        valor = "";
    }
  }

  function meu_callback(conteudo) {
      if (!("erro" in conteudo)) {
        var residencia = document.getElementById('<%=residenciaCli.ClientID%>');
          //Atualiza os campos com os valores.
          residencia.value=(conteudo.logradouro) +
          ", " + (conteudo.bairro) +
          ", " + (conteudo.localidade) +
          ", " + (conteudo.uf);
      }
      else {
          //CEP não Encontrado.
          var residencia = document.getElementById('<%=residenciaCli.ClientID%>');
          residencia.value="CEP não encontrado";
      }
  }
  function pesquisaCepDestino() {
      var valor = document.getElementById('cepViagemDestino').value;
      //Nova variável "cep" somente com dígitos.
      var cep = valor.replace(/\D/g, '');

      //Verifica se campo cep possui valor informado.
      if (cep != "") {

          //Expressão regular para validar o CEP.
          var validacep = /^[0-9]{8}$/;

          //Valida o formato do CEP.
          if(validacep.test(cep)) {


              //Cria um elemento javascript.
              var script = document.createElement('script');

              //Sincroniza com o callback.
              script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callbackViagemDestino';

              //Insere script no documento e carrega o conteúdo.
              document.body.appendChild(script);

          } //end if.
          else {
              //cep é inválido.
              alert("Formato de CEP inválido.");
          }
      } //end if.
      else {
          //cep sem valor, limpa formulário.
          valor = "";
      }
    }

    function meu_callbackViagemDestino(conteudo) {
        if (!("erro" in conteudo)) {
          var endereco = document.getElementById('<%=endViagemDestino.ClientID%>');
          var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
          var cidade = document.getElementById('<%=cidViagemDestino.ClientID%>');
          var bairro = document.getElementById('<%=bairroViagemDestino.ClientID%>');
            //Atualiza os campos com os valores.
            endereco.value=(conteudo.logradouro);
            bairro.value= (conteudo.bairro);
            cidade.value=(conteudo.localidade);
            uf.value=(conteudo.uf);
        }
        else {
            //CEP não Encontrado.
            var endereco = document.getElementById('<%=endViagemDestino.ClientID%>');
            var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
            var cidade = document.getElementById('<%=cidViagemDestino.ClientID%>');
            var bairro = document.getElementById('<%=bairroViagemDestino.ClientID%>');
            endereco.value="desconhecido";
            bairro.value= "desconhecido";
            cidade.value="desconhecido";
            uf.value="desconhecido";
        }

    }

  function showCard(card,reverseCard) {
    if(card != 'none'){
      document.getElementById(card).style.display='block';
    }
    if(reverseCard != 'none'){
      document.getElementById(reverseCard).style.display='none';
    }
  }


  </script>
</asp:Content>