<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="pt_br_app_login" MasterPageFile="~/pt-br/app/index.master" %>

<asp:Content ContentPlaceHolderID="indexBodyPlaceholder" runat="server">
        <style>
            .loginCard{
                display:block;
                margin-right:auto;
                margin-left:auto;
                margin-top:5%;
                width:400px;
                text-align:center;
                padding-top:25px;
            }
            .loginForm{
                padding:25px 50px;
            }
            .loginCard > .mdl-card__title{
                color:#808080;
            }
            .loginForm > .mdl-button{
                display:block;
                margin-right:auto;
                margin-left:auto;
            }
        </style>
          <div class="loginCard mdl-card mdl-shadow--3dp">
              <div class="mdl-card__title">
                  <h2 class="align-center mdl-card__title-text">Login</h2>
              </div>
           <form class="loginForm" runat="server">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <asp:TextBox class="mdl-textfield__input" id="login" ID="txtLogin" runat="server"/>
              <label class="mdl-textfield__label" for="login">Nome de Usuário</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
               <asp:TextBox class="mdl-textfield__input" id="password" ID="txtPassword" TextMode="Password" runat="server" />
               <label class="mdl-textfield__label" for="login">Senha</label>
            </div>
            <asp:Button ID="loginEntrar" runat="server" Text="Entrar" class="mdl-button mdl-js-button mdl-button--primary" />
            <asp:SqlDataSource ID="MySqlLogin" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_func FROM login WHERE (username_login = login) and (password_login = password)">
              <SelectParameters>
                <asp:ControlParameter ControlID="txtLogin" Name="login" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" />
              </SelectParameters>
            </asp:SqlDataSource>
           </form>
           </div>
</asp:Content>
