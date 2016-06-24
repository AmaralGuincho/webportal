using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class app_clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //Importing SqlDataSources to DataView
      DataView recentClientes;
      recentClientes = (DataView)cliente.Select(DataSourceSelectArguments.Empty);

      //Getting DataView's info, into Html file
      //Checking if DataView is Empty
      if(recentClientes.Table.Rows.Count > 0){
        //Populating 1st Table Row
        //Checking if user does have a pic
        if(recentClientes.Table.Rows[0]["img_cli"].ToString() == String.Empty){
          imgCli1.Attributes["src"] = "../images/profiles/generic.png";
        }else{
          imgCli1.Attributes["src"] = recentClientes.Table.Rows[0]["img_cli"].ToString();
        }
        nomeCli1.InnerHtml = recentClientes.Table.Rows[0]["nome_cli"].ToString() + " " +recentClientes.Table.Rows[0]["sobrenome_cli"].ToString();
        telCli1.InnerHtml = recentClientes.Table.Rows[0]["telefone_cli"].ToString();

        //Checking if 2nd Row is Empty
        if(recentClientes.Table.Rows.Count > 1){
          //Populating 2nd Table Row
          //Checking if user does have a pic
          if(recentClientes.Table.Rows[1]["img_cli"].ToString() == String.Empty){
            imgCli2.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            imgCli2.Attributes["src"] = recentClientes.Table.Rows[1]["img_cli"].ToString();
          }
          nomeCli2.InnerHtml = recentClientes.Table.Rows[1]["nome_cli"].ToString() + " " +recentClientes.Table.Rows[1]["sobrenome_cli"].ToString();
          telCli2.InnerHtml = recentClientes.Table.Rows[1]["telefone_cli"].ToString();

            //Checking if 3rd Row is Empty
            if(recentClientes.Table.Rows.Count > 2){
              //Populating 3rd Table Row
              //Checking if user does have a pic
              if(recentClientes.Table.Rows[2]["img_cli"].ToString() == String.Empty){
                imgCli3.Attributes["src"] = "../images/profiles/generic.png";
              }else{
                imgCli3.Attributes["src"] = recentClientes.Table.Rows[2]["img_cli"].ToString();
              }
              nomeCli3.InnerHtml = recentClientes.Table.Rows[2]["nome_cli"].ToString() + " " +recentClientes.Table.Rows[2]["sobrenome_cli"].ToString();
              telCli3.InnerHtml = recentClientes.Table.Rows[2]["telefone_cli"].ToString();
            }
        }
      }
    }
    protected void cadastrar(object sender, EventArgs e){
      //Converting date to international format

      cliente.InsertParameters["dataNasc"].DefaultValue =
        Convert.ToDateTime(dtNascCli.Text).ToString("yyyy/MM/dd");


      cliente.Insert();
      Response.Redirect("home.aspx");
    }
}
