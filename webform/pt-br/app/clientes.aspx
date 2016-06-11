<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clientes.aspx.cs" Inherits="pt_br_app_clientes" MasterPageFile="~/pt-br/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">

  </style>
  <div class="mdl-grid card-box">
    <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newClient" autocomplete="on" runat="server">

    <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchCli" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-cli"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um Cliente</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div>


    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardCli">
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
      <!-- TODO C# CODE TO GENERATE TABLES -->
      <!-- <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div> -->
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
        <h2 class="mdl-card__title-text">Sugestões</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--1-col-phone">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet">
          <tr class="client1">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgCliSugestao1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeCliSugestao1" runat="server">Não existem dados suficientes</label>
            </td>
            <td class="mdl-cell mdl-cell--hide-phone">
              <label id="telCliSugestao1" runat="server">--</label>
            </td>
          </tr>
          <tr class="client2">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgCliSugestao2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeCliSugestao2" runat="server">Não existem dados suficientes</label>
            </td>
            <td class="mdl-cell mdl-cell--hide-phone">
              <label id="telCliSugestao2"  runat="server">--</label>
            </td>
          </tr>
          <tr class="client3">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgCliSugestao3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeCliSugestao3" runat="server">Não existem dados suficientes</label>
            </td>
            <td class="mdl-cell mdl-cell--hide-phone">
              <label id="telCliSugestao3" runat="server">--</label>
            </td>
          </tr>
        </table>
      </div>
      <!-- <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div> -->
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="addCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Cliente</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone">


          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeCli">Nome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-dektop mdl-cell-4-col-phone">
            <asp:TextBox ID="SobrenomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="SobrenomeCli">Sobrenome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="dtNascCli" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="dtNascCli">Nascimento</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox id="cpfCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
            <label class="mdl-textfield__label" for="cpfCli">CPF</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <div class="mdl-textfield mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="sexoCli">Sexo</label>
            <asp:DropDownList ID="sexoCli" runat="server" class="dropdown">
              <asp:ListItem Text="Masculino" Value="M"/>
              <asp:ListItem Text="Feminino" Value="F"/>
            </asp:DropDownList>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="telCli" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-###')"></asp:TextBox>
            <label class="mdl-textfield__label" for="telCli">Telefone</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="emailCli" type="text" class="mdl-textfield__input" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="emailCli">Email</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="cepCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisacep()"></asp:TextBox>
            <label class="mdl-textfield__label" for="cepCli">CEP</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <!-- ADDED FULL ENDERECO -->
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell--1-offset-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="bairroCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="bairroCli">Bairro</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="cidadeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="cidadeCli">Cidade</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="ufCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="ufCli">U.F.</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="residenciaCli" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="residenciaCli">Residência</label>
          </div>

      </div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button runat="server" Text="Cadastrar" OnClick="cadastrar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        </asp:Button>
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Cancelar
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-newCli-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-newCli-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
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

  <asp:SqlDataSource ID="cliente" runat="server"
   ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
   ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
   SelectCommand="SELECT img_cli, nome_cli, sobrenome_cli, telefone_cli FROM cliente ORDER BY id_cli DESC LIMIT 3"
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

  </script>
</asp:Content>
