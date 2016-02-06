<%@ Page MasterPageFile="~/pt-br/adm/adm-master.master" Language="C#" AutoEventWireup="true" CodeFile="accounts.aspx.cs" Inherits="pt_br_adm_accounts" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
        rel="stylesheet">
    <link rel="stylesheet" href="../../css/metro-input.css" type="text/css" />
</asp:Content>

<asp:Content ContentPlaceHolderID="cph" runat="server">
    <div class="container">
        <h2>Gerenciador</h2>
        <div class="buttonHub">
            <div class="button">
                <asp:Button Text="star" runat="server" CssClass="MetroButton" OnClick="showAdm" />
                <span class="Material-desc">Administradores</span>
            </div>
            <div class="button">
                <asp:Button Text="work" runat="server" CssClass="MetroButton" OnClick="showStaff" />
                <span class="Material-desc">Funcionarios</span>
            </div>
            <div class="button">
                <asp:Button Text="local_shipping" runat="server" CssClass="MetroButton" OnClick="showLowStaff"/>
                <span class="Material-desc">Motoristas</span>
            </div>
            <div class="button">
                <asp:Button Text="people" runat="server" CssClass="MetroButton" />
                <span class="Material-desc">Clientes</span>
            </div>
            <div class="button">
                <asp:Button Text="directions_car" runat="server" CssClass="MetroButton" />
                <span class="Material-desc">Frota</span>
            </div>
        </div>
        <div class="buttonHub">
            <div class="button">
                <asp:Button Text="local_hospital" runat="server" CssClass="MetroButton" />
                <span class="Material-desc">Seguro</span>
            </div>
            <div class="button">
                <asp:Button Text="book" runat="server" CssClass="MetroButton" />
                <span class="Material-desc">OE</span>
            </div>
            <div class="button">
                <asp:Button Text="work" runat="server" CssClass="MetroButton" />
                <span class="Material-desc">Funcionarios</span>
            </div>
            <div class="button">
                <asp:Button Text="near_me" runat="server" CssClass="MetroButton" />
                <span class="Material-desc">Viagens</span>
            </div>
        </div>
        <div class="gridview" id="divgv" runat="server" visible="false">
            <h2>Dados encontrados</h2>
            <asp:GridView ID="GridView" runat="server">
            </asp:GridView>
        </div>
        <div class="notFound" runat="server" id="nothing_to_show" visible="false">
            <style>#error{color:#ff0000}</style>
            <h2 id="error">Ops! Ainda Não temos nada por aqui!</h2>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlSelectStaff" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (type_usr = 'staff')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSelectLowStaff" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (type_usr = 'lowStaff')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSelectClient" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (type_usr = 'usr')"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlSelectAdm" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (type_usr = 'adm')"></asp:SqlDataSource>
</asp:Content>

