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
                <asp:DropDownList ID="ddTipo" runat="server" CssClass="dropdown" OnSelectedIndexChanged="ddtipo_changed" AutoPostBack="true">
                    <asp:ListItem Text="Administrador" Value="adm" />
                    <asp:ListItem Text="Funcionario" Value="staff" />
                    <asp:ListItem Text="Motorista" Value="lowStaff"/>
                    <asp:ListItem Text="Cliente" Value="usr"/>
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
                    <asp:DropDownList runat="server" CssClass="dropdown" ID="ddSexo" OnSelectedIndexChanged="ddsex_changed" AutoPostBack="true">
                        <asp:ListItem Text="Masculino" Value="M" />
                        <asp:ListItem Text="Feminino" Value="F" />
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
                <asp:Button Text="Salvar" runat="server" Class="button" OnClick="update" AutoPostBack="true"/>
            </td>
        </tr>
     </table>
    <asp:SqlDataSource ID="SqlUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [frota]" UpdateCommand="UPDATE usr SET login_usr = @LOGIN, email_usr = @EMAIL, pwd_usr = @PWD, type_usr = @TIPO, nome_usr = @NOME, sx_usr = @SEXO, birth_usr = @BIRTH, cpf_usr = @CPF, cep_usr = @CEP, mobile_usr = @MOBILE WHERE (id_usr = @IDPESQ)">
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtLogin" Name="LOGIN" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtSenha" Name="PWD" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddTipo" Name="TIPO" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddSexo" Name="SEXO" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="txtNacimento" Name="BIRTH" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtCpf" Name="CPF" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtCep" Name="CEP" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtCelular" Name="MOBILE" PropertyName="Text" />
            <asp:SessionParameter Name="IDPESQ" SessionField="idPesq" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlInportUsr" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (id_usr = @IDUSR)">
        <SelectParameters>
            <asp:SessionParameter Name="IDUSR" SessionField="idPesq" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
