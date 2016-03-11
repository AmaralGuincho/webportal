<%@ Page  MasterPageFile="~/pt-br/adm/adm-master.master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="../../css/material-input.css" type="text/css" />
</asp:Content>



<asp:Content ContentPlaceHolderID="cph" runat="server">
        <h1>Ordem de Serviço</h1>
        <form action="" method="get" class="container">
            <table class="frmTable">
                <tr>
                    <td>
                        <div class="group">
                            <asp:Label Text="Numero Ordem de Serviço:" runat="server" CssClass="simpleLabel" />
                            <asp:TextBox ID="id_oe" runat="server" CssClass="input" placeholder="Numero OE" Enabled="False" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:Label Text="Data:" CssClass="simpleLabel" runat="server" />
                            <asp:TextBox ID="data_abertura" runat="server" CssClass="input" Enabled="false"></asp:TextBox>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:Label Text="Aberto Por:" CssClass="simpleLabel" runat="server" />
                            <asp:TextBox ID="nome_abertura" CssClass="input" runat="server" Enabled="false" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="group">
                            <asp:Label Text="Seguradora" CssClass="simpleLabel" runat="server" />
                            <asp:DropDownList runat="server" CssClass="dropdown">
                                <asp:ListItem Text="Seguradora1" />
                                <asp:ListItem Text="Seguradpra2" />
                            </asp:DropDownList>
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="nome_assistente" CssClass="input" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="Asisstente" CssClass="label" runat="server" />
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="tipo_seguro" CssClass="input" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="Tipo de Seguro" CssClass="label" runat="server" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- Cadastrando Cliente-->
                        <asp:DropDownList ID="Cliente" runat="server" CssClass="dropdown">
                            <asp:ListItem Text="Novo Cliente" />
                            <asp:ListItem Text="Cliente Existente" />
                        </asp:DropDownList>
                    </td>
                    <td>
                      <div class="group">
                         <asp:TextBox ID="nome_cli" CssClass="input" runat="server" />
                         <span class="highlight"></span>
                         <span class="bar"></span>
                          <asp:Label Text="Nome Cliente" CssClass="label" runat="server" />
                       </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="rg_cli" CssClass="input" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="RG" CssClass="label" runat="server" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="cpf_cli" CssClass="input" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="CPF" CssClass="label" runat="server" />
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="endereco_cli" CssClass="input" runat="server" TextMode="MultiLine" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="Endereço" CssClass="label" runat="server" />
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="local_de_retirada" CssClass="input" TextMode="MultiLine" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="Local de Retirada" CssClass="label" runat="server" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="Agendamento" CssClass="input" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="Agendamento" CssClass="label" runat="server" />
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="numero_sinistro" CssClass="input" placeholder="Numero Sinistro" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="Numero Sinistro" CssClass="label" runat="server" />
                        </div>
                    </td>
                    <td>
                        <div class="group">
                            <asp:TextBox ID="local_entrega" CssClass="input" TextMode="MultiLine" placeholder="Local de Entrega" runat="server" />
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <asp:Label Text="" CssClass="label" runat="server" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Resetar" runat="server" Class="button" />
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        <asp:Button Text="Obrir OE" runat="server" Class="button" />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ordem_de_servico]"></asp:SqlDataSource>
        </form>
</asp:Content>