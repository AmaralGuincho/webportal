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
  CsharpCryptography Crypto = new CsharpCryptography("ETEP");
  public string getUserInfo(string info){
    //Creating a new DataView
    // Putting MySql's information inside our `Usuario` DataView
    DataView user = (DataView)getUsuario.Select(DataSourceSelectArguments.Empty);

    // User data to be shown
   string userId = user.Table.Rows[0]["id_func"].ToString();
   string userName = Crypto.Decrypt(user.Table.Rows[0]["nome_func"].ToString());
   string userLastName = Crypto.Decrypt(user.Table.Rows[0]["sobrenome_func"].ToString());
   string userFullName = userName + " " + userLastName;
   string userMail = Crypto.Decrypt(user.Table.Rows[0]["email_func"].ToString());
   string image = user.Table.Rows[0]["img_func"].ToString();

   switch (info){
      case "name":
        return userName;
        break;
      case "id":
        return userId;
        break;
      case "mail":
        return userMail;
        break;
      case "last":
        return userLastName;
        break;
      case "fullName":
        return userFullName;
        break;
      case "image":
        return image;
        break;
      default:
        return null;
        break;
   }
  }

  public void Page_Load(object sender, EventArgs e)
  {
    if(!IsPostBack){
      // try{
        //Verifying if user have a elegible log
        if(Session["log"] == null){
          //User does not have a elegible log
          Response.Redirect("~/index.html");
        }else{
          //User is Authenticated!
          string name = getUserInfo("name");
          string mail = getUserInfo("mail");
          string image = getUserInfo("image");
          string genericImage = "../images/profiles/generic.png";

          Session["userFullName"] = getUserInfo("userFullName");



          //Displaying user information on screen
          nome.InnerHtml = name;
          email.InnerHtml = mail;

          //Checking if user does have a profile photo
          if(image == string.Empty){
            //using a generic profile photo
            profileImage.Attributes["src"] = genericImage;
          }else{
            //Using the profile photo if the user does have one
            profileImage.Attributes["src"] = image;
          }
        }
        // }catch(Exception ex){}
      }
    }

  }
