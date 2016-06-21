using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Usign Data reference
using System.Data;

public partial class pt_br_app_index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      try{
        //Verifying if user have a elegible log
        if(Session["log"] == null){
          //User does not have a elegible log
          Response.Redirect("~/pt-br/index.html");
        }else{
          //User is Authenticated!
          //Creating a new DataView
          DataView usuario;
          // Putting MySql's information inside our `Usuario` DataView
          usuario = (DataView)getUsuario.Select(DataSourceSelectArguments.Empty);

          //Displaying user information on screen
          nome.InnerHtml = usuario.Table.Rows[0]["nome_func"].ToString();
          email.InnerHtml = usuario.Table.Rows[0]["email_func"].ToString();

          //Checking if user does have a profile photo
          if(usuario.Table.Rows[0]["img_func"].ToString() == String.Empty){
            //using a generic profile photo
            profileImage.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            //Using the profile photo if the user does have one
            profileImage.Attributes["src"] = usuario.Table.Rows[0]["img_func"].ToString();
          }
        }
      }catch(Exception ex){}
    }
}
