<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Web_websites_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="images/icon.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="../style/old.css" />
    <title>Amaral Guincho | Login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Mobile Plataform for Amaral Guincho">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1.0"/>
    <link href="../images/icon.png" rel="icon" />

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="apple-mobile-web-app-title" content="Amaral Guincho">
    <link rel="apple-touch-icon" href="../images/icon-white.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="application-name" content="Amaral Guincho">
    <link rel="icon" sizes="192x192" href="../images/icon-white.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="../images/icon-white.png">
    <meta name="msapplication-TileColor" content="#FFF">
    <link rel="shortcut icon" href="../images/icon-white.png">

</head>
<body>
    <style>
        form{
            display:block;
            margin-left:auto;
            margin-right:auto;
            padding:25px;
            width:400px;
        }
        .input{
          font-size:18px;
          font-family: 'Open Sans','Arial',sans-serif;
          font-weight: 300;
          padding:10px 10px 10px 5px;
          display:block;
          width:300px;
          border:none;
          border-bottom:1px solid #757575;
          margin-bottom:18px;
          display:block;
          margin-left:auto;
          margin-right:auto;
        }
        .input:focus{
            outline:none;
        }
        h1{
            margin-top:0;
            margin-bottom:50px;
            font-family:'Open Sans', Arial, sans-serif;
            font-weight:300;
            text-align:center;
        }
        .button{
          display:block;

	        font:normal normal 300 1.3em 'Roboto';
            font-family:'Roboto', Arial , sans-serif;
	        text-decoration:none;

	        color:#177ac4;
	        background-color:transparent;
	        border:1px solid #177ac4;
	        border-radius:100px;

	        padding: .3em 2.4em;
	        margin:5px;
            margin-right:auto;
            margin-left:auto;

	        background-size: 200% 100%;
	        background-image: linear-gradient(to right, transparent 50%, #177ac4 50%);
	        transition: background-position .3s cubic-bezier(0.19, 1, 0.22, 1) .1s, color .5s ease 0s, background-color .5s ease;
        }

         .button:hover, .button:active{
	        color:rgba(255, 255, 255, 1);
	        background-color: rgba(23, 122, 196, 0.99);
	        background-position: -100% 100%;
        }
         .button:focus{
             outline:none;
         }
         @media (max-width: 320px) {
          form{
            padding: 0;
            width:300px;
            margin:10px 5px;
          }
          h1{
            width:200px;
            margin:10px auto 80px auto;
          }
          .input{
            width: 250px;
          }
          .button{
            margin-top:50px;
          }
         }
    </style>
    <nav>
        <ul>
            <a href="../index.html"><img src="../images/icon.png" /></a>
            <li>Amaral Guincho</li>
            <li><a href="../index.html">Home</a></li>
            <li><a onclick="join();">Cadastre-se</a></li>
            <li><a href="http://amaralguincho.com.br">Contato</a></li>
        </ul>
    </nav>
    <content>
        <form runat="server">
            <h1>Bem-Vindo de Volta!</h1>
            <div class="group">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input" placeholder="Nome de Usuario" type="email"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
            <div class="group">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input" placeholder="Senha" TextMode="Password" type="password"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
            <asp:button text="Entrar" runat="server" CssClass="button" OnClick="loginSubmit_Click" />
            <asp:SqlDataSource ID="SqlLogin" runat="server" ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_login, username_login, password_login, id_func FROM login WHERE (username_login = @LOGIN) AND (password_login = @SENHA)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtUsername" Name="LOGIN" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtPassword" Name="SENHA" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlFunc" runat="server" ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_func, id_cargo, nome_func, sobrenome_func, dtnasc_func, cep_func, cpf_func, dtcont_func, sx_func, tel_func, email_func, uf_func, cid_func, img_func FROM funcionario WHERE (id_func = @ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="@ID" SessionField="log" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
    </content>
    <script type="text/javascript">
      function join() {
        alert("Peça autorização ao administrador!");
      }
    </script>
</body>
</html>
