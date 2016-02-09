<%@ Page Language="C#" MasterPageFile="~/pt-br/adm/adm-master.master" AutoEventWireup="true" CodeFile="editusr.aspx.cs" Inherits="css_editusr" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="../../css/material-input.css" type="text/css" />
</asp:Content>



<asp:Content ContentPlaceHolderID="cph" runat="server">
    <h1>Ordem de Serviço</h1>
    <table class="frmTable">
        <tr class="#">
            <td>
                <div class="group">
                    <asp:TextBox ID="txtLogin" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Login" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtEmail" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Email" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtSenha" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Senha" CssClass="label" runat="server" />
                </div>
            </td>
        </tr>
        <tr class="#">
            <td>
                <asp:Label Text="Tipo" CssClass="simpleLabeldd" runat="server" />
                <asp:DropDownList ID="ddTipo" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="Administrador" />
                    <asp:ListItem Text="Funcionario" />
                    <asp:ListItem Text="Motorista" />
                    <asp:ListItem Text="Cliente" />
                </asp:DropDownList>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtNome" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Nome" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:Label Text="Sexo" CssClass="simpleLabeldd" runat="server" />
                    <asp:DropDownList runat="server" CssClass="dropdown" ID="ddSexo">
                        <asp:ListItem Text="Masculino" />
                        <asp:ListItem Text="Feminino" />
                    </asp:DropDownList>
                </div>
            </td>
        </tr>
        <tr class="#">
            <td>
                <div class="group">
                    <asp:TextBox ID="txtNacimento" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Data de Nascimento" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtCpf" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="CPF" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtCep" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Cep" CssClass="label" runat="server" />
                </div>
            </td>
        </tr>
        <tr class="#">
            <td>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtCelular" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Celular" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
            </td>
        </tr>
        <tr class="Ação">
            <td></td>
            <td></td>
            <td>
                <asp:Button Text="Salvar" runat="server" Class="button" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlInportUsr" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (id_usr = @IDUSR)">
        <SelectParameters>
            <asp:SessionParameter Name="IDUSR" SessionField="idPesq" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
