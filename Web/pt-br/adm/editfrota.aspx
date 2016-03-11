<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/pt-br/adm/adm-master.master" CodeFile="editfrota.aspx.cs" Inherits="pt_br_adm_editfrota" %>

<asp:content contentplaceholderid="head" runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="../../css/material-input.css" type="text/css" />
</asp:content>



<asp:content contentplaceholderid="cph" runat="server">
    <h1>Ordem de Serviço</h1>
    <table class="frmTable">
        <tr class="#">
            <td>
                <td>
                    <asp:Label Text="Tipo" CssClass="simpleLabeldd" runat="server" />
                    <asp:DropDownList ID="ddTipo" runat="server" CssClass="dropdown">
                        <asp:ListItem Text="Guincho" />
                        <asp:ListItem Text="Taxi" />
                        <asp:ListItem Text="SOS-Guincho" />
                        <asp:ListItem Text="Pesado" />
                    </asp:DropDownList>
                </td>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtPlaca" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Placa" CssClass="label" runat="server" />
                </div>
            </td>
        </tr>
        <tr class="Ação">
            <td></td>
            <td></td>
            <td>
                <asp:Button Text="Salvar" runat="server" Class="button" OnClick="update" />
            </td>
        </tr>
     </table>
    <asp:SqlDataSource ID="SqlUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [frota]" UpdateCommand="UPDATE frota SET tipo = @TIPO, placa = @PLACA WHERE (id_frota = @IDPESQ)">
        <UpdateParameters>
            <asp:SessionParameter Name="IDPESQ" SessionField="idpesq" />
            <asp:ControlParameter ControlID="txtPlaca" Name="@PLACA" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddTipo" Name="@TIPO" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlInportUsr" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_frota, tipo, placa FROM frota WHERE (id_frota = @IDUSR)">
        <SelectParameters>
            <asp:SessionParameter Name="IDUSR" SessionField="idpesq" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:content>
