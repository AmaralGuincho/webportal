<%@ Page Language="C#" AutoEventWireup="true" CodeFile="motoristas.aspx.cs" Inherits="pt_br_app_motoristas" MasterPageFile="~/pt-br/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">

  </style>
  <div class="mdl-grid card-box">

    <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchMot" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-Mot"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um Motionario</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div>


    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardMot">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Motosistas Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
      </div>
      <div class="mdl-card__actions">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a>
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-Mot-options" UseSubmitBehavior="False">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-Mot-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoMot">
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--1-offset-tablet mdl-cell--6-col-tablet mdl-cell--4-col-phone mdl-grid" id="addMot">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Motorista</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newMotorista" autocomplete="on" runat="server">

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeMot">Nome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="sobrenomeMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="SobrenomeMot">Sobrenome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
            <asp:TextBox ID="dtNascMot" type="text" class="mdl-textfield__input" runat="server" onkeypress="mascara(this, '##/##/####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="dtNascMot">Nascimento</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox id="cpfMot" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
            <label class="mdl-textfield__label" for="cpfMot">CPF</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="sexoMot">Sexo</label>
            <asp:DropDownList ID="sexoMot" runat="server" class="dropdown">
              <asp:ListItem Text="Masculino" Value="M"/>
              <asp:ListItem Text="Feminino" Value="F"/>
            </asp:DropDownList>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="telMot" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="telMot">Telefone</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="emailMot" class="mdl-textfield__input" type="email" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="emailMot">Email</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="cepMot" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisacep()"></asp:TextBox>
            <label class="mdl-textfield__label" for="cepMot">CEP</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <asp:TextBox ID="contratacaoMot" type="text" class="mdl-textfield__input" pattern="[0-9,/]*" runat="server" onkeypress="mascara(this,'##/##/####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="emailMot">Data de Contratação</label>
          </div>

          <div class="mdl-textfield mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="cargoMot">Cargo</label>
            <asp:DropDownList ID="cargoMot" runat="server" class="dropdown">
              <asp:ListItem Text="Administrador" Value="1"/>
              <asp:ListItem Text="Motionário" Value="2"/>
              <asp:ListItem Text="Motorista" Value="3"/>
            </asp:DropDownList>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
            <asp:TextBox ID="residenciaMot" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="residenciaMot">Residência</label>
          </div>

          <!-- Cadastrando as informações de um Motorista (habilitação) -->
          <div class="titulo mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Habilitação</h2>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
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
            <asp:TextBox ID="validadeHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-newMot-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-newMot-options">
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
    showDialogButton.addEventListener('cliDialog', Mottion() {
    dialog.showModal();
  });
  dialog.querySelector('.close').addEventListener('cliDialog', Mottion() {
    dialog.close();
  });

  Mottion mascara(t,mask){
    var i = t.value.length;
    var output = mask.substring(1,0);
    var input = mask.substring(i);
    if(input.substring(0,1) != output){
      t.value += input.substring(0,1);
    }
  }

  Mottion validateCpf() {
    if(CPF.validate(document.getElementById('<%=cpfMot.ClientID%>').value) != true){
      alert("O CPF inserido não existe!");
    }
  }

Mottion pesquisacep() {
    var valor = document.getElementById('<%=cepMot.ClientID%>').value;
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

  Mottion meu_callback(conteudo) {
      if (!("erro" in conteudo)) {
        var residencia = document.getElementById('<%=residenciaMot.ClientID%>');
          //Atualiza os campos com os valores.
          residencia.value=(conteudo.logradouro) +
          ", " + (conteudo.bairro) +
          ", " + (conteudo.localidade) +
          ", " + (conteudo.uf);
      }
      else {
          //CEP não Encontrado.
          var residencia = document.getElementById('<%=residenciaMot.ClientID%>');
          residencia.value="CEP não encontrado";
      }
  }

  </script>
</asp:Content>
