using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Using System.data Reference
using System.Data;

public partial class pt_br_app_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {//Preventing solution to crash
      try{
           //Checking if user is a admin
          if(Session["admin"] == null){
            //Greatings to `Funcionario`
            Response.Write("<script>var notification = document.querySelector('.mdl-js-snackbar');notification.MaterialSnackbar.showSnackbar{message: 'Logado como Funcionário' });</script>");
          }
          else{
            //Greatings to `Administrador`
            Response.Write("<script>var notification = document.querySelector('.mdl-js-snackbar');notification.MaterialSnackbar.showSnackbar{message: 'Logado como Administrador' });</script>");
          }

          //Loading Cards with most recent infos
          //Importing SqlDataSources to DataView
          DataView recentClientes;
          recentClientes = (DataView)lattestClientes.Select(DataSourceSelectArguments.Empty);

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

          //Importing `ordem de Servico` FROM database
          DataView osAberta;
          osAberta = (DataView)lattestOs.Select(DataSourceSelectArguments.Empty);

          //Checking if DataView is Empty
          if(osAberta.Table.Rows.Count > 0){
            //Getting DataView Info into html file
            osID1.InnerHtml = "#" + osAberta.Table.Rows[0]["id_os"].ToString();
            osData1.InnerHtml = Convert.ToDateTime(osAberta.Table.Rows[0]["dtab_os"].ToString()).ToString("dd/MM/yyyy HH:mm");

            if(osAberta.Table.Rows.Count > 1){
              //Getting DataView Info into html file
              osID2.InnerHtml = osAberta.Table.Rows[1]["id_os"].ToString();
              osData1.InnerHtml = Convert.ToDateTime(osAberta.Table.Rows[1]["dtab_os"].ToString()).ToString("dd/MM/yyyy HH:mm");

              if(osAberta.Table.Rows.Count > 2){
                //Getting DataView Info into html file
                osID3.InnerHtml = osAberta.Table.Rows[2]["id_os"].ToString();
                osData3.InnerHtml = Convert.ToDateTime(osAberta.Table.Rows[2]["dtab_os"].ToString()).ToString("dd/MM/yyyy HH:mm");
              }else{
                osID3.InnerHtml = "--";
                osData3.InnerHtml = "--";
              }
            }else{
              osID2.InnerHtml = "--";
              osData2.InnerHtml = "--";

              osID3.InnerHtml = "--";
              osData3.InnerHtml = "--";
            }
          }else{
            osID1.InnerHtml = "--";
            osData1.InnerHtml = "--";

            osID2.InnerHtml = "--";
            osData2.InnerHtml = "--";

            osID3.InnerHtml = "--";
            osData3.InnerHtml = "--";
          }



      }
      catch(Exception ex){}
    }
}
