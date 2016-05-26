using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
//Referencia do .net Data
using System.Data;
//Referencia do .net mailClient
using System.Net.Mail;




public partial class Web_websites_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginSubmit_Click(object sender, EventArgs e)
    {
      try{
        //Declarando as Variaveis
        DataView dvLogin, dvFunc;
        Session["funcionarioID"] = "null";

        dvLogin = (DataView)SqlLogin.Select(DataSourceSelectArguments.Empty);

        //verificando usuário
        if (dvLogin.Table.Rows.Count != 0)
        {
            Session["funcionarioID"] = Convert.ToInt32((dvLogin.Table.Rows[0]["id_func"]).ToString());
            dvFunc = (DataView)SqlFunc.Select(DataSourceSelectArguments.Empty);


            //Sucesso na Autenticação

            int cargo = Convert.ToInt32((dvFunc.Table.Rows[0]["id_cargo"]).ToString());


            if (cargo == 1)
            {
                Session["Log"] = "On";
                Session["Secretaria"] = "On";
                Session["Admin"] = "On";

                //registrando o func
                Session["id_func"] = dvFunc.Table.Rows[0]["id_func"].ToString();

                Response.Redirect("app/home.aspx");
            }

            if (cargo == 2)
            {
                Session["Log"] = "On";
                Session["Secretaria"] = "On";
                Session["Admin"] = "null";

                //registrando o func
                Session["id_func"] = dvFunc.Table.Rows[0]["id_func"].ToString();

                Response.Redirect("app/home.aspx");


            }

        }
        //Falha na Autênticação
        else
        {
            Response.Write("<script>alert('Login ou senha incorretos!');</script>");

            txtUsername.Text = String.Empty;
            txtPassword.Text = String.Empty;
        }
      }
      catch(Exception ex){
        //ERRO NO BANCO DE DADOS
        Response.Write("<script>function dbError() {if (confirm('Ocorreu um erro no banco de dados interno. Você pode detalhar o erro para nossos desenvolvedores?')) {window.open('mailto:ioetep@gmail.com?subject=Erro+no+Banco+de+Dados&body=Por+favor+detalhe+o+que+estava+fazendo+ao+se+deparar+com+o+erro');}else{alert('Uma menssagem de erro genérica foi enviada ao Desenvolvedor');}} dbError();</script>");
      }
    }


}
