<%@ Page Language="C#" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="pt_br_404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Amaral Guincho - 404</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../images/icon.png" rel="icon" />

    <!-- Material Desing Lite-->
    <link href="~/pt-br/style/material.min.css" rel="stylesheet" />
    <!--Material Design Icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
        rel="stylesheet" />
</head>
<body>
    <style>
        body{
            left:0;
            right:0;
            bottom:0;
            top:0;
            position:fixed;
        }
        b, .material-icons{
            font-size:84px;
        }
        a{
            color:#646464;
            text-decoration:none;
        }
       div{
            display:block;
            width:300px;
            margin:auto;
            margin-top:25%;
            margin-bottom:0;
        }
    </style>
    <a href="../index.html">
    <div class="center">
        <a href="../index.html">
        <p>
            <i class="material-icons">error_outline</i>
            <b>404</b>
        </p>
        <p><span>Esta pagina não está disponível ou não existe!</span></p>
    </div>
    </a>
</body>
</html>
