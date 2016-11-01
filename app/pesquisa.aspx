<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pesquisa.aspx.cs" Inherits="app_pesquisa" MasterPageFile="~/app/index.master"%>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
  <form runat="server">
    <div class="mdl-grid mdl-cell mdl-cell--12-col card-box">
      <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col mdl-grid" id="search-card">
        <div class="mdl-card__title mdl-cell mdl-cell-12-col">
          <h2 class="mdl-card__title-text mdl-color-text--grey-600">
            <i class="material-icons">search</i>
            Critérios de Pesquisa
          </h2>
        </div>

        <div class="card-content mdl-card--border mdl-grid mdl-cell mdl-cell--12-col">
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectSeguroConsulta">Pesquisar em:</label>
            <asp:DropDownList ID="selectTables" runat="server" class="dropdown" AutoPostBack ="true" >
              <asp:ListItem Text="Cliente"/>
              <asp:ListItem Text="Funcionário"/>
              <asp:ListItem Text="Veículo"/>
              <asp:ListItem Text="Frota"/>
            </asp:DropDownList>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectSeguroConsulta">Pesquisar por:</label>
            <asp:DropDownList ID="selectAtribute" runat="server" class="dropdown">
            </asp:DropDownList>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floatting-label mdl-cell mdl-cell--8-col-desktop mdl-cell--8-cel-tabet">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="pesqQuery"></asp:TextBox>
            <label class="mdl-textfield__label" for="pesqQuery">Busca</label>
          </div>
          <asp:Button Text="Pesquisar" id="sinistroExistente" runat="server"
          class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"
          onclick="searchQuery">
          </asp:Button>
        </div>

      </div>

      <!-- Resultados -->
      <div class="hidden card mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" id="response-card">
        <div class="mdl-card__title mdl-cell mdl-cell-12-col">
          <h2 class="mdl-card__title-text mdl-color-text--grey-600">
            <i class="material-icons">subject</i>
            Resultados
          </h2>
        </div>

        <div class="card-content mdl-card--border mdl-grid mdl-cell mdl-cell--12-col">
          <asp:GridView ID="gvPesq" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" DataSourceID="sqlFull">
                <AlternatingRowStyle BackColor="#CCCCCC" />
              <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#808080" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#383838" />
          </asp:GridView>
        </div>
      </div>

    </div>
  </form>

  <asp:SqlDataSource
    ID="sqlFull"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT * FROM @tabela">
    <SelectParameters>
      <asp:Parameter name="tabela"/>
      <asp:Parameter name="campo"/>
    </SelectParameters>
  </asp:SqlDataSource>

  <script>
    var isResponse = '<%=Session["response"]%>';
    var seachCard = document.querySelector('#search-card');
    var responseCard = document.querySelector('#response-card');

    if (isResponse == true){
      showCard(searchCard);
      hideCard(responseCard);
    }else{
      showCard(responseCard);
      hideCard(searchCard);
    }

  </script>
</asp:Content>
