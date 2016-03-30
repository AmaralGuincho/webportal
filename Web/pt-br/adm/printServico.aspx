<%@ Page Language="C#" MasterPageFile="~/Web/pt-br/adm/adm-master.master" AutoEventWireup="true" CodeFile="printServico.aspx.cs" Inherits="css_printServico" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            margin:0 100px;
        }
        tr{
            padding-bottom:100px;
             border:1px blue solid;
        }
        td{
            padding:20px 10px;
        }
        @media print{
            @page{size:auto;margin:0;}
            *{

            }
            body{
                width:100%;
                margin:0;
                background-image:url("../../resources/logotipo.png");
                background-repeat:no-repeat;
                background-position:center;
            }
            table{
                margin:0;
            }

            h1, #title {
                visibility: hidden;
                margin:0;
                margin-bottom:20px;
            }

             h1::after {
                    visibility:visible;
                    content: "Amaral Guincho";
                   text-align:center;
                   margin-left:-210px;
                   margin-bottom:100px;
                }
             #title::after{
                 content:"Ordem de Serviço";
             }
            small, .input, nav, .nav .button, input[type=button], .acao{
                display: none;
            }

            input[type=text]{
                height:30px;
            }

        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="cph" runat="server">
    <h1 id="title">Ordem de Serviço</h1>
    <table class="frmTable">
        <tr class="System_info">
            <td>
               <asp:Label Text="Código:" runat="server" CssClass="simpleLabel" />
               <asp:TextBox ID="txtid_oe" runat="server" placeholder="Numero OE" Enabled="False" />
            </td>
            <td>
               <asp:Label Text="Data:" CssClass="simpleLabel" runat="server" />
               <asp:TextBox ID="data_abertura" runat="server" Enabled="false"></asp:TextBox>
            </td>
            <td>
               <asp:Label Text="Aberto Por:" CssClass="simpleLabel" runat="server" />
               <asp:TextBox ID="nome_abertura" runat="server" Enabled="false" />
            </td>
        </tr>
        <tr class="seguro">
            <td>
                <asp:Label Text="Seguradora" runat="server" />
                <asp:TextBox ID="txtSeguradora" runat="server" />
            </td>
            <td>
                <asp:Label Text="Assistência" CssClass="label" runat="server" />
                <asp:TextBox ID="txtAssistencia" runat="server" />
            </td>
            <td>
                <asp:Label Text="Tipo de Seguro" CssClass="label" runat="server" />
                <asp:TextBox ID="tipo_seguro" runat="server" />
            </td>
        </tr>
        <tr class="cliente">
            <td>
                <asp:Label Text="Nome Segurado:" CssClass="label" runat="server" />
                <asp:TextBox ID="nome_pesq_cli" runat="server" />
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr class="client-info">
            <td colspan="3">
                <asp:Label Text="Endereço" runat="server" />
                <asp:TextBox ID="endereco_cli" runat="server" TextMode="MultiLine" Width="90%" />
            </td>
        </tr>
        <tr class="client-info">
            <td>
                <asp:Label Text="CPF" CssClass="label" runat="server" />
                <asp:TextBox ID="cpf_cli" runat="server" />
            </td>
            <td>

            </td>
            <td>
                <asp:Label Text="Status" runat="server" />
                 <asp:TextBox Text="Status" runat="server" />
              </td>
        </tr>
        <tr class="motorista">
            <td>
                <asp:Label Text="Motorista" runat="server" />
                <asp:Textbox ID="Mororista" runat="Server"/>
            </td>
            <td>
                <asp:Label Text="Frota" runat="server" />
                <asp:TextBox runat="server" id="Frota"/>
            </td>
            <td>
              <asp:Label Text="Local de Retirada"   runat="server" />
               <asp:TextBox ID="txtLocalRetirada"   runat="server" TextMode="MultiLine" />
            </td>
        </tr>
        <tr class="Viagem">
            <td>
                <asp:Label Text="Km Saida" CssClass="label" runat="server" />
                <asp:TextBox ID="txtKmSaida" runat="server" />
            </td>
            <td>
                <asp:Label Text="Km Chegada" CssClass="label" runat="server" />
                <asp:TextBox ID="txtKmChegada" runat="server" />
            </td>
            <td>
                <asp:Label Text="Hora Trabalhada" CssClass="label" runat="server" />
                <asp:TextBox ID="txtHoraTrabalhada" runat="server" />
            </td>
        </tr>
        <tr class="oe-info">
            <td>
                <asp:Label Text="Agendamento" CssClass="label" runat="server" />
                <asp:TextBox ID="Agendamento" runat="server" />
            </td>
            <td>
                <asp:Label Text="Numero Sinistro" CssClass="label" runat="server" />
                <asp:TextBox ID="numero_sinistro" placeholder="Numero Sinistro" runat="server" />
            </td>
            <td>
                <asp:Label Text="Local Entrega" runat="server" />
                <asp:TextBox ID="local_entrega" TextMode="MultiLine" runat="server" />
            </td>
        </tr>
        <tr class="acao">
            <td>
                <asp:Button Text="Imprimir" runat="server" CssClass="button" class="button"/>
            </td>
            <td></td>
            <td>
                <asp:Button Text="Obrir OE" runat="server" CssClass="button" class="button"/>
            </td>
        </tr>
    </table>
</asp:Content>
