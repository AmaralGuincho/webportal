<%@ Page Language="C#" AutoEventWireup="true" CodeFile="settings.aspx.cs" Inherits="app_settings" MasterPageFile="~/app/index.master" EnableEventValidation="false" %>
<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
<style media="screen">
.unselectable{
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
</style>
<form runat="server">
  <div class="mdl-grid mdl-cell mdl-cell--12-col card-box">
    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col mdl-grid">
      <div class="mdl-card__title mdl-cell mdl-cell-12-col">
        <h2 class="mdl-card__title-text mdl-color-text--grey-600">
          <i class="material-icons ">tune</i>
          Preferências
        </h2>
      </div>
      <div class="card-content mdl-card--border mdl-grid mdl-cell mdl-cell--12-col">
        <a class="unselectable mdl-button mdl-js-button mdl-button--primary" id="alterarDados" onclick="displaySwitch(updateAccount)">
          <i class="material-icons">create</i>
          Altere seus dados
        </a>
        <a class="unselectable mdl-button mdl-js-button mdl-button--primary" id="alterarSenha" onclick="displaySwitch(passwordCard)">
          <i class="material-icons">lock</i>
          Altere Sua senha
        </a>
        <a class="unselectable mdl-button mdl-js-button mdl-button--primary" id="reportarErro" href="mailto:caiobep@me.com?subject=Reporte_de_Erro_no_Amaral-Guincho-Web">
          <i class="material-icons">error</i>
          Reportar um erro
        </a>
      </div>
    </div>

    <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col mdl-grid" id="changePassword">
      <div class="mdl-card__title mdl-cell mdl-cell-12-col">
        <h2 class="mdl-card__title-text mdl-color-text--grey-600">
          <i class="material-icons">lock</i>
          Alterando Sua Senha
        </h2>
      </div>
      <div class="card-content mdl-card--border mdl-grid mdl-cell mdl-cell--12-col">
        <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--6-col mdl-cell--3-offset-desktop">
          <input class="mdl-textfield__input" id="novaSenha" type="password" pattern="[]*"></input>
          <label class="mdl-textfield__label" for="novaSenha">Nova Senha</label>
          <span class="mdl-textfield__error" id="passwordFeedBack"></span>
        </div>
      </div>
      <div class="mdl-card__actions mdl-grid mdl-cell mdl-cell--4-col mdl-cell--4-offset">
        <asp:Button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-cell mdl-cell--12-col" Text="alterar" OnClick="changePassword" runat="server">
      </asp:Button>
    </div>
  </div>

  <div class="card mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="editFunc">
    <div class="mdl-card__title mdl-cell mdl-cell--12-col mdl-color-text--grey-600">
      <h2 class="mdl-card__title-text">
        <i class="material-icons">person</i>
        Alterando Seus Dados
      </h2>
    </div>
    <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
        <asp:TextBox ID="nomeFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
        <label class="mdl-textfield__label" for="nomeFunc">Nome</label>
      </div>
      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
        <asp:TextBox ID="sobrenomeFunc" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
        <label class="mdl-textfield__label" for="SobrenomeFunc">Sobrenome</label>
      </div>
      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col-desktop mdl-cell-4-col-phone">
        <asp:TextBox ID="dtNascFunc" class="mdl-textfield__input date" runat="server" placeholder=" "></asp:TextBox>
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
      <asp:TextBox ID="contratacaoFunc" class="mdl-textfield__input date" runat="server" placeholder=" "></asp:TextBox>
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
        <asp:TextBox ID="validadeHabMot" placeholder=" " class="mdl-textfield__input date" pattern="[0-9,/]*" runat="server" onkeypress="mascara(this,'##/##/####')"></asp:TextBox>
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
</div>
  <div class="mdl-card__actions mdl-card--border">
      <asp:Button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" Text="Atualizar" OnClick="updateFuncionario" runat="server">
      </asp:Button>
    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="displaySwitch(updateAccount)">
      Cancelar
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

<asp:SqlDataSource ID="sqlChangePassword" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  UpdateCommand="UPDATE login SET password_login = @PASSWORD WHERE id_func = @LOGIN">
<UpdateParameters>
  <asp:SessionParameter Name="LOGIN" SessionField="log"/>
  <asp:ControlParameter Name="PASSWORD" ControlID="novaSenha" PropertyName="Text"/>
</UpdateParameters>
</asp:SqlDataSource>

<asp:SqlDataSource ID="sqlFuncionario" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT * FROM funcionario WHERE id_func = @USER"
  UpdateCommand="
    UPDATE funcionario SET
      id_cargo = @idCargo,
      nome_func = @nomeFunc,
      sobrenome_func = @sobrenomeFunc,
      dtnasc_func = @dtnascFunc,
      cep_func = @cepFunc,
      cpf_func = @cpfFunc,
      dtcont_func = @dtcontFunc,
      sx_func = @sxFunc,
      tel_func = @telFunc,
      email_func = @emailFunc,
      residencia_func = @residenciaFunc,
      bairro_func = @bairroFunc,
      uf_func = @ufFunc,
      cid_func = @cidFunc
    WHERE
     id_func = @user">
  <UpdateParameters>
    <asp:Parameter Name="user"/>
    <asp:Parameter Name="nomeFunc"/>
    <asp:Parameter Name="sobrenomeFunc"/>
    <asp:Parameter Name="cepFunc"/>
    <asp:Parameter Name="cpfFunc"/>
    <asp:Parameter Name="telFunc"/>
    <asp:Parameter Name="emailFunc"/>
    <asp:Parameter Name="residenciaFunc"/>
    <asp:Parameter Name="bairroFunc"/>
    <asp:Parameter Name="ufFunc"/>
    <asp:Parameter Name="cidFunc"/>
    <asp:Parameter Name="idCargo"/>
    <asp:Parameter Name="sxFunc"/>
    <asp:Parameter Name="dtnascFunc"/>
    <asp:Parameter Name="dtcontFunc"/>
  </UpdateParameters>
  <SelectParameters>
    <asp:SessionParameter Name="USER" SessionField="log"/>
  </SelectParameters>
</asp:SqlDataSource>

<script src="../scripts/owasap.js" charset="utf-8"></script>

<script type="text/javascript">
// Shell Title
var shellTitle = document.getElementById("shellTitle");
// Cards
var passwordCard = document.getElementById('changePassword');
var updateAccount = document.getElementById('editFunc');
// Buttons
var botaoAlterarDados = document.getElementById('alterarDados');
var botaoAlterarSenha = document.getElementById('changePassword');
var botaoReportarErro = document.getElementById('reportarErro');
var fabButton = document.querySelector('#fabButton');

var inputSenha = document.getElementById('novaSenha');
var passwordFeedBack = document.getElementById('passwordFeedBack');

inputSenha.addEventListener('keyup', function() {

  var errorsLegth = owaspPasswordStrengthTest.test(novaSenha.value).passedTests.length;
  // var passwordError = owaspPasswordStrengthTest.test(novaSenha.value).errors[0]

  var forcaDaSenha = function() {
    if(errorsLegth <= 5){
      return "fraca";
    }else if (errorsLegth <= 3) {
      return "média";
    }else if (errorsLegth <= 1) {
      return 'boa';
    }else if (errorsLegth == 0) {
      return "Exelente";
    }else{
      return "ok";
    }
  }

   passwordFeedBack.innerHTML = owaspPasswordStrengthTest.test(novaSenha.value).errors[0]
   + ' (força da senha: '+forcaDaSenha()+' )'
  // passwordFeedBack.innerHTML = passwordMessage();
});

// Changing Shell Title
  window.addEventListener('load', function(){
    shellTitle.innerHTML = 'Ajustes';
    passwordCard.style.display = 'none';
    updateAccount.style.display = 'none';
    fabButton.style.display = 'none';
  })

function displaySwitch(card) {
  if(card.style.display == 'none'){
    card.style.display = 'block';
  }else {
    card.classList.toggle('slideOutDown');
  }
}
</script>
</asp:Content>
