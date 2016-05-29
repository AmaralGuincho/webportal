<%@ Page Language="C#" AutoEventWireup="true" CodeFile="funcionarios.aspx.cs" Inherits="pt_br_app_funcionarios" MasterPageFile="~/pt-br/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">

  </style>
  <div class="mdl-grid card-box">

    <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchFunc" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-Func"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um funcionario</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div>


    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardFunc">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Funcionários Recentes</h2>
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
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="addFunc">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Funcionário</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newFuncent" autocomplete="on" runat="server">

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeFunc">Nome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="sobrenomeFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="SobrenomeFunc">Sobrenome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
            <asp:TextBox ID="dtNascFunc" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="dtNascFunc">Nascimento</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox id="cpfFunc" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
            <label class="mdl-textfield__label" for="cpfFunc">CPF</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="sexoFunc">Sexo</label>
            <asp:DropDownList ID="sexoFunc" runat="server" class="dropdown">
              <asp:ListItem Text="Masculino" Value="M"/>
              <asp:ListItem Text="Feminino" Value="F"/>
            </asp:DropDownList>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="telFunc" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="telFunc">Telefone</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="emailFunc" class="mdl-textfield__input" type="email" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="emailFunc">Email</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="cepFunc" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisacep()"></asp:TextBox>
            <label class="mdl-textfield__label" for="cepFunc">CEP</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="contratacaoFunc" type="text" class="mdl-textfield__input" pattern="[0-9,/]*" runat="server" onkeypress="mascara(this,'##/##/####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="emailFunc">Data de Contratação</label>
          </div>

          <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="cargoFunc">Cargo</label>
            <asp:DropDownList ID="cargoFunc" runat="server" class="dropdown" onblur="habilitacao()">
              <asp:ListItem Text="Administrador" Value="1"/>
              <asp:ListItem Text="Funcionário" Value="2"/>
              <asp:ListItem Text="Motorista" Value="3"/>
            </asp:DropDownList>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
            <asp:TextBox ID="residenciaFunc" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="residenciaFunc">Residência</label>
          </div>

          <!-- Cadastrando as informações de um Motorista -->
          <div class="mdl-grid mdl-cell mdl-cell--12-col" id="HabMot" style="display:none;" >
            <div class="titulo mdl-cell mdl-cell--12-col">
              <h2 class="mdl-card__title-text">Habilitação</h2>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--8-col mdl-cell-4-col-phone">
              <asp:TextBox ID="nomeHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="SobrenomeMot">Nome</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="idHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="idHabMot">Identidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="registroHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="registroHabMot">Registro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="validadeHabMot" type="text" class="mdl-textfield__input" pattern="[0-9,/]*" runat="server" onkeypress="mascara(this,'##/##/####')"></asp:TextBox>
              <label class="mdl-textfield__label" for="validadeHabMot">Validade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="localGeradoHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="localGeradoHabMot">Local Gerado</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
              <asp:TextBox ID="emissaoHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
              <label class="mdl-textfield__label" for="emissaoHabMot">Emissão</label>
            </div>
          </div>
        </form>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Cadastrar
        </a>
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
    showDialogButton.addEventListener('cliDialog', function() {
    dialog.showModal();
  });
  dialog.querySelector('.close').addEventListener('cliDialog', function() {
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
    if(CPF.validate(document.getElementById('<%=cpfFunc.ClientID%>').value) != true){
      alert("O CPF inserido não existe!");
    }
  }

function pesquisacep() {
    var valor = document.getElementById('<%=cepFunc.ClientID%>').value;
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
        var residencia = document.getElementById('<%=residenciaFunc.ClientID%>');
          //Atualiza os campos com os valores.
          residencia.value=(conteudo.logradouro) +
          ", " + (conteudo.bairro) +
          ", " + (conteudo.localidade) +
          ", " + (conteudo.uf);
      }
      else {
          //CEP não Encontrado.
          var residencia = document.getElementById('<%=residenciaFunc.ClientID%>');
          residencia.value="CEP não encontrado";
      }
  }

  function habilitacao(){
    var cargo = document.getElementById('<%=cargoFunc.ClientID%>').value;
    if(cargo == 3){
      document.getElementById('HabMot').style.display = 'block';
    }
    else{
      document.getElementById('HabMot').style.display = "none";
    }
  }

  </script>
</asp:Content>
