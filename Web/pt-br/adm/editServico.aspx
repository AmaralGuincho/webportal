<%@ Page Language="C#" MasterPageFile="~/pt-br/adm/adm-master.master" MaintainScrollPositionOnPostback="true" EnableEventValidation="true" AutoEventWireup="true" CodeFile="editServico.aspx.cs" Inherits="pt_br_adm_editServico" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="../../css/material-input.css" type="text/css" />
    <style>
        @media print{
            @page {
                size: auto;
                margin: 0;
            }
            h1{
                visibility:hidden;
                margin-bottom:100px;
            }
                h1:after {
                    visibility: visible;
                    content: "Ordem de Serviço";
                    text-align: center;
                }

            .button{
                display:none;
            }

            table{
                margin:0;
            }
            #title{
                display:none;
            }
            small{
                display:none;
            }
            .inline-button{
                display:none;
            }
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="cph" runat="server">
    <h1 id="title">Ordem de Serviço</h1>
    <table class="frmTable">
        <tr class="System_info">
            <td>
                <div class="group">
                    <asp:Label Text="Número Ordem de Serviço:" runat="server" CssClass="simpleLabel" />
                    <asp:TextBox ID="txtid_oe" runat="server" CssClass="input" placeholder="Numero OE" Enabled="False" />
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
        <tr class="seguro">
            <td>
                <div class="group">
                    <asp:Label Text="Seguradora" CssClass="simpleLabeldd" runat="server" />
                    <asp:DropDownList runat="server" ID="ddSeguradora" CssClass="dropdown" DataSourceID="MySqlSeguro" DataTextField="nome_seguro" DataValueField="id_seguro">
                        <asp:ListItem Text="Seguradora1" />
                        <asp:ListItem Text="Seguradpra2" />
                    </asp:DropDownList>
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="Assistência" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Assistência" CssClass="label" runat="server" />
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
        <tr class="cliente">
            <td>
                <!-- Cadastrando Cliente-->
                <asp:DropDownList ID="ClienteDD" runat="server" CssClass="dropdown" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="selected">
                    <asp:ListItem Text="Cliente Existente" />
                    <asp:ListItem Text="Novo Cliente" />
                </asp:DropDownList>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="nome_pesq_cli" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Nome Cliente" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <asp:Button Text="Procurar" ID="btnProcurar_cliente" runat="server" Class="inline-button" Enabled="True" OnClick="btnProcurar_cliente_Click" />
            </td>
        </tr>
        <tr class="client-info">
            <td>
                <asp:Label Text="Sexo" CssClass="simpleLabeldd" runat="server" />
                <asp:DropDownList ID="sexoCli" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="Masculino" />
                    <asp:ListItem Text="Feminino" />
                </asp:DropDownList>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="email_cli" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Email" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="Cel_cli" CssClass="input" runat="server" onkeypress="return onlyNumbers();" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Celular" CssClass="label" runat="server" />
                </div>
            </td>
        </tr>
        <tr class="client-info">
            <td>
                <div class="group">
                    <asp:TextBox ID="cpf_cli" CssClass="input" runat="server" onkeypress="return onlyNumbers();" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="CPF" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:Label Text="Endereço" CssClass="simpleLabel-multiline" runat="server" />
                    <asp:TextBox ID="endereco_cli" CssClass="large-input" runat="server" TextMode="MultiLine" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:Label Text="Status" CssClass="simpleLabeldd" runat="server" />
                    <asp:DropDownList runat="server" CssClass="dropdown" ID="ddStatus">
                        <asp:ListItem Text="Aberto" />
                        <asp:ListItem Text="Fechado" />
                        <asp:ListItem Text="Resusado" />
                        <asp:ListItem Text="Outro" />
                    </asp:DropDownList>
                </div>
            </td>
        </tr>
        <tr class="motorista">
            <td>
                <asp:Label Text="Motorista" CssClass="simpleLabeldd" runat="server" />
                <asp:DropDownList ID="ddMotorista" runat="server" CssClass="dropdown" DataSourceID="MySqlSelectMotorista" DataTextField="nome_usr" DataValueField="id_usr">
                    <asp:ListItem Text="Motorista1" />
                    <asp:ListItem Text="Motorista2" />
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label Text="Frota" CssClass="simpleLabeldd" runat="server" />
                <asp:DropDownList ID="ddFrota" runat="server" CssClass="dropdown" DataSourceID="MySqlSelectFrota" DataTextField="placa" DataValueField="id_frota">
                    <asp:ListItem Text="Frota1" />
                    <asp:ListItem Text="Frota2" />
                </asp:DropDownList>
            </td>
            <td>
                <div class="group">
                    <asp:Label Text="Local de Retirada" CssClass="simpleLabel-multiline" runat="server" />
                    <asp:TextBox ID="txtLocalRetirada" CssClass="large-input" runat="server" TextMode="MultiLine" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                </div>
            </td>
        </tr>
        <tr class="Viagem">
            <td>
                <div class="group">
                    <asp:TextBox ID="txtKmSaida" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Km Saida" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtKmChegada" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Km Chegada" CssClass="label" runat="server" />
                </div>
            </td>
            <td>
                <div class="group">
                    <asp:TextBox ID="txtHoraTrabalhada" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Hora Trabalhada" CssClass="label" runat="server" />
                </div>
            </td>
        </tr>
        <tr class="oe-info">
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
                    <asp:Label Text="Local Entrega" CssClass="simpleLabel-multiline" runat="server" />
                    <asp:TextBox ID="local_entrega" CssClass="large-input" TextMode="MultiLine" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                </div>
            </td>
        </tr>
        <tr class="Ação">
            <td>
                <input value="Imprimir" runat="server" type="button" Class="button" onclick="printScr()" />
            </td>
            <td></td>
            <td>
                <asp:Button Text="Salvar" runat="server" Class="button" OnClick="abriroe" />
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        function printScr() {
            window.print();
        }
    </script>
    <script>
    function onlyNumbers(evt)
    {
      var e = event || evt; // for trans-browser compatibility
      var charCode = e.which || e.keyCode;

      if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    return true;

    }
    </script>
    <!--Database Interaction-->
    <asp:SqlDataSource ID="MySqlUsr" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (id_usr = @IDUSR)">
        <SelectParameters>
            <asp:SessionParameter Name="IDUSR" SessionField="id_usr" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MySqlSeguro" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM seguro"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="MySqlSelectClient" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (nome_usr = @USERNAME)">
        <SelectParameters>
            <asp:ControlParameter ControlID="nome_pesq_cli" Name="USERNAME" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MySqlSelectMotorista" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_usr, login_usr, email_usr, pwd_usr, type_usr, nome_usr, sx_usr, birth_usr, cpf_usr, cep_usr, mobile_usr FROM usr WHERE (type_usr = 'lowStaff')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="MySqlSelectFrota" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM frota"></asp:SqlDataSource>
    <asp:SqlDataSource ID="MySqlAbrirOe" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ordem_de_servico]" InsertCommand="INSERT INTO ordem_de_servico(data_abertura_oe, nome_ab_chamado, id_seguro, tipo_seguro, nome_assistente_seguro, id_cliente, local_retirada, agendamento, numero_sinistro, local_entrega, id_motorista, status) VALUES (@DATA, @NOMEA, @IDSEGURO, @TIPOSEG, @ASSEG, @IDCLI, @LOCALRE, @AGENDA, @NUMSINISTRO, @ENTREGA, @IDMOTORISTA, @STATUS)">
        <InsertParameters>
            <asp:SessionParameter Name="NOMEA" SessionField="id_usr" />
            <asp:ControlParameter Name="IDSEGURO" ControlID="ddSeguradora" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="tipo_seguro" Name="TIPOSEG" PropertyName="Text" />
            <asp:ControlParameter ControlID="nome_assistente" Name="ASSEG" PropertyName="Text" />
            <asp:Parameter Name="IDCLI" />
            <asp:ControlParameter ControlID="txtLocalRetirada" PropertyName="Text" Name="LOCALRE"></asp:ControlParameter>
            <asp:ControlParameter ControlID="Agendamento" Name="AGENDA" PropertyName="Text" />
            <asp:ControlParameter ControlID="numero_sinistro" Name="NUMSINISTRO" PropertyName="Text" />
            <asp:ControlParameter ControlID="local_entrega" Name="ENTREGA" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddMotorista" Name="IDMOTORISTA" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="ddStatus" Name="STATUS" PropertyName="SelectedValue" />
            <asp:Parameter Name="DATA" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" InsertCommand="INSERT INTO viagem(id_motorista, id_oe, kmsaida, kmchegada, horatrab, id_frota) VALUES (@IDMOTORISTA, @IDOE, @KMSAIDA, @KMCHEGADA, @HORATRAB, @IDFROTA)" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [viagem]" ID="MySqlViagem">
        <InsertParameters>
            <asp:ControlParameter ControlID="ddMotorista" Name="IDMOTORISTA" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="txtid_oe" Name="IDOE" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtKmSaida" Name="KMSAIDA" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtKmChegada" Name="KMCHEGADA" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtHoraTrabalhada" Name="HORATRAB" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddFrota" Name="IDFROTA" PropertyName="SelectedValue" />
        </InsertParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="MySqlSelect_id" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT MAX(id_oe) FROM ordem_de_servico"></asp:SqlDataSource>

    <asp:SqlDataSource ID="MySql_insert_cliente" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" InsertCommand="INSERT INTO usr(login_usr, pwd_usr, type_usr, sx_usr, nome_usr, cpf_usr, mobile_usr, email_usr) VALUES (@LOGCLI, '0000', 'usr', @SEXCLI, @LOGCLI, @CPFCLI, @MOBILE, @MAILCLI)" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>">
        <InsertParameters>
            <asp:ControlParameter ControlID="nome_pesq_cli" Name="LOGCLI" PropertyName="Text" />
            <asp:ControlParameter ControlID="cpf_cli" Name="CPFCLI" PropertyName="Text" />
            <asp:ControlParameter ControlID="Cel_cli" Name="MOBILE" PropertyName="Text" />
            <asp:ControlParameter ControlID="email_cli" Name="MAILCLI" PropertyName="Text" />
            <asp:Parameter Name="SEXCLI" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlSelectOE" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_oe, data_abertura_oe, nome_ab_chamado, id_seguro, nome_assistente_seguro, tipo_seguro, id_cliente, local_retirada, agendamento, numero_sinistro, local_entrega, id_motorista, status FROM ordem_de_servico WHERE (id_oe = @IDORDEM)">
        <SelectParameters>
            <asp:SessionParameter Name="IDORDEM" SessionField="idpesq" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MySqlSelect_MAXCliente" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT MAX(id_usr) FROM usr"></asp:SqlDataSource>

    <!--end of database interaction-->
</asp:Content>
