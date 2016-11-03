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
        string remetenteEmail = "suporte.tccetep123@gmail.com"; //O e-mail do remetente

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

        client.Credentials = new System.Net.NetworkCredential(remetenteEmail, "crypto.encrypt");



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
            "Prezado usuario <i>" + nome +
            "</i><br /><br />Login: <b>" + login +
            "</b><br />Senha: <b>" + senha + "</b><br /><br /><br />Atenciosamente, Amaral Guincho.");
    }


}
