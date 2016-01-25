<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Web_websites_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../resources/logotipo.png" />
    <meta name="viewport" content="width=device-width,
     initial-scale=1" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
        rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../css/main.css" />
    <title>Login</title>
</head>
<body>
    <style>
        form{
            background-color:#004e90;
            margin:10px 50px;
            padding:50px;
            border-radius:0.8em;
        }

        form>h1{
            color:#FFF;
            text-align:center;
            font-size:3em;
            font-family:'Open Sans', Arial, sans-serif;
            font-weight:300;
        }

        form>.input{
            display:block;
            height:30px;
            width:90%;
            border-radius:0.8em;
            padding:5px;
            margin:5px 10px;
            font-size:1em;
           font-family:'Open Sans',sans-serif
        }

            form > .input-button {
                display: block;
                background-color: #004e90;
                color: #FFF;
                border: none;
                outline-offset: unset;
                width: 15%;
                border-radius: 0.4em;
                margin: 5% 42%;
                cursor: pointer;
               
                transition: color 0.25s ease-in 0.15s, background 0.50s ease-in 0.25s;
                font-size: 1.3em;
                font-family:'Segoe UI',sans-serif;
            }

            form>.input-button:hover{
                transition: color 0.25s ease-out 0.25s, background 0.25s ease-out 0.15s;
                color:#FFF;
                background-color:#0e3c8f;
            }


            form>.input-button:focus{
                outline:none;
                background-color:#0b347e;
                color:#b1b1b1;
                border:none;
            }

        @media only screen and (min-width : 1280px) {
            form > .input {
                width:30%;
                margin:10px 35%;
            }

            form{
            background-color:#004e90;
            margin:10px 300px;
            padding:30px 5px;
            border-radius:0.8em;
            }
        }
          
    </style>
    <nav>
        <ul>
            <a href="index.html">
                <img src="../resources/logotipo.png" /></a>
                     <li>Amaral Guincho</li>
                      <li><a href="websites/login.aspx">Login</a></li>
                      <li><a href="websites/404.html">Cadastre-se</a></li>
                      <li><a href="websites/404.html">Contato</a></li>
                      <li class="fb">
                      <a href="https://www.facebook.com/amaral.guincho?fref=ts" target="_blank">
                    <img src="../resources/social/facebook-button.png">
                </a>
            </li>
        </ul>
    </nav>
    <content>
        <form runat="server">
            <h1>Bem-Vindo de Volta!</h1>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input" placeholder="Login"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input" placeholder="Senha" TextMode="Password"></asp:TextBox>
            <asp:button text="Entrar" runat="server" CssClass="input-button" />
        </form>
    </content>
</body>
</html>
