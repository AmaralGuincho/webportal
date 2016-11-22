using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net.Configuration;

/// <summary>
/// Summary description for Email
/// </summary>
public class Email
{
    public static void sendEmail(String Destinatario, String Nome, String Assunto, String Conteudo)
    {
        string remetenteEmail = "garagemamaral@gmail.com"; //O e-mail do remetente

        MailMessage mail = new MailMessage();

        mail.To.Add(Destinatario);

        mail.From = new MailAddress(remetenteEmail, Nome, System.Text.Encoding.UTF8);

        mail.Subject = Assunto;

        mail.SubjectEncoding = System.Text.Encoding.UTF8;

        mail.Body = Conteudo;

        mail.BodyEncoding = System.Text.Encoding.UTF8;

        mail.IsBodyHtml = true;

        mail.Priority = MailPriority.High; //Prioridade do E-Mail

        mail.IsBodyHtml = true;


        SmtpClient client = new SmtpClient();  //Adicionando as credenciais do seu e-mail e senha:

        client.Credentials = new System.Net.NetworkCredential(remetenteEmail, "josephaAmaralCaio");



        client.Port = 587; // Esta porta é a utilizada pelo Gmail para envio

        client.Host = "smtp.gmail.com"; //Definindo o provedor que irá disparar o e-mail

        client.EnableSsl = true; //Gmail trabalha com Server Secured Layer

        try
        { client.Send(mail); }
        catch
        { }
    }

    public static void sendForgotPass(String Destinatario, String nome, String login, String senha)
    {
        sendEmail(Destinatario, "AmaralGuincho", "AmaralGuincho - Nova Senha",
             "<style>@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,800'); body{background: rgba(#0c7af9,.48); font-family: 'Open Sans'; font-weight: 300; display: flex;}img{width: 200px;}h1{font-weight: 300; color: #818181;}.content{margin-right: 25%;}.credential{margin-top:40px; width:300px; background-color: #ebebeb;}.credential > span{margin:5px; display: block; font-weight: 400; font-size: 12px;}.footer{margin-top: 200px;}.info{display:block}.info > small{font-size:12px;}.ioetepImg{width: 80px; margin-top: 10px; margin-left: auto;}#ioetep{width:80px;}</style> <body> <div> <img src='https://raw.githubusercontent.com/ioEtep/amaral-guincho-web/master/images/logo-comercial-flat.png' > </div><div class='content'> <h1>Olá " + nome + ",</h1> <p> Este email foi enviado pois o recurso <b>ESQUECI MINHA SENHA</b> foi ativado em sua conta, enviei uma nova senha para que você possa fazer login e cadastrar outra de sua preferencia! </p><div class='credential'> <span>login:<b>"+login+"</b></span> <span>senha:<b>"+senha+"</b></span> </div><div class='footer'> <div class='info'> <small> Nunca forneça sua senha para ninguém, não nos responsabilizamos por qualquer consequência desse ato! </small> <div class='ioetepImg'> <img src='https://raw.githubusercontent.com/ioEtep/ioetep/gh-pages/resources/ioetep-name.png' id='ioetep'> </div></div></div></div></body>");
    }


}
