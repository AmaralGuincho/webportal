using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pt_br_app_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if(Session["admin"] == null){
        Response.Write("<script>var notification = document.querySelector('.mdl-js-snackbar');notification.MaterialSnackbar.showSnackbar{message: 'Logado como Funcionário' });</script>");
      }
      else{
        Response.Write("<script>var notification = document.querySelector('.mdl-js-snackbar');notification.MaterialSnackbar.showSnackbar{message: 'Logado como Administrador' });</script>");
      }
    }
}
