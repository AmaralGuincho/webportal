<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="websites_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="images/icon.ico"/>
    <meta charset="utf-8" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="../style/old.css" />
    <title>Amaral Guincho | Login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Mobile Plataform for Amaral Guincho">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1.0"/>
    <link href="../images/icon.ico" rel="icon" />

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="apple-mobile-web-app-title" content="Amaral Guincho">
    <link rel="apple-touch-icon" href="../images/icon-white.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="application-name" content="Amaral Guincho">
    <link rel="icon" sizes="192x192" href="../images/icon.ico">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="../images/icon-white.png">
    <meta name="msapplication-TileColor" content="#FFF">
    <link rel="shortcut icon" href="../images/icon-white.png">

    <!-- Roboto Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italiic,light,bolditalic,black,medium&apm;lang=en" rel="stylesheet" />
    <!-- Google Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>

    <!-- Animate.css -->
    <link rel="stylesheet" href="../style/animate.css">

    <!-- Web Application Manifest -->
    <link rel="manifest" href="../manifest.json">
    <!-- Material Design Lite -->
    <link href="../material/material.min.css" rel="stylesheet" />
</head>
<body>
  <style>
  .invisible{
    visibility: none;
  }
  .title{
    font-weight: 300;
    font-size: 64px;
  }
    #view-source {
    position: fixed;
    display: block;
    right: 0;
    bottom: 0;
    margin-right: 40px;
    margin-bottom: 40px;
    z-index: 900;
    }
    .ribbon {
    width: 100%;
    height: 40vh;
    background-color: #3F51B5;
    flex-shrink: 0;
    }
    .main {
      margin-top: -35vh;
      flex-shrink: 0;
    }

    .header .mdl-layout__header-row {
      padding-left: 40px;
    }

    .container {
      max-width: 1600px;
      width: calc(100% - 16px);
      margin: 0 auto;
    }

    .content {
      border-radius: 2px;
      padding: 80px 56px;
      margin-bottom: 80px;
    }

    .layout.is-small-screen .content {
      padding: 40px 28px;
    }

    .content h3 {
      margin-top: 48px;
    }

    .footer {
      padding-left: 40px;
    }

    .footer .mdl-mini-footer--link-list a {
      font-size: 13px;
    }

    div img{
      display: block;
      margin: auto;

      height: auto;
      max-height: 100%;

      width: auto;
      max-width: 100%;
    }
  </style>
  <div class="layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-100">
    <header class="header mdl-layout__header mdl-layout__header--scroll mdl-color--grey-100 mdl-color-text--grey-800">
      <div class="mdl-layout__header-row">
        <span class="mdl-layout-title mdl-color-text--grey-600">
          <i class="material-icons">supervisor_account</i>
          Portal do Funcionário
        </span>
        <div class="mdl-layout-spacer"></div>
      </div>
    </header>
    <div class="ribbon"></div>
    <main class="main mdl-layout__content">
      <div class="container mdl-grid">
        <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
        <div class="content invisible mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
          <div class="crumbs mdl-color-text--grey-500 mdl-grid mdl-cell mdl-cell--12-col">
              <div class="mdl-cell mdl-cell--6-col-desktop mdl-cell--4-col-tablet mdl-cell--2-offset-tablet">
                <img src="../Resources/icon.png" id="img" class="invisible"/>
              </div>
              <div class="loginForm invisible mdl-grid mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet">
                <form runat="server" action="?" method="POST" class="mdl-cell mdl-cell--12-col">
                  <span class="title mdl-layout-title mdl-color-text--grey-700 mdl-cell mdl-cell--12-col mdl-cell--hide-phone mdl-cell--hide-tablet">
                    Entrar
                  </span>
                  <div class="mdl-layout-spacer"></div>
                  <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--12-col-desktop mdl-cell--6-col-tablet mdl-cell--1-offset-tablet">
                    <asp:TextBox ID="txtUsername" runat="server" class="mdl-textfield__input"></asp:TextBox>
                    <label class="mdl-textfield__label" for="agendamentoOS">Nome de Usuário</label>
                  </div>
                  <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--12-col-desktop mdl-cell--6-col-tablet mdl-cell--1-offset-tablet">
                    <asp:TextBox ID="txtPassword" runat="server" class="mdl-textfield__input" type="password"></asp:TextBox>
                    <label class="mdl-textfield__label" for="agendamentoOS">Senha</label>
                  </div>
                  <div class="captchaDiv mdl-cell mdl-cell--12-col mdl-cell--1-offset-tablet">
                    <div id="googleCaptcha" class="g-recaptcha hidden mdl-cell mdl-cell--12-col" data-sitekey="6LfO2woUAAAAACq39JNsQgZ72fKH226foaZeTK1o" data-callback="inFactNotARobot"></div>
                  </div>
                  <asp:Button id="btnLogin" type="submit" Text="entrar" onclick="login" runat="server"
                   class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-cell mdl-cell--2-offset-desktop mdl-cell--2-offset-tablet">
                  </asp:Button>
                  <asp:Button id="btnForgotPass" type="submit" Text="Esqueceu sua senha?" onclick="forgotPass" runat="server"
                   class="hidden mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-cell mdl-cell--2-offset-tablet mdl-cell--8-col-desktop">
                  </asp:Button>
                </form>
              </div>
          </div>
      </div>
    </main>
  </div>
  <!-- Material Design Scripts src -->
  <script src="../material/material.min.js"></script>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <asp:SqlDataSource ID="SqlLogin" runat="server" ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_login, username_login, password_login, id_func FROM login WHERE (username_login = @LOGIN) AND (password_login = @SENHA)">
        <SelectParameters>
            <asp:Parameter Name="LOGIN" />
            <asp:Parameter Name="SENHA" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlFunc" runat="server" ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_func, id_cargo, nome_func, sobrenome_func, dtnasc_func, cep_func, cpf_func, dtcont_func, sx_func, tel_func, email_func, uf_func, cid_func, img_func FROM funcionario WHERE (id_func = @ID)">
        <SelectParameters>
            <asp:SessionParameter Name="@ID" SessionField="log" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="userLog" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO userlog VALUES (null,@funcionario,@acao,@time)">
      <InsertParameters>
        <asp:Parameter Name="funcionario"/>
        <asp:Parameter Name="acao"/>
        <asp:Parameter Name="time"/>
      </InsertParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlForgotPass" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT * FROM funcionario">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlUpdateLogin" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    UpdateCommand="UPDATE login SET password_login = @newpassword where id_func = @func">
      <SelectParameters>
        <asp:Parameter Name="newpassword"/>
        <asp:Parameter Name="func"/>
      </SelectParameters>
    </asp:SqlDataSource>


    <script type="text/javascript">
      var captcha = document.getElementById('googleCaptcha');
      var loginButton = document.getElementById('btnLogin');
      var buttonForgotPass = document.getElementById("btnForgotPass");

      function checkCaptcha() {
        // Getting Variable from Server
        var logAttempt = '<%=((int)Session["failedLogAttempts"])%>';
        // Checking number of wrong attempts
        if (logAttempt >= 3) {
          captcha.classList.remove('hidden');
          buttonForgotPass.classList.remove('hidden');
          loginButton.classList.add('invisible');
        }

      };

      var inFactNotARobot = function () {
        captcha.classList.add('animated');
        captcha.classList.add('fadeOutDown');
        captcha.addEventListener('animationend',function() {
          captcha.classList.add('invisible');
          loginButton.classList.remove('invisible');
        });
      }

      function join() {
        alert("Peça autorização ao administrador!");
      }

      window.addEventListener('load', function(){
        // getting cards
        var mainCard = document.querySelector('.content');
        var loginForm = document.querySelector('.loginForm');
        var image = document.querySelector('#img');

        // animating mainCard
        mainCard.classList.remove('invisible');
        mainCard.classList.add('animated');
        mainCard.classList.add('slideInDown');

        // animating img after mainCard end
        mainCard.addEventListener('animationend', function() {
          image.classList.remove('invisible');
          image.classList.add('animated');
          image.classList.add('pulse');

          // Animating login after Image is done
          image.addEventListener('animationend', function(){
            loginForm.classList.remove('invisible');
            loginForm.classList.add('animated');
            loginForm.classList.add('fadeIn');

          });
        });

        // checking captcha
        checkCaptcha();

      });
    </script>
</body>
</html>
