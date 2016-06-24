using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class app_frota : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
    }
    protected void cadastro(object sender, EventArgs e){
      frota.Insert();
      Response.Redirect("~/app/home.aspx");
    }
}
