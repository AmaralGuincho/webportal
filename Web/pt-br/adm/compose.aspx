<%@ Page  MasterPageFile="~/pt-br/adm/adm-master.master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width" />

    <link href="//cdn.muicss.com/mui-0.3.0-rc3/css/mui.min.css" rel="stylesheet" type="text/css" />
    <script src="//cdn.muicss.com/mui-0.3.0-rc3/js/mui.min.js"></script>
</asp:Content>



<asp:Content ContentPlaceHolderID="cph" runat="server">
        <h1>Ordem de Serviço</h1>
        <form action="" method="get" runat="server" class=".container">
            <div class="group">
              <asp:Label Text="Numero Ordem de Serviço:" runat="server" CssClass="simpleLabel" />
              <asp:TextBox ID="id_oe" runat="server" CssClass="input" placeholder="Numero OE" Enabled="False" />
               <span class="highlight"></span>
               <span class="bar"></span>
               
            </div>

            <div class="group">
                <asp:TextBox ID="data_abertura" runat="server" CssClass=".mui-textfield"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
                <asp:Label Text="Data:" CssClass=".simpleLabel" runat="server" />
                
            </div>

            <div class="group">
                <asp:Label Text="Aberto Por:" CssClass="simpleLabel" runat="server" />
                <asp:TextBox ID="nome_abertura" CssClass="input" runat="server" Enabled="false" />
                <span class="highlight"></span>
                <span class="bar"></span>
          </div>

            <div class="group">
                <asp:DropDownList runat="server">
                    <asp:ListItem Text="Seguradora1" />
                    <asp:ListItem Text="Seguradpra2" />
                </asp:DropDownList>

                <span class="highlight"></span>
                <span class="bar"></span>
                <asp:Label Text="Seguradora:" CssClass="label" runat="server" />
            </div>

            <div class="group">
                <asp:TextBox ID="nome_assistente" CssClass="input" runat="server" />
                <span class="highlight"></span>
                <span class="bar"></span>
                <asp:Label Text="Asisstente:" CssClass="label" runat="server" />
            </div>

            <div class="group">
                <asp:TextBox ID="tipo_seguro" CssClass="input"  runat="server" />
                <span class="highlight"></span>
                <span class="bar"></span>
                 <asp:Label Text="Tipo de Seguro:" CssClass="label" runat="server" />
           </div>
            
            <!-- Cadastrando Cliente-->
            <asp:DropDownList ID="Cliente" runat="server">
                <asp:ListItem Text="Novo Cliente" />
                <asp:ListItem Text="Cliente Existente" />
            </asp:DropDownList>

            <div class="cadastro-cliente" runat="server">
                <div class="group">
                    <asp:TextBox ID="nome_cli" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Nome Cliente" CssClass="label" runat="server" />
               </div>

                <div class="group">
                    <asp:TextBox ID="rg_cli" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="RG" CssClass="label" runat="server" /> 
                </div>
                <div class="group">
                    <asp:TextBox ID="cpf_cli" CssClass="input" runat="server" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="CPF" CssClass="label" runat="server" /> 
                </div>
                <div class="group">
                    <asp:TextBox ID="endereco_cli" CssClass="input" runat="server" TextMode="MultiLine" />
                    <span class="highlight"></span>
                    <span class="bar"></span>
                    <asp:Label Text="Endereço" CssClass="label" runat="server" /> 
                 </div>
             </div>

            <div class="group">
                <asp:TextBox ID="local_de_retirada" CssClass="input" TextMode="MultiLine" runat="server" />
                <span class="highlight"></span>
                <span class="bar"></span>
                <asp:Label Text="Local de Retirada" CssClass="label" runat="server" />  
            </div>

            <div class="group">
                <asp:TextBox ID="agendamento" CssClass="input" runat="server" />
                <span class="highlight"></span>
                <span class="bar"></span>
                <asp:Label Text="agendamento" CssClass="label" runat="server" />
            </div>
            <div class="group">
                <asp:TextBox ID="numero_sinistro" CssClass="input" placeholder="Numero Sinistro" runat="server" />
                <span class="highlight"></span>
                <span class="bar"></span>
                <asp:Label Text="Numero Sinistro" CssClass="label" runat="server" />
            </div>
            <div class="group">
                <asp:TextBox ID="local_entrega" CssClass="input" TextMode="MultiLine" placeholder="Local de Entrega" runat="server" />
                <span class="highlight"></span>
                <span class="bar"></span>
                <asp:Label Text="" CssClass="label" runat="server" />  
            </div>

                <asp:DropDownList runat="server">
                <asp:ListItem Text="text1" />
                <asp:ListItem Text="text2" />
            </asp:DropDownList>
        </form>
</asp:Content>