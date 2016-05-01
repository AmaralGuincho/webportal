﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Web_websites_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../resources/logotipo.png" />
    <meta name="viewport" content="width=device-width,
     initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
 rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="../css/main.css" />
    <link rel="stylesheet" href="../css/material-input.css" />
    <title>Login</title>
</head>
<body>
    <style>
        * {
            font-family: 'Open Sans', Arial, sans-serif;
        }
        .content{
            width:100%;
            display:inline;
        }
        form{

            border-radius:8px;
            width:25%;
            margin-left:auto;
            margin-right:auto;
        }

            form > h1 {
                color: Black;
                text-align: center;
                font-size: 3em;
                font-family: 'Open Sans', Arial, sans-serif;
                font-weight: 300;
            }

        .group{
            display:block;
        }

        .button{
            display:inline-block;
            border-radius:8px;
            margin:0 80px;

        }
         footer{
             margin-top:50px;
             text-align:center;
             width:100%;
             font-family:'Roboto',sans-serif;
            font-weight:300;
             margin-bottom:100px;
        }
    small>a{
      text-decoration:none;
    }

    small>a:hover{
       color:#03ff00;
    }

    .footer-simbols{
       font-size:18px;
      color:#989898;
      font-weight:500;
    }

    </style>
    <nav>
        <ul>
            <a href="index.html">
                <img src="../resources/logotipo.png" /></a>
                     <li>Amaral Guincho</li>
                      <li><a href="~/Web/pt-br/login.aspx">Login</a></li>
                      <li><a href="~/Web/pt-br/404.html">Cadastre-se</a></li>
                      <li><a href="~/Web/pt-br/404.html">Contato</a></li>
                      <li class="fb">
                      <a href="https://www.facebook.com/amaral.guincho?fref=ts" target="_blank">
                    <img src="../resources/social/facebook-button.png"/>
                </a>
            </li>
        </ul>
    </nav>
    <div class="content">
        <form runat="server">
            <h1>Bem-Vindo</h1>
            <div class="login">
            <div class="group">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input" placeholder="Nome de Usuario"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
            <div class="group">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input" placeholder="Senha" TextMode="Password"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
                </div>
            <asp:button text="Entrar" runat="server" CssClass="button" OnClick="loginSubmit_Click" />
            <asp:SqlDataSource ID="MySqlLogin" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (login_usr = @LOGIN) AND (pwd_usr = @PWD) OR (pwd_usr = @PWD) AND (email_usr = @LOGIN)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtUsername" Name="LOGIN" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtPassword" Name="PWD" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
    </div>
    <footer>
        <small>
            <span class="footer-simbols"><></span>
            with
            <span class="footer-simbols">&#9829</span>
            by <a href="https://github.com/caiobep" target="_blank">@Caiobep</a>
        </small>
    </footer>
</body>
</html>
