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

        // Putting Sql data into a DataView
        DataView recentFrota = (DataView)lattestFrota.Select(DataSourceSelectArguments.Empty);
        //Checking if row 1 does exists
        if(recentFrota.Table.Rows.Count > 0){
          //Checking weather it have got a picture or not
          if(recentFrota.Table.Rows[0]["img_frota"].ToString() == String.Empty){
            imgFrota1.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            imgFrota1.Attributes["src"] = recentFrota.Table.Rows[0]["img_frota"].ToString();
          }
          //Checking if it got a nickname
          if(recentFrota.Table.Rows[0]["nome_frota"].ToString() == String.Empty){
            nomeFrota1.InnerHtml = recentFrota.Table.Rows[0]["placa_frota"].ToString();
          }else{
            //if not, use `placa` instead
            nomeFrota1.InnerHtml = recentFrota.Table.Rows[0]["nome_frota"].ToString();
          }
            //Checking if Row 2 Does Exists
            if(recentFrota.Table.Rows.Count > 1){
              //Checking weather it have got a picture or not
              if(recentFrota.Table.Rows[1]["img_frota"].ToString() == String.Empty){
                imgFrota2.Attributes["src"] = "../images/profiles/generic.png";
              }else{
                imgFrota2.Attributes["src"] = recentFrota.Table.Rows[1]["img_frota"].ToString();
              }
              //Checking if it got a nickname
              if(recentFrota.Table.Rows[1]["nome_frota"].ToString() == String.Empty){
                nomeFrota2.InnerHtml = recentFrota.Table.Rows[1]["placa_frota"].ToString();
              }else{
                //if not, use `placa` instead
                nomeFrota2.InnerHtml = recentFrota.Table.Rows[1]["nome_frota"].ToString();
              }
              if(recentFrota.Table.Rows.Count > 2){
                //Checking weather it have got a picture or not
                if(recentFrota.Table.Rows[2]["img_frota"].ToString() == String.Empty){
                  imgFrota3.Attributes["src"] = "../images/profiles/generic.png";
                }else{
                  imgFrota3.Attributes["src"] = recentFrota.Table.Rows[2]["img_frota"].ToString();
                }
                //Checking if it got a nickname
                if(recentFrota.Table.Rows[2]["nome_frota"].ToString() == String.Empty){
                  nomeFrota3.InnerHtml = recentFrota.Table.Rows[2]["placa_frota"].ToString();
                }else{
                  //if not, use `placa` instead
                  nomeFrota3.InnerHtml = recentFrota.Table.Rows[2]["nome_frota"].ToString();
                }
              }else{
                nomeFrota3.InnerHtml = "--";
                statusFrota3.InnerHtml = "--";
              }
            }else{
              nomeFrota2.InnerHtml = "--";
              nomeFrota3.InnerHtml = "--";
              statusFrota2.InnerHtml = "--";
              statusFrota3.InnerHtml = "--";
            }
        }else{
          nomeFrota1.InnerHtml = "--";
          nomeFrota2.InnerHtml = "--";
          nomeFrota3.InnerHtml = "--";
          statusFrota1.InnerHtml = "--";
          statusFrota2.InnerHtml = "--";
          statusFrota3.InnerHtml = "--";
        }

      //Importing Enployes from sql statement
        DataView recentFuncionarios = (DataView)lattestFuncionarios.Select(DataSourceSelectArguments.Empty);
        if (recentFuncionarios.Table.Rows.Count > 0) {
          //Checking wheather user have a profile image or not
          if (recentFuncionarios.Table.Rows[0]["img_func"].ToString() == String.Empty) {
            imgFunc1.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            imgFunc1.Attributes["src"] = recentFuncionarios.Table.Rows[0]["img_func"].ToString();
          }
          nomeFunc1.InnerHtml = recentFuncionarios.Table.Rows[0]["nome_func"].ToString() + " " + recentFuncionarios.Table.Rows[0]["sobrenome_func"].ToString();
          //Checking 2nd Row
          if(recentFuncionarios.Table.Rows.Count > 1){
            if (recentFuncionarios.Table.Rows[1]["img_func"].ToString() == String.Empty) {
              imgFunc2.Attributes["src"] = "../images/profiles/generic.png";
            }else{
              imgFunc2.Attributes["src"] = recentFuncionarios.Table.Rows[1]["img_func"].ToString();
            }
            nomeFunc2.InnerHtml = recentFuncionarios.Table.Rows[1]["nome_func"].ToString() + " " + recentFuncionarios.Table.Rows[1]["sobrenome_func"].ToString();
            //Checking 3rd Row
            if(recentFuncionarios.Table.Rows.Count > 2){
              if (recentFuncionarios.Table.Rows[2]["img_func"].ToString() == String.Empty) {
                imgFunc3.Attributes["src"] = "../images/profiles/generic.png";
              }else{
                imgFunc3.Attributes["src"] = recentFuncionarios.Table.Rows[2]["img_func"].ToString();
              }
              nomeFunc3.InnerHtml = recentFuncionarios.Table.Rows[2]["nome_func"].ToString() + " " + recentFuncionarios.Table.Rows[2]["sobrenome_func"].ToString();
            }else{
              nomeFunc3.InnerHtml = "--";
            }
          }else{
            nomeFunc2.InnerHtml = "--";
            nomeFunc3.InnerHtml = "--";
          }
        }else{
          nomeFunc1.InnerHtml = "--";
          nomeFunc2.InnerHtml = "--";
          nomeFunc3.InnerHtml = "--";
        }

        //Importing Enployes from sql statement
          DataView recentMotoristas = (DataView)lattestMotoristas.Select(DataSourceSelectArguments.Empty);
          if (recentMotoristas.Table.Rows.Count > 0) {
            //Checking wheather user have a profile image or not
            if (recentMotoristas.Table.Rows[0]["img_func"].ToString() == String.Empty) {
              imgMot1.Attributes["src"] = "../images/profiles/generic.png";
            }else{
              imgMot1.Attributes["src"] = recentMotoristas.Table.Rows[0]["img_func"].ToString();
            }
            nomeMot1.InnerHtml = recentMotoristas.Table.Rows[0]["nome_func"].ToString() + " " + recentMotoristas.Table.Rows[0]["sobrenome_func"].ToString();
            //Checking 2nd Row
            if(recentMotoristas.Table.Rows.Count > 1){
              if (recentMotoristas.Table.Rows[1]["img_func"].ToString() == String.Empty) {
                imgMot2.Attributes["src"] = "../images/profiles/generic.png";
              }else{
                imgMot2.Attributes["src"] = recentMotoristas.Table.Rows[1]["img_func"].ToString();
              }
              nomeMot2.InnerHtml = recentMotoristas.Table.Rows[1]["nome_func"].ToString() + " " + recentMotoristas.Table.Rows[1]["sobrenome_func"].ToString();
              //Checking 3rd Row
              if(recentMotoristas.Table.Rows.Count > 2){
                if (recentMotoristas.Table.Rows[2]["img_func"].ToString() == String.Empty) {
                  imgMot3.Attributes["src"] = "../images/profiles/generic.png";
                }else{
                  imgMot3.Attributes["src"] = recentMotoristas.Table.Rows[2]["img_func"].ToString();
                }
                nomeMot3.InnerHtml = recentMotoristas.Table.Rows[2]["nome_func"].ToString() + " " + recentMotoristas.Table.Rows[2]["sobrenome_func"].ToString();
              }else{
                nomeMot3.InnerHtml = "--";
              }
            }else{
              nomeMot2.InnerHtml = "--";
              nomeMot3.InnerHtml = "--";
            }
          }else{
            nomeMot1.InnerHtml = "--";
            nomeMot2.InnerHtml = "--";
            nomeMot3.InnerHtml = "--";
          }

        //Importing now going trips from DB
        DataView recentViagemProgresso = (DataView)lattestViagemProgresso.Select(DataSourceSelectArguments.Empty);
        if (recentViagemProgresso.Table.Rows.Count > 0) {
          codigoServicoProgresso1.InnerHtml = recentViagemProgresso.Table.Rows[0]["id_servico"].ToString();
          cidadeServicoProgresso1.InnerHtml = recentViagemProgresso.Table.Rows[0]["cidadeC_viagem"].ToString();
          nomeMotoristaServicoProgresso1.InnerHtml = recentViagemProgresso.Table.Rows[0]["nome_func"].ToString();
          if(recentViagemProgresso.Table.Rows[0]["nome_frota"] == String.Empty){
            nomeFrotaServicoProgresso1.InnerHtml = recentViagemProgresso.Table.Rows[0]["placa_frota"].ToString();
          }else{
            nomeFrotaServicoProgresso1.InnerHtml = recentViagemProgresso.Table.Rows[0]["nome_frota"].ToString();
          }
        }

        if (recentViagemProgresso.Table.Rows.Count > 1) {
          codigoServicoProgresso2.InnerHtml = recentViagemProgresso.Table.Rows[1]["id_servico"].ToString();
          cidadeServicoProgresso2.InnerHtml = recentViagemProgresso.Table.Rows[1]["cidadeC_viagem"].ToString();
          nomeMotoristaServicoProgresso2.InnerHtml = recentViagemProgresso.Table.Rows[1]["nome_func"].ToString();
          if(recentViagemProgresso.Table.Rows[1]["nome_frota"] == String.Empty){
            nomeFrotaServicoProgresso2.InnerHtml = recentViagemProgresso.Table.Rows[1]["placa_frota"].ToString();
          }else{
            nomeFrotaServicoProgresso2.InnerHtml = recentViagemProgresso.Table.Rows[1]["nome_frota"].ToString();
          }
        }

        if (recentViagemProgresso.Table.Rows.Count > 2) {
          codigoServicoProgresso3.InnerHtml = recentViagemProgresso.Table.Rows[2]["id_servico"].ToString();
          cidadeServicoProgresso3.InnerHtml = recentViagemProgresso.Table.Rows[2]["cidadeC_viagem"].ToString();
          nomeMotoristaServicoProgresso3.InnerHtml = recentViagemProgresso.Table.Rows[2]["nome_func"].ToString();
          if(recentViagemProgresso.Table.Rows[2]["nome_frota"] == String.Empty){
            nomeFrotaServicoProgresso3.InnerHtml = recentViagemProgresso.Table.Rows[2]["placa_frota"].ToString();
          }else{
            nomeFrotaServicoProgresso3.InnerHtml = recentViagemProgresso.Table.Rows[2]["nome_frota"].ToString();
          }
        }

        //IMPORTING lattestSinistro
        DataView recentSinistro = (DataView)lattestSinistro.Select(DataSourceSelectArguments.Empty);
        if (recentSinistro.Table.Rows.Count > 0) {
          nomeCliSinistro1.InnerHtml = recentSinistro.Table.Rows[0].ToString();
          codigoSinistro1.InnerHtml = recentSinistro.Table.Rows[0].ToString();
        }

        if (recentSinistro.Table.Rows.Count > 1) {
          nomeCliSinistro2.InnerHtml = recentSinistro.Table.Rows[1].ToString();
          codigoSinistro2.InnerHtml = recentSinistro.Table.Rows[1].ToString();
        }

        if (recentSinistro.Table.Rows.Count > 2) {
          nomeCliSinistro3.InnerHtml = recentSinistro.Table.Rows[2].ToString();
          codigoSinistro3.InnerHtml = recentSinistro.Table.Rows[2].ToString();
        }
        
      }catch(Exception ex){}
    }
}
