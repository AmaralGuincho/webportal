using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Usign Data reference
using System.Data;

public partial class app_index : System.Web.UI.MasterPage
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if(!IsPostBack){
      try{
        //Verifying if user have a elegible log
        if(Session["log"] == null){
          //User does not have a elegible log
          Response.Redirect("~/index.html");
        }else{
          //User is Authenticated!
          //Creating a new DataView
          DataView user;
          // Putting MySql's information inside our `Usuario` DataView
          user = (DataView)getUsuario.Select(DataSourceSelectArguments.Empty);

          // User data to be shown
          String userName = user.Table.Rows[0]["nome_func"].ToString();
          String userFullName = userName + " " + user.Table.Rows[0]["sobrenome_func"].ToString();
          String userMail = user.Table.Rows[0]["email_func"].ToString();

          //Displaying user information on screen
          nome.InnerHtml = userName.ToString();
          email.InnerHtml = userMail.ToString();
          // Greeting The user
          Session["serverMessage"] = "Logado como" + userFullName;

          //Checking if user does have a profile photo
          if(user.Table.Rows[0]["img_func"].ToString() == String.Empty){
            //using a generic profile photo
            profileImage.Attributes["src"] = "../images/profiles/generic.png";
          }else{
            //Using the profile photo if the user does have one
            profileImage.Attributes["src"] = user.Table.Rows[0]["img_func"].ToString();
          }
        }
        }catch(Exception ex){}
      }
    }

    protected void logoff(object sender, EventArgs e){
      // Taking user out of the page
      Response.Redirect("../index.html");

      // Loging out User
      Session["log"] = null;
    }
  }
