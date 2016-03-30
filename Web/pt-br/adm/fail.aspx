<%@ Page MasterPageFile="~/Web/pt-br/adm/adm-master.master" Language="C#" AutoEventWireup="true" CodeFile="fail.aspx.cs" Inherits="pt_br_adm_feedback_fail" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="cph" runat="server">
    <style>
        header, nav{
            background-color:#ff0000;
        }
       content>h2{
            color:#ff0000;
        }
    </style>

    <h2>Algo deu errado!</h2>
    <p>
        Perdõe-nos pela inconveniência, mas sentimos dizer que acabamos de encontrar um erro!
        <br /> Seu ultimo serviço foi invalidado, para proteger o sistema. Por favor tente executar o serviço novamente!
    </p>
    <h1>Um email com o relatório do erro foi enviado para o Desenvolvedor.</h1>
</asp:Content>
