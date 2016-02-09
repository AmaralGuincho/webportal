<%@ Page MasterPageFile="~/pt-br/adm/adm-master.master" EnableEventValidation="false" MaintainScrollPositionOnPostback="true" Language="C#" AutoEventWireup="true" CodeFile="accounts.aspx.cs" Inherits="pt_br_adm_accounts" %>

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
                <asp:Button Text="people" runat="server" CssClass="MetroButton" OnClick="showClients"/>
                <span class="Material-desc">Clientes</span>
            </div>
            <div class="button">
                <asp:Button Text="directions_car" runat="server" CssClass="MetroButton" OnClick="showFrota" />
                <span class="Material-desc">Frota</span>
            </div>
        </div>
        <div class="buttonHub">
            <div class="button">
                <asp:Button Text="local_hospital" runat="server" CssClass="MetroButton" OnClick="showSeguro" />
                <span class="Material-desc">Seguro</span>
            </div>
            <div class="button">
                <asp:Button Text="book" runat="server" CssClass="MetroButton" OnClick="showOE"/>
                <span class="Material-desc">OE</span>
            </div>
            <div class="button">
                <asp:Button Text="work" runat="server" CssClass="MetroButton" />
                <span class="Material-desc">Funcionarios</span>
            </div>
            <div class="button">
                <asp:Button Text="near_me" runat="server" CssClass="MetroButton" OnClick="showViagem" />
                <span class="Material-desc">Viagens</span>
            </div>
        </div>
        <div class="gridview" id="divgv" runat="server" visible="false">
            <div class="actions">
                <h2>Dados encontrados</h2>
                <asp:Button Text="Editar" runat="server" CssClass="MetroButton" OnClick="editBtn" />
                <asp:Button Text="Adicionar" runat="server" CssClass="MetroButton" />
            </div>
            <asp:GridView ID="GridView" runat="server" OnRowDataBound="OnRowDataBound" OnSelectedIndexChanged="OnSelectedIndexChanged" EditRowStyle-VerticalAlign="Middle" AutoGenerateEditButton="False">
            </asp:GridView>
        </div>
        <div class="notFound" runat="server" id="nothing_to_show" visible="false">
            <style>#error{color:#ff0000}</style>
            <h2 id="error">Ops! Ainda Não temos nada por aqui!</h2>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlSelectStaff" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr as 'Código', login_usr as 'Login', email_usr as 'email', pwd_usr as 'Senha', type_usr as 'tipo', nome_usr as 'Nome', sx_usr as 'Sexo', birth_usr as 'Nascimento', cpf_usr as 'Cpf' , cep_usr as 'Cep', mobile_usr as 'Celular' FROM usr WHERE (type_usr = 'staff')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSelectUsr" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr as 'Código', login_usr as 'Login', email_usr as 'email', pwd_usr as 'Senha', type_usr as 'tipo', nome_usr as 'Nome', sx_usr as 'Sexo', birth_usr as 'Nascimento', cpf_usr as 'Cpf' , cep_usr as 'Cep', mobile_usr as 'Celular' FROM usr WHERE (type_usr = 'usr')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDFrota" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_frota as 'Código', tipo, placa FROM frota"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSelectLowStaff" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr as 'Código', login_usr as 'Login', email_usr as 'email', pwd_usr as 'Senha', type_usr as 'tipo', nome_usr as 'Nome', sx_usr as 'Sexo', birth_usr as 'Nascimento', cpf_usr as 'Cpf' , cep_usr as 'Cep', mobile_usr as 'Celular' FROM usr WHERE (type_usr = 'lowStaff')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSelectClient" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr as 'Código', login_usr as 'Login', email_usr as 'email', pwd_usr as 'Senha', type_usr as 'tipo', nome_usr as 'Nome', sx_usr as 'Sexo', birth_usr as 'Nascimento', cpf_usr as 'Cpf' , cep_usr as 'Cep', mobile_usr as 'Celular' FROM usr WHERE (type_usr = 'usr')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlViagem" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_viagem, id_motorista, id_frota, id_oe, kmsaida, kmchegada, horatrab FROM Viagem"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlSelectAdm" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr as 'Código', login_usr as 'Login', email_usr as 'email', pwd_usr as 'Senha', type_usr as 'tipo', nome_usr as 'Nome', sx_usr as 'Sexo', birth_usr as 'Nascimento', cpf_usr as 'Cpf' , cep_usr as 'Cep', mobile_usr as 'Celular' FROM usr WHERE (type_usr = 'adm')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSeguro" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_seguro, nome_seguro, cod_prestador, cep, cgc, setor_cadastro_tel, setor_pagto_tel, fechamento_servicos_tel, casos_andamento_tel, cordenador_regiao, passeio_40km, passeio_maior40km, passeio_hora_trabalhada, passeio_hora_parada, ull_40km, ull_maior40km, ull_hora_trabalhada, ull_hora_parada, moto_40km, moto_maior40km, moto_hora_trabalhada, moto_hora_parada, garagem_40km, garagem_maior40km, garagem_hora_trabalhada, garagem_hora_parada, re_40km, re_maior40km, re_hora_trabalhada, re_hora_parada, patins_40km, patins_maior40km, patins_hora_trabalhada, patins_hora_parada, cl_40km, cl_maior40km, cl_hora_trabalhada, cl_hora_parada, sospsd_40km, sospsd_maior40km, sospsd_hora_trabalhada, sospsd_hora_parada, xtrpsd_40km, xtrpsd_maior40km, xtrpsd_hora_trabalhada, xtrpsd_hora_parada, scrmec_40km, scrmec_mais40km, km_rodado, km_parado, saida_nacional_40km, saida_nacional_mais40km, saida_importado_40km, saida_importado_mais40km, saida_confeccao_40km, saida_confeccao_mais40km, saida_40km, saida_mais40km, saida_hora_trabalhada, vigilante_40km, vigilante_mais40km, vigilante_hora_trabalhada FROM seguro">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlOe" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_oe as 'Código', data_abertura_oe as 'Data de Abertura', nome_ab_chamado as 'Aberto por', id_seguro, nome_assistente_seguro as 'Assistencia', tipo_seguro as 'Tipo de Seguro', id_cliente, local_retirada as 'Retirada', agendamento as 'Agendamento', numero_sinistro as 'Sinistro', local_entrega as 'Entrega', id_motorista, status as 'Status' FROM ordem_de_servico"></asp:SqlDataSource>
</asp:Content>

