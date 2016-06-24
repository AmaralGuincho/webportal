<%@ Page Language="C#" AutoEventWireup="true" CodeFile="motoristas.aspx.cs" Inherits="app_motoristas" MasterPageFile="~/app/index.master" EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <form runat="server">
  <div class="mdl-grid card-box">
    <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--12-col">
      <input ID="searchMot" class="mdl-textfield__input" runat="server" pattern="[A-Z,a-z, ]*"></input>
      <label class="mdl-textfield__label" for="search-Mot"> <i class="material-icons" style="font-size:14px;position:relative;bottom:-2px;">search</i> Procure um Motorista</label>
      <span class="mdl-textfield__error">Números ou Simbulos não são válidos</span>
    </div>


    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardMot">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Motoristas Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot1" >Sem dados</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot2" >Sem dados</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMot3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMot3" >Sem dados</label>
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-Mot-options" UseSubmitBehavior="False">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-Mot-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoMot">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Sugestões</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMotSugestao1" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMotSugestao1" >Sem dados</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMotSugestao2" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMotSugestao2" >Sem dados</label>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <img id="imgMotSugestao3" runat="server" src="../images/profiles/generic.png" class="avatar"/>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="nomeMotSugestao3" >Sem dados</label>
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
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-sugestao-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-sugestao-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="addMot">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Cadastrando um Novo Motorista</h2>
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

          <div class="mdl-textfield mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
            <label class="simpleLabeldd" for="sexoFunc">Sexo</label>
            <asp:DropDownList ID="sexoFunc" runat="server" class="dropdown">
              <asp:ListItem Text="Masculino" Value="M"/>
              <asp:ListItem Text="Feminino" Value="F"/>
            </asp:DropDownList>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="telFunc" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="telFunc">Telefone</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="emailFunc" class="mdl-textfield__input" type="email" runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="emailFunc">Email</label>
            <span class="mdl-textfield__error">Insira um email Válido</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="contratacaoFunc" type="date" class="mdl-textfield__input date" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="contatacaoFunc">Data de Contratação</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="cepFunc" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisacep()"></asp:TextBox>
            <label class="mdl-textfield__label" for="cepFunc">CEP</label>
            <span class="mdl-textfield__error">Ultilize apenas números</span>
          </div>

          <!-- ADDED FULL ENDERECO -->
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell--1-offset-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="bairroFunc" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="bairroFunc">Bairro</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
            <asp:TextBox ID="cidadeFunc" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="cidadeFunc">Cidade</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
            <asp:TextBox ID="ufFunc" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="ufFunc">U.F.</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-offset-desktop mdl-cell--10-col mdl-cell-4-col-phone">
            <asp:TextBox ID="residenciaFunc" TextMode="multiline" class="mdl-textfield__input" rows="4" placeholder=" " runat="server"></asp:TextBox>
            <label class="mdl-textfield__label" for="residenciaFunc">Residência</label>
          </div>

          <!-- Cadastrando as informações de um Motorista (habilitação) -->
          <div class="mdl-layout-spacer"></div>
          <div class="titulo mdl-cell mdl-cell--12-col">
            <h2 class="mdl-card__title-text">Habilitação</h2>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="nomeHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="nomeMotHab">Nome</label>
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
            <asp:TextBox ID="validadeHabMot" type="date" class="mdl-textfield__input date" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="validadeHabMot">Validade</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="localGeradoHabMot" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
            <label class="mdl-textfield__label" for="localGeradoHabMot">Local Gerado</label>
          </div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
            <asp:TextBox ID="emissaoHabMot" type="date" class="mdl-textfield__input date" runat="server" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="emissaoHabMot">Emissão</label>
          </div>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button ID="btnCadMot" Text="cadastrar" OnClick="cadastrar" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
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
  </form>
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

  <asp:SqlDataSource
  ID="lattestMotoristas" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT func.nome_func, func.sobrenome_func, func.img_func, func.tel_func FROM funcionario func INNER JOIN motorista mot ON (func.id_func = mot.id_func) ORDER BY func.id_func DESC LIMIT 3">
  </asp:SqlDataSource>

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
      <asp:Parameter Name="cargo"/>
      <asp:Parameter Name="dataNasc"/>
      <asp:Parameter Name="dataContratacao"/>
    </InsertParameters>
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
  </script>
</asp:Content>
