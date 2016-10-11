<%@ Page Language="C#" AutoEventWireup="true" CodeFile="genericError.aspx.cs" Inherits="genericError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Amaral Guincho - 404</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../images/icon.png" rel="icon" />

    <!-- Material Desing Lite-->
    <link href="~/style/material.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://code.getmdl.io/1.2.1/material.indigo-pink.min.css">
    <!--Material Design Icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
        rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>
<body class="mdl-layout mdl-js-layout mdl-grid mdl-cell mdl-cell--12-col">
    <style>
        body{
          left:0;
          right:0;
          bottom:0;
          top:0;
          position:fixed;
          font-family: "Open Sans";
        }
    </style>
    <div class="center mdl-grid mdl-cell mdl-cell--12-col">
      <h2 class="iconError mdl-cell mdl-cell--12-col mdl-color-text--grey-600">
        <i class="material-icons ">error</i>
        <span class="mdl__title-text mdl-text-color--pink">Erro</span>
      </h2>
        <div class="mdl-cell mdl-cell--12-col mdl-cell--desktop-ofset-4">
          Ocorreu um erro, por favor tente mais tarde ou
          <a href="mailto:caiobep@me.com">entre em contato
          com o desenvolverdor</a>
        </div>
        <a href="../index.html" class="mdl-button mdl-js-button mdl-button--raised">
          Voltar ao Início
        </a>
    </div>
    <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
</body>
</html>
