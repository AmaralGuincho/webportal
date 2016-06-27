<%@ Page Language="C#" AutoEventWireup="true" CodeFile="funcionarios.aspx.cs" Inherits="app_funcionarios" MasterPageFile="~/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <style media="screen">

  </style>
  <form runat="server">
  <div class="mdl-grid card-box">

    <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchFunc" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-Func"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um funcionario</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div>


    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardFunc">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Funcionários Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col">
          <tr class="funcionario1">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc1" runat="server" >Ainda Não Temos Dados Suficientes</label>
            </td>
          </tr>
          <tr class="funcionario2">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc2" runat="server" >Ainda Não Temos Dados Suficientes</label>
            </td>
          </tr>
          <tr class="funcionario3">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFunc3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFunc3" runat="server">Ainda Não Temos Dados Suficientes</label>
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-Func-options" UseSubmitBehavior="False">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-Func-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoFunc">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Sugestões</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="funcionario1">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFuncSegestao1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFuncSegestao1" runat="server" >Não existem dados suficientes</label>
            </td>
          </tr>
          <tr class="funcionario2">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFuncSegestao2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFuncSegestao2" runat="server" >Não existem dados suficientes</label>
            </td>
          </tr>
          <tr class="funcionario3">
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgFuncSegestao3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label id="nomeFuncSegestao3" runat="server">Não existem dados suficientes</label>
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

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="addFunc">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Funcionário</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <form class="mdl-cell mdl-cell--12-col mdl-grid" id="newFuncent" autocomplete="off">

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeFunc">Nome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="sobrenomeFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="SobrenomeFunc">Sobrenome</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="dtNascFunc" type="date" class="mdl-textfield__input date" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="dtNascFunc">Nascimento</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox id="cpfFunc" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
            <label class="mdl-textfield__label" for="cpfFunc">CPF</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <div class="mdl-textfield mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="sexoFunc">Sexo</label>
            <asp:DropDownList ID="sexoFunc" runat="server" class="dropdown">
              <asp:ListItem Text="Masculino" Value="M"/>
              <asp:ListItem Text="Feminino" Value="F"/>
            </asp:DropDownList>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="telFunc" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="telFunc">Telefone</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="emailFunc" class="mdl-textfield__input" type="email" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="emailFunc">Email</label>
            <span class="mdl-textfield__error">Insira um email Válido</span>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="cepFunc" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisacep()"></asp:TextBox>
            <label class="mdl-textfield__label" for="cepFunc">CEP</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <!-- ADDED FULL ENDERECO -->
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell--1-offset-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="bairroFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="bairroFunc">Bairro</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="cidadeFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="cidadeFunc">Cidade</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="ufFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="ufFunc">U.F.</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
            <asp:TextBox ID="residenciaFunc" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="residenciaFunc">Residência</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell--3-offset-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="contratacaoFunc" type="date" class="mdl-textfield__input date" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="contatacaoFunc">Data de Contratação</label>
          </div>

          <div class="mdl-textfield mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="cargoFunc">Cargo</label>
            <asp:DropDownList ID="cargoFunc" runat="server" class="dropdown" onblur="habilitacao()">
              <asp:ListItem Text="Administrador" Value="1"/>
              <asp:ListItem Text="Funcionário" Value="2"/>
              <asp:ListItem Text="Motorista" Value="3"/>
            </asp:DropDownList>
          </div>

          <!-- Cadastrando as informações de um Motorista -->

          <div class="mdl-grid mdl-cell mdl-cell--12-col" id="HabMot" style="display:none;" >
            <div class="titulo mdl-cell mdl-cell--12-col">
              <h2 class="mdl-card__title-text">Habilitação</h2>
            </div>
            <div class="card-content mdl-cell mdl-cell--12-col mdl-grid">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="nomeHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="nomeHabMot">Nome</label>
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
                <asp:TextBox ID="validadeHabMot" type="date" placeholder=" " class="mdl-textfield__input date" pattern="[0-9,/]*" runat="server" onkeypress="mascara(this,'##/##/####')"></asp:TextBox>
                <label class="mdl-textfield__label" for="validadeHabMot">Validade</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="localGeradoHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="localGeradoHabMot">Local Gerado</label>
              </div>
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="emissaoHabMot" type="date" placeholder=" " class="mdl-textfield__input date" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="emissaoHabMot">Emissão</label>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button runat="server" Text="Cadastrar" OnClick="cadastrar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        </asp:Button>
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
  </form>

  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white" id="fabButton">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>


  <!-- Sql Scripts -->
  <asp:SqlDataSource ID="novoFuncionario" runat="server"
   ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
   ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
   InsertCommand="INSERT INTO funcionario
    (id_cargo, nome_func, sobrenome_func, cpf_func, email_func, sx_func, tel_func, dtnasc_func, cep_func, bairro_func, residencia_func, uf_func, cid_func, dtcont_func)
     VALUES
     (@cargo, @nome, @sobrenome, @cpf, @email, @sexo, @telefone, @dataNasc, @cep, @bairro, @residencia, @uf, @cidade, @dataContratacao)"
     SelectCommand="SELECT MAX(id_func) FROM funcionario">
    <InsertParameters>
      <asp:ControlParameter Name="nome" ControlID="nomeFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="sobrenome" ControlID="SobrenomeFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="sexo" ControlID="sexoFunc" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="email" ControlID="emailFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="cpf" ControlID="cpfFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="telefone" ControlID="telFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="cep" ControlID="cepFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="residencia" ControlID="residenciaFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="bairro" ControlID="bairroFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="cidade" ControlID="cidadeFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="uf" ControlID="ufFunc" PropertyName="Text"/>
      <asp:ControlParameter Name="cargo" ControlID="cargoFunc" PropertyName="SelectedValue" Type="Int16"/>
      <asp:Parameter Name="dataNasc"/>
      <asp:Parameter Name="dataContratacao"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestFuncionarios" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT img_func, nome_func, sobrenome_func, tel_func FROM funcionario WHERE id_cargo BETWEEN 1 and 2 ORDER BY id_func DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="novoMotorista" runat="server"
   ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
   ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
   InsertCommand="INSERT INTO motorista
    (id_func, nome_hab, idhab_hab, nregistro_hab, validade_hab, local_hab, dtemissao_hab)
    VALUES
    (@id, @nomeHab, @idHab, @registroHab, @dtValidadeHab, @localHab, @dtEmissaoHab)">
    <InsertParameters>
      <asp:ControlParameter Name="nomeHab" ControlID="nomeHabMot" PropertyName="Text"/>
      <asp:ControlParameter Name="idHab" ControlID="idHabMot" PropertyName="Text"/>
      <asp:ControlParameter Name="registroHab" ControlID="registroHabMot" PropertyName="Text"/>
      <asp:ControlParameter Name="localHab" ControlID="localGeradoHabMot" PropertyName="Text"/>
      <asp:Parameter Name="dtEmissaoHab"/>
      <asp:Parameter Name="dtValidadeHab"/>
      <asp:Parameter Name="id"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <script src="../scripts/cpf.min.js" charset="utf-8"></script>

  <script>
    window.onload = function shellName() {
      var shellTitle = document.getElementById("shellTitle");
      shellTitle.innerHTML = 'Funcionários';
    }

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
        var uf = document.getElementById('<%=ufFunc.ClientID%>');
        var cidade = document.getElementById('<%=cidadeFunc.ClientID%>');
        var bairro = document.getElementById('<%=bairroFunc.ClientID%>');


          //Atualiza os campos com os valores.
          residencia.value = (conteudo.logradouro);
          uf.value =  (conteudo.uf);
          cidade.value = (conteudo.localidade);
          bairro.value = (conteudo.bairro);
      }
      else {
          //CEP não Encontrado.
          var residencia = document.getElementById('<%=residenciaFunc.ClientID%>');
          var uf = document.getElementById('<%=ufFunc.ClientID%>');
          var cidade = document.getElementById('<%=cidadeFunc.ClientID%>');
          var bairro = document.getElementById('<%=bairroFunc.ClientID%>');


            //Atualiza os campos com os valores.
            residencia.value="Não Encontrado";
            uf.value =  "Não Encontrado";
            cidade.value = "Não Encontrado";
            bairro.value = "Não Encontrado";
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
