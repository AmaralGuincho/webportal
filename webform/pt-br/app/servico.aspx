<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servico.aspx.cs" Inherits="pt_br_app_servico" MasterPageFile="~/pt-br/app/index.master"  EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
<script type="text/javascript">
    var xPos, yPos;
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    prm.add_beginRequest(BeginRequestHandler);
    prm.add_endRequest(EndRequestHandler);
    function BeginRequestHandler(sender, args) {
        xPos = $get('scrollDiv').scrollLeft;
        yPos = $get('scrollDiv').scrollTop;
    }
    function EndRequestHandler(sender, args) {
        $get('scrollDiv').scrollLeft = xPos;
        $get('scrollDiv').scrollTop = yPos;
    }
</script>
<form  runat="server">
  <div class="mdl-grid card-box">
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Ordens de Serviço</h2>
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
              <asp:Button ID="openOe1" Text="Abrir" runat="server" OnClick="showOs" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
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
              <asp:Button ID="openOe2" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
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
              <asp:Button ID="openOe3" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <!-- <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a> -->
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Serviços Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <thead>
            <tr>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Tipo de Servico</label>
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Código Os</label>
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                <label></label>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico1">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS1">#idOs</label>
            </td>
            <td class="mdl-data-tavle__cell">
              <asp:Button ID="openServicoOs1" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico2">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS2">#idOs</label>
            </td>
            <td class="mdl-data-tavle__cell">
              <asp:Button ID="openServicoOs2" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoServico3">#idServico</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoOS3">#idOs</label>
          </td>
          <td class="mdl-data-tavle__cell">
            <asp:Button ID="openServicoOs3" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
          </td>
        </tr>
      </tbody>
        </table>
      </div>

      <div class="mdl-card__actions">
        <!-- <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a> -->
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

    <!-- Consultar OS -->
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop  mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="showOs" >
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Consultando um Serviço</h2>
      </div>
      <!-- Consulta cliente -->
      <div class="opcao mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Aberta Por:</h2>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
          <asp:TextBox ID="funAberturaOs" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
          <label class="mdl-textfield__label" for="funAberturaOs">Nome</label>
        </div>
        <h2 class="mdl-card__title-text">Às:</h2>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
          <asp:TextBox ID="dataAberturaOs" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
          <label class="mdl-textfield__label" for="dataAberturaOs">Nome</label>
        </div>
      </div>

      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="consultaCli">
          <div class="mdl-card__title mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Consultando um Cliente</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="nomeCliConsulta" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="nomeCliConsulta">Nome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="SobrenomeCliConsulta" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="SobrenomeCliConsulta">Sobrenome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
                <asp:TextBox ID="dtNascCliConsulta" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
                <label class="mdl-textfield__label" for="dtNascCliConsulta">Nascimento</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox id="cpfCliConsulta" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
                <label class="mdl-textfield__label" for="cpfCliConsulta">CPF</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>

              <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <label class="simpleLabeldd" for="sexoCliConsulta">Sexo</label>
                <asp:DropDownList ID="sexoCliConsulta" runat="server" class="dropdown">
                  <asp:ListItem Text="Masculino" Value="M"/>
                  <asp:ListItem Text="Feminino" Value="F"/>
                </asp:DropDownList>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="telCliConsulta" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-###')"></asp:TextBox>
                <label class="mdl-textfield__label" for="telCliConsulta">Telefone</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="emailCliConsulta" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="emailCliConsulta">Email</label>
              </div>
              <!-- ADDED FULL ENDERECO -->
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell--1-offset-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="bairroCliConsulta" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="bairroCliConsulta">Bairro</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="cidadeCliConsulta" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="cidadeCliConsulta">Cidade</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="ufCliConsulta" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="ufCliConsulta">U.F.</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
                <asp:TextBox ID="residenciaCliConsulta" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="residenciaCliConsulta">Residência</label>
              </div>
          </div>
        </div>
        <!-- End ConsultaCliente -->
        <!-- Consulta veiculo -->
        <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="consultaVeiculo">
          <div class="mdl-card__title">
            <h2 class="mdl-card__title-text">Novo Veículo</h2>
          </div>
          <div class="mdl-card__supporting-text mdl-grid">
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
              <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="modeloVeiculoConsulta"></asp:TextBox>
              <label class="mdl-textfield__label" for="modeloVeiculoConsulta">Consultando o Veículo</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--2-col">
              <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="placaVeiculoConsulta" pattern="[0-9,A-Z,-]*" onkeydown="mascara(this,'###-####')"></asp:TextBox>
              <label class="mdl-textfield__label" for="placaVeiculoConsulta">Placa</label>
              <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
              <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="anoVeiculoConsulta" pattern="[0-9]*"></asp:TextBox>
              <label class="mdl-textfield__label" for="anoVeiculoConsulta">Ano de Fabricação</label>
              <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
              <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="fabricanteVeiculoConsulta"></asp:TextBox>
              <label class="mdl-textfield__label" for="fabricanteVeiculoConsulta">Fabricante</label>
              <span class="mdl-textfield__error">Digite o Nome do fabricante</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
              <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="corVeiculoConsulta"></asp:TextBox>
              <label class="mdl-textfield__label" for="corVeiculoConsulta">Cor</label>
            </div>
          </div>
        </div>
        <!-- End Consulta Veículo -->
        <!-- ConsultaTipoServico -->
        <div class="opcao mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Consultando o Tipo de Serviço</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
              <label class="simpleLabeldd" for="selectServicoConsulta">Tipo de Serviço</label>
              <asp:DropDownList ID="selectServicoConsulta" runat="server" class="dropdown"
               DataSourceID="servico" DataTextField="tipo_servico" DataValueField="id_servico">
                <asp:ListItem Text="Servidor Fora fo Ar"/>
                <asp:ListItem Text="Servidor Fora fo Ar"/>
                <asp:ListItem Text="Servidor Fora fo Ar"/>
              </asp:DropDownList>
            </div>
        </div>
        <!-- End Consulta Tipo Servico -->
        <!-- Consultando o Seguro -->
        <div class="opcao mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Consultando o Seguro</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
              <label class="simpleLabeldd" for="selectSeguroConsulta">Seguradora</label>
              <asp:DropDownList ID="selectSeguroConsulta" runat="server" class="dropdown"
               DataSourceID="seguro" DataTextField="nome_seguro" DataValueField="id_seguro">
                <asp:ListItem Text="Servidor Fora do Ar"/>
                <asp:ListItem Text="Servidor Fora do Ar"/>
                <asp:ListItem Text="Servidor Fora do Ar"/>
              </asp:DropDownList>
            </div>
        </div>
        <!-- Consulta Sinistro -->
        <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col" id="consultaSinistro">
          <div class="mdl-card__title">
            <h2 class="mdl-card__title-text">Consultando Sinistro</h2>
          </div>
          <div class="mdl-card__supporting-text">
            <form action="#">
              <div class="mdl-textfield mdl-js-textfield">
                <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="numeroSinistroConsulta"></asp:TextBox>
                <label class="mdl-textfield__label" for="numeroSinistroConsulta">Número do Sinistro</label>
              </div>
            </form>
          </div>
        </div>
        <!-- End Consulta Sinistro -->
        <!-- Consulta Viagem -->
        <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="consultaViagem">
          <div class="mdl-card__title">
            <h2 class="mdl-card__title-text">Consultando uma Viagem</h2>
          </div>
          <div class="mdl-card__supporting-text">
            <h2 class="mdl-card__title-text">Local de Partida</h2>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
                <input ID="cepViagemConsultaPartida" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepPartida()"></asp:TextBox>
                <label class="mdl-textfield__label" for="cepViagemConsultaPartida">CEP</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="bairroViagemConsultaPartida" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="bairroViagemConsultaPartida">Bairro</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="cidadeViagemConsultaPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="cidadeViagemConsultaPartida">Cidade</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="ufViagemConsultaPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="ufViagemConsultaPartida">Unidade Federativa</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="enderecoViagemConsultaPartida" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="enderecoViagemConsultaPartida">Endereço</label>
              </div>
            <h2 class="mdl-card__title-text">Local do Destino</h2>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
                <input ID="cepViagemConsultaDestino" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepDestino()"></asp:TextBox>
                <label class="mdl-textfield__label" for="cepViagemConsultaDestino">CEP</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="bairroViagemConsultaDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="bairroViagemConsultaDestino">Bairro</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="cidadeViagemConsultaDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="cidadeViagemConsultaDestino">Cidade</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="ufViagemConsultaDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="ufViagemConsultaDestino">Unidade Federativa</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="enderecoViagemConsultaDestino" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
                <label class="mdl-textfield__label" for="enderecoViagemConsultaDestino">Endereço</label>
              </div>
            <h2 class="mdl-card__title-text">Observações</h2>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="obsViagemConsulta" runat="server" class="mdl-textfield__input mdl-cell mdl-cell--12-col"
                 TextMode="multiline" rows="4"></asp:TextBox>
                <label class="mdl-textfield__label" for="obsViagem">Observações</label>
              </div>
            <h2 class="mdl-card__title-text">Motorista</h2>
              <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
                <label class="simpleLabeldd" for="selectMotoristaConsulta">Nome do Motorista</label>
                <asp:DropDownList ID="selectMotoristaConsulta" runat="server" class="dropdown"
                 DataSourceID="motorista" DataTextField="nome_func" DataValueField="id_mot">
                  <asp:ListItem Text="Servidor Fora do Ar"/>
                  <asp:ListItem Text="Servidor Fora do Ar"/>
                  <asp:ListItem Text="Servidor Fora do Ar"/>
                </asp:DropDownList>
              </div>
            <h2 class="mdl-card__title-text">Frota</h2>
              <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
                <label class="simpleLabeldd" for="selectFrotaConsulta">Veículo</label>
                <asp:DropDownList ID="selectFrotaConsulta" runat="server" class="dropdown"
                 DataSourceID="frota" DataTextField="nome_frota" DataValueField="id_frota">
                  <asp:ListItem Text="Servidor Fora do Ar"/>
                  <asp:ListItem Text="Servidor Fora do Ar"/>
                  <asp:ListItem Text="Servidor Fora do Ar"/>
                </asp:DropDownList>
              </div>
            </div>
          </div>
          <!-- End CosultaViagem -->
          <!-- Consulta Agendamento -->

        <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Agendamento</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <label class="mdl-textfield__label" for="agendamentoOSConsulta">Data e Hora</label>
            <asp:TextBox runat="server" ID="agendamentoOSConsulta" type="datetime-local"
            class="mdl-textfield__input mdl-cell mdl-cell--12-col"
            placeholder=""></asp:TextBox>
          </div>
        </div>
        <!-- Consulta Status -->
        <div class="opcao mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Status</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
              <label class="simpleLabeldd" for="statusOsConsulta">Status</label>
              <asp:DropDownList ID="statusOsConsulta" runat="server" class="dropdown">
                <asp:ListItem Text="Aberto"/>
                <asp:ListItem Text="Fechado"/>
                <asp:ListItem Text="Recusado"/>
              </asp:DropDownList>
            </div>
        </div>
        <!-- end consulta -->
      </div>
    </div>
  </div>

    <!-- NovaOS -->
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
              <div class="mdl-cell mdl-cell--12-col">
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--7-col mdl-cell--1-offset-desktop mdl-cell-4-col-phone">
                  <asp:TextBox ID="pesqCliente" type="text" class="mdl-textfield__input" runat="server" onblur="pesquisarCliente" ></asp:TextBox>
                  <label class="mdl-textfield__label" for="pesqCliente">Nome da Pesquisa</label>
                </div>
                <asp:Button runat="server" id="btnPesqCli" OnClick="pesquisarCliente" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" Text="Pesquisar"></asp:Button>

              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="nomeCliPesq" type="text" class="mdl-textfield__input" runat="server" onblur="pesquisarCliente" ></asp:TextBox>
                <label class="mdl-textfield__label" for="nomeCliPesq">Nome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="SobrenomeCliPesq" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="SobrenomeCliPesq">Sobrenome</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
                <asp:TextBox ID="dtNascCliPesq" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
                <label class="mdl-textfield__label" for="dtNascCliPesq">Nascimento</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox id="cpfCliPesq" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
                <label class="mdl-textfield__label" for="cpfCliPesq">CPF</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>

              <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <label class="simpleLabeldd" for="sexoCliPesq">Sexo</label>
                <asp:DropDownList ID="sexoCliPesq" runat="server" class="dropdown">
                  <asp:ListItem Text="Masculino" Value="M"/>
                  <asp:ListItem Text="Feminino" Value="F"/>
                </asp:DropDownList>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="telCliPesq" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-###')"></asp:TextBox>
                <label class="mdl-textfield__label" for="telCliPesq">Telefone</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="emailCliPesq" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="emailCliPesq">Email</label>
              </div>
              <!-- ADDED FULL ENDERECO -->
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell--1-offset-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="bairroCliPesq" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="bairroCliPesq">Bairro</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="cidadeCliPesq" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="cidadeCliPesq">Cidade</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="ufCliPesq" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="ufCliPesq">U.F.</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
                <asp:TextBox ID="residenciaCliPesq" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="residenciaCliPesq">Residência</label>
              </div>
          </div>
          <div class="mdl-card__actions mdl-card--border">
            <asp:Button  runat="server" id="usarPesqCli" Text="Ultilizar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" autopostback="false">
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
                <asp:TextBox ID="telCli" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-###')"></asp:TextBox>
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

              <!-- ADDED FULL ENDERECO -->
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell--1-offset-desktop mdl-cell-4-col-phone">
                <asp:TextBox ID="bairroCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="bairroCli">Bairro</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="cidadeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="cidadeCli">Cidade</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="ufCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="ufCli">U.F.</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
                <asp:TextBox ID="residenciaCli" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
                <label class="mdl-textfield__label" for="residenciaCli">Residência</label>
              </div>

          </div>
          <div class="mdl-card__actions mdl-card--border">
            <asp:Button  runat="server" ID="novoCliente" Text="Cadastrar e Ultilizar"  OnClick="cadastrarCliente" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
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
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="placaVeiculo" pattern="[0-9,A-Z,-]*" onkeydown="mascara(this,'###-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="placaVeiculo">Placa</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="anoVeiculo" pattern="[0-9]*"></asp:TextBox>
            <label class="mdl-textfield__label" for="anoVeiculo">Ano de Fabricação</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="fabricanteVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="fabricanteVeiculo">Fabricante</label>
            <span class="mdl-textfield__error">Digite o Nome do fabricante</span>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="corVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="corVeiculo">Cor</label>
          </div>
        </div>
        <div class="mdl-card__actions">
          <asp:Button Text="Ultilizar" id="btnNewVeiculo" runat="server" onclick="novoVeiculo" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','newVeiculo')">
            cancelar
          </a>
        </div>
      </div>
      <!-- fim veiculo -->

      <!-- Tipo de Servico -->
      <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Selecione o Tipo de Serviço</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <label class="simpleLabeldd" for="selectServico">Tipo de Serviço</label>
            <asp:DropDownList ID="selectServico" runat="server" class="dropdown"
             DataSourceID="servico" DataTextField="tipo_servico" DataValueField="id_servico">
              <asp:ListItem Text="Servidor Fora fo Ar"/>
              <asp:ListItem Text="Servidor Fora fo Ar"/>
              <asp:ListItem Text="Servidor Fora fo Ar"/>
            </asp:DropDownList>
          </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Selecione o Seguro</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
            <label class="simpleLabeldd" for="selectSeguro">Seguradora</label>
            <asp:DropDownList ID="selectSeguro" runat="server" class="dropdown"
             DataSourceID="seguro" DataTextField="nome_seguro" DataValueField="id_seguro">
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
            </asp:DropDownList>
          </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Selecione um Sinistro</h2>
        <a ID="sinistroNovo" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('newSinistro','searchSinistro')">
          Criar um novo Sinistro
        </a>
        <!--TODO Usar um serviço existente
         <a ID="sinistroExistente" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('searchSinistro','newSinistro')">
          Usar um sinistro Existênte
        </a> -->
      </div>

      <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col" id="newSinistro" style="display:none;">
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
          <asp:Button Text="Ultilizar" id="sinistroNovo" runat="server"
          OnClick="newSinistro" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
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
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
              <input ID="cepViagemPartida" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepPartida()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemPartida">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemPartida" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemPartida">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemPartida">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemPartida">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemPartida" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemPartida">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Local do Destino</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
              <input ID="cepViagemDestino" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepDestino()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemDestino">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemDestino">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemDestino">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemDestino">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemDestino" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemDestino">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Observações</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="obsViagem" runat="server" class="mdl-textfield__input mdl-cell mdl-cell--12-col"
               TextMode="multiline" rows="4"></asp:TextBox>
              <label class="mdl-textfield__label" for="obsViagem">Observações</label>
            </div>
          <h2 class="mdl-card__title-text">Motorista</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
              <label class="simpleLabeldd" for="selectMotorista">Nome do Motorista</label>
              <asp:DropDownList ID="selectMotorista" runat="server" class="dropdown"
               DataSourceID="motorista" DataTextField="nome_func" DataValueField="id_mot">
                <asp:ListItem Text="Servidor Fora do Ar"/>
                <asp:ListItem Text="Servidor Fora do Ar"/>
                <asp:ListItem Text="Servidor Fora do Ar"/>
              </asp:DropDownList>
            </div>
          <h2 class="mdl-card__title-text">Frota</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--3-col">
              <label class="simpleLabeldd" for="selectFrota">Veículo</label>
              <asp:DropDownList ID="selectFrota" runat="server" class="dropdown"
               DataSourceID="frota" DataTextField="nome_frota" DataValueField="id_frota">
                <asp:ListItem Text="Servidor Fora do Ar"/>
                <asp:ListItem Text="Servidor Fora do Ar"/>
                <asp:ListItem Text="Servidor Fora do Ar"/>
              </asp:DropDownList>
            </div>
        </div>
        <div class="mdl-card__actions">
          <asp:Button ID="registrarViagem" OnClick="newViagem" runat="server" Text="adicionar" type="text" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','newViagem')">
            cancelar
          </a>
        </div>
      </div>
      <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Agendamento</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <label class="mdl-textfield__label" for="agendamentoOS">Data e Hora</label>
            <asp:TextBox runat="server" ID="agendamentoOS" type="datetime-local"
            class="mdl-textfield__input mdl-cell mdl-cell--12-col"
            placeholder=""></asp:TextBox>
          </div>
      </div>
      <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Status</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <label class="simpleLabeldd" for="statusOs">Status</label>
            <asp:DropDownList ID="statusOs" runat="server" class="dropdown">
              <asp:ListItem Text="Aberto"/>
              <asp:ListItem Text="Fechado"/>
              <asp:ListItem Text="Recusado"/>
            </asp:DropDownList>
          </div>
      </div>
      <!-- FINAL DO CONTEUDO DO CARTAO -->
    </div>

      <div class="mdl-layout-spacer"></div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button id="registrarOs" runat="server" OnClick="newOs" Text="Abrir Ordem de Serviço"
         class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
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
  <!-- DataSource -->

  <asp:SqlDataSource ID="cliente" runat="server"
   ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
   ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
   SelectCommand="SELECT MAX(id_cli) FROM cliente"
   InsertCommand="INSERT INTO cliente
    (nome_cli, sobrenome_cli, cpf_cli, email_cli, sx_cli, telefone_cli, dtnasc_cli, cep_cli, bairro_cli, cid_cli, uf_cli, endereco_cli)
     VALUES
     (@nome, @sobrenome, @cpf, @email, @sexo, @telefone, @dataNasc, @cep, @bairro, @cidade, @uf, @endereco)">
    <InsertParameters>
      <asp:ControlParameter Name="nome" ControlID="nomeCli" PropertyName="Text"/>
      <asp:ControlParameter Name="sobrenome" ControlID="SobrenomeCli" PropertyName="Text"/>
      <asp:ControlParameter Name="sexo" ControlID="sexoCli" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="email" ControlID="emailCli" PropertyName="Text"/>
      <asp:ControlParameter Name="cpf" ControlID="cpfCli" PropertyName="Text"/>
      <asp:ControlParameter Name="telefone" ControlID="telCli" PropertyName="Text"/>
      <asp:ControlParameter Name="cep" ControlID="cepCli" PropertyName="Text"/>
      <asp:ControlParameter Name="bairro" ControlID="bairroCli" PropertyName="Text"/>
      <asp:ControlParameter Name="uf" ControlID="ufCli" PropertyName="Text"/>
      <asp:ControlParameter Name="cidade" ControlID="cidadeCli" PropertyName="Text"/>
      <asp:ControlParameter Name="endereco" ControlID="residenciaCli" PropertyName="Text"/>
      <asp:Parameter Name="dataNasc"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="clientePesq" runat="server"
   ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
   ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
   SelectCommand="SELECT id_cli, nome_cli, sobrenome_cli, cpf_cli, email_cli, sx_cli, telefone_cli, dtnasc_cli, cep_cli, bairro_cli, cid_cli, uf_cli, endereco_cli
   FROM cliente WHERE (nome_cli=@nome)">
   <SelectParameters>
    <asp:ControlParameter Name="nome" ControlID="pesqCliente" PropertyName="Text"/>
   </SelectParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="veiculo" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  InsertCommand="INSERT INTO veiculo
  (id_cli, fabricante_veiculo, modelo_veiculo, ano_veiculo, placa_veiculo, cor_veiculo)
  VALUES
  (@cliente, @fabricante, @modelo, @ano, @placa, @cor)"
  SelectCommand="SELECT MAX(id_veiculo) FROM veiculo">
    <InsertParameters>
      <asp:ControlParameter Name="fabricante" ControlID="fabricanteVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="modelo" ControlID="modeloVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="placa" ControlID="placaVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="cor" ControlID="corVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="ano" ControlID="anoVeiculo" PropertyName="Text"/>
      <asp:Parameter Name="cliente"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="viagem" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT MAX(id_viagem) FROM viagem"
    InsertCommand="INSERT INTO viagem
    (id_mot, id_frota, bairro_destino_viagem, bairro_partida_viagem,
    endereco_destino_viagem, endereco_partida_viagem, cidade_destino_viagem,
    cidade_partida_viagem, uf_destino_viagem, uf_partida_viagem, obs_viagem)
    VALUES
    (@idMot, @idFrota, @bairroDestinoViagem, @bairroPartidaViagem,
    @enderecoDestinoViagem, @enderecoPartidaViagem, @cidadeDestinoViagem,
    @cidadePartidaViagem, @ufDestinoViagem, @ufPartidaViagem, @obsViagem)">
    <InsertParameters>
      <asp:ControlParameter Name="idMot" ControlID="selectMotorista" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="idFrota" ControlID="selectFrota" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="bairroDestinoViagem" ControlID="bairroViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="bairroPartidaViagem" ControlID="bairroViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="enderecoDestinoViagem" ControlID="enderecoViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="enderecoPartidaViagem" ControlID="enderecoViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="cidadeDestinoViagem" ControlID="cidadeViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="cidadePartidaViagem" ControlID="cidadeViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="ufDestinoViagem" ControlID="ufViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="ufPartidaViagem" ControlID="ufViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="obsViagem" ControlID="obsViagem" PropertyName="Text"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="seguro" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_seguro, nome_seguro FROM seguro">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="servico" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_servico, tipo_servico FROM servico">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="sinistro" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO sinistro (sinistro) VALUES (@sinistro)"
    SelectCommand="SELECT MAX(id_sinistro) FROM sinistro">
    <InsertParameters>
      <asp:ControlParameter Name="sinistro" ControlID="numeroSinistro" PropertyName="Text"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="motorista" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_mot, nome_func FROM motoristaOnly">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="frota" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT nome_frota, id_frota FROM frota">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="os" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO ordem_de_servico
    (id_func, id_veiculo, dtab_os, agendamento_os, status_os)
    VALUES
    (@idFunc, @idVeiculo, @dtab, @agendamentoOs, @status)"
    SelectCommand="SELECT MAX(id_os) FROM ordem_de_servico">
    <InsertParameters>
      <asp:ControlParameter Name="status" ControlID="statusOs" PropertyName="Text"/>
      <asp:ControlParameter Name="agendamentoOs" ControlID="agendamentoOs" PropertyName="Text"/>
      <asp:Parameter Name="dtab"/>
      <asp:SessionParameter Name="idFunc" SessionField="log" />
      <asp:SessionParameter Name="idVeiculo" SessionField="veiculo" />
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="viagemServico" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO viagem_servico (id_viagem, id_os)
    VALUES(@viagem, @OS)">
    <InsertParameters>
      <asp:SessionParameter SessionField="os" Name="os"/>
      <asp:SessionParameter SessionField="viagem" Name="viagem"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="servicoOs" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO servico_os(id_servico, id_os, id_sinistro)
    VALUES(@servico, @OS, @sinistro)">
    <InsertParameters>
      <asp:SessionParameter SessionField="os" Name="os"/>
      <asp:ControlParameter Name="servico" ControlID="selectServico" PropertyName="SelectedValue"/>
      <asp:SessionParameter SessionField="sinistro" Name="sinistro"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT id_os, dtab_os FROM ordem_de_servico WHERE (status_os = 'Aberto') ORDER BY id_os DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestServicoOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT servico_os.id_os, servico.tipo_servico FROM servico_os INNER JOIN servico
  on servico_os.id_servico = servico.id_servico
   ORDER BY id_os DESC LIMIT 3  ">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="consultaOS" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT * FROM ordem_de_servico WHERE id_os = @ConsultaOs">
    <SelectParameters>
      <asp:Parameter name="consultaos"/>
    </SelectParameters>
  </asp:SqlDataSource>

  <script src="../scripts/cpf.min.js" charset="utf-8"></script>
  <script>
  window.onload = dontHide();

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
        var endereco = document.getElementById('<%=enderecoViagemPartida.ClientID%>');
        var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
        var cidade = document.getElementById('<%=cidadeViagemPartida.ClientID%>');
        var bairro = document.getElementById('<%=bairroViagemPartida.ClientID%>');
          //Atualiza os campos com os valores.
          endereco.value=(conteudo.logradouro);
          bairro.value= (conteudo.bairro);
          cidade.value=(conteudo.localidade);
          uf.value=(conteudo.uf);
      }
      else {
          //CEP não Encontrado.
          var endereco = document.getElementById('<%=enderecoViagemPartida.ClientID%>');
          var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
          var cidade = document.getElementById('<%=cidadeViagemPartida.ClientID%>');
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
        var uf = document.getElementById('<%=ufCli.ClientID%>');
        var cidade = document.getElementById('<%=cidadeCli.ClientID%>');
        var bairro = document.getElementById('<%=bairroCli.ClientID%>');


          //Atualiza os campos com os valores.
          residencia.value=(conteudo.logradouro);
          uf.value =  (conteudo.uf);
          cidade.value = (conteudo.localidade);
          bairro.value = (conteudo.bairro);
      }
      else {
          //CEP não Encontrado.
          var residencia = document.getElementById('<%=residenciaCli.ClientID%>');
          var uf = document.getElementById('<%=ufCli.ClientID%>');
          var cidade = document.getElementById('<%=cidadeCli.ClientID%>');
          var bairro = document.getElementById('<%=bairroCli.ClientID%>');


            //Atualiza os campos com os valores.
            residencia.value="Não Encontrado";
            uf.value =  "Não Encontrado";
            cidade.value = "Não Encontrado";
            bairro.value = "Não Encontrado";
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
          var endereco = document.getElementById('<%=enderecoViagemDestino.ClientID%>');
          var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
          var cidade = document.getElementById('<%=cidadeViagemDestino.ClientID%>');
          var bairro = document.getElementById('<%=bairroViagemDestino.ClientID%>');
            //Atualiza os campos com os valores.
            endereco.value=(conteudo.logradouro);
            bairro.value= (conteudo.bairro);
            cidade.value=(conteudo.localidade);
            uf.value=(conteudo.uf);
        }
        else {
            //CEP não Encontrado.
            var endereco = document.getElementById('<%=enderecoViagemDestino.ClientID%>');
            var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
            var cidade = document.getElementById('<%=cidadeViagemDestino.ClientID%>');
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

  function dontHide() {
    var nomeCliPesq = document.getElementById('<%=nomeCliPesq.ClientID%>');
    var searchCliCard = document.getElementById('searchCli');
    var placaVeiculo = document.getElementById('<%=placaVeiculo.ClientID%>');
    var newVeiculoCard = document.getElementById('newVeiculo');
    var newSinistroCard = document.getElementById('newSinistro');
    var sinistro = document.getElementById('<%=numeroSinistro.ClientID%>');

    if(nomeCliPesq.value != ''){
      searchCliCard.style.display = "block";
    }
    else{
      searchCliCard.style.display = "none";
    }

    if(placaVeiculo.value != ''){
      newVeiculoCard.style.display = "block";
    }
    else{
      newVeiculoCard.style.display = "none";
    }

    if(sinistro.value != ''){
      newSinistroCard.style.display = "block";
    }
    else{
      newSinistroCard.style.display = "none";
    }

  };


  </script>
</asp:Content>
