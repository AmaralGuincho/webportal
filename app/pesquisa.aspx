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
            <asp:DropDownList ID="selectTables" runat="server" class="dropdown">
              <asp:ListItem Text="Veículo"/>
            </asp:DropDownList>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectSeguroConsulta">Pesquisar por:</label>
            <asp:DropDownList ID="selectAtribute" runat="server" class="dropdown">
              <asp:ListItem Text="Placa"/>
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
          <asp:GridView ID="gvPesq" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="cod_produto" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                  <asp:TemplateField HeaderText="Código" InsertVisible="False" SortExpression="id_veiculo">
                  <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_veiculo") %>'></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_veiculo") %>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CódigoCli" InsertVisible="False" SortExpression="id_cli">
                <EditItemTemplate>
                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("id_cli") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("id_cli") %>'></asp:Label>
                </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Marca" SortExpression="fabricante_veiculo">
              <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fabricante_veiculo")%>'></asp:TextBox>
              </EditItemTemplate>
              <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("fabricante_veiculo") %>'></asp:Label>
              </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Modelo" SortExpression="modelo_veiculo">
              <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("modelo_veiculo")%>'></asp:TextBox>
              </EditItemTemplate>
              <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("modelo_veiculo") %>'></asp:Label>
              </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Ano" SortExpression="ano_veiculo">
              <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ano_veiculo")%>'></asp:TextBox>
              </EditItemTemplate>
              <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("ano_veiculo") %>'></asp:Label>
              </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Placa" SortExpression="placa_veiculo">
              <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("placa_veiculo")%>'></asp:TextBox>
              </EditItemTemplate>
              <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("placa_veiculo") %>'></asp:Label>
              </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Cor" SortExpression="cor_veiculo">
              <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("cor_veiculo")%>'></asp:TextBox>
              </EditItemTemplate>
              <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("cor_veiculo") %>'></asp:Label>
              </ItemTemplate>
              </asp:TemplateField>
              </Columns>
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
    ID="sqlPlaca"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT * FROM veiculo">
  </asp:SqlDataSource>

  <script>
    var isResponse = '<%=Session["response"]%>';
    var seachCard = document.querySelector('#search-card');
    var responseCard = document.querySelector('#response-card');

    if (isResponse == true){
      isResponse.hideCard();
    }
  </script>
</asp:Content>
