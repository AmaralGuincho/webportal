<%@ Page MasterPageFile="~/pt-br/adm/adm-master.master" Language="C#" AutoEventWireup="true" CodeFile="searchoe.aspx.cs" Inherits="pt_br_adm_searchoe" %>

<asp:Content ContentPlaceholderID="head" runat="server">
    <link rel="stylesheet" href="../../css/adm.css" />
</asp:Content>

<asp:Content ContentPlaceHolderID="cph" runat="server">
    <style>
        TABLE A {text-decoration:none; margin:30px;}
    </style>
    <div class="container">
        <div class="pesquisa">
             <h2>Selecione a data de busca</h2>
             <asp:Calendar ID="cldr" runat="server" NextPrevStyle-VerticalAlign="NotSet" SelectionMode="Day" BorderColor="#4B4B4B" DayHeaderStyle-BackColor="#CC3300" DayHeaderStyle-ForeColor="White" TitleStyle-BackColor="#177AC4" TitleStyle-ForeColor="White" BorderStyle="Solid" DayStyle-BorderStyle="None" SelectedDayStyle-BorderStyle="None" SelectedDayStyle-BackColor="#FF3300" Font-Underline="False" DayStyle-ForeColor="#666666" WeekendDayStyle-BorderStyle="None" TodayDayStyle-BorderStyle="None" TodayDayStyle-BorderColor="Yellow" DayStyle-BorderWidth="0" NextPrevStyle-BorderStyle="None" TitleStyle-BorderStyle="None" FirstDayOfWeek="Monday" OnSelectionChanged="cldr_SelectionChanged">
<DayHeaderStyle BackColor="#CC3300" ForeColor="White"></DayHeaderStyle>

<DayStyle BorderWidth="0px" BorderStyle="None" ForeColor="#666666"></DayStyle>

<NextPrevStyle BorderStyle="None"></NextPrevStyle>

                 <OtherMonthDayStyle BackColor="#CCCCCC" />

<SelectedDayStyle BackColor="#FF3300" BorderStyle="None" ForeColor="White"></SelectedDayStyle>

<TitleStyle BackColor="#177AC4" BorderStyle="None" ForeColor="White"></TitleStyle>

<TodayDayStyle BorderColor="Yellow" BorderStyle="None"></TodayDayStyle>

<WeekendDayStyle BorderStyle="None"></WeekendDayStyle>
             </asp:Calendar>
        </div>
    </div>
    <asp:SqlDataSource ID="MySql_Select_OE" runat="server" ConnectionString="<%$ ConnectionStrings:amaral_guinchoConnectionString %>" ProviderName="<%$ ConnectionStrings:amaral_guinchoConnectionString.ProviderName %>" SelectCommand="SELECT id_oe, data_abertura_oe, nome_ab_chamado, id_seguro, nome_assistente_seguro, tipo_seguro, id_cliente, local_retirada, agendamento, numero_sinistro, local_entrega, id_motorista, status FROM ordem_de_servico WHERE (data_abertura_oe = @DATA) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="cldr" Name="DATA" PropertyName="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView runat="server" DataSourceID="MySql_Select_OE"></asp:GridView>
</asp:Content>
