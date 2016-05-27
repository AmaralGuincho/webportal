using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pt_br_app_servico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if(Session["admin"] == null){
        Response.Write("<script>(function() {'use strict';var snackbarContainer = document.querySelector('.mdl-js-snackbar');var showToastButton = document.querySelector('.fab');showToastButton.addEventListener('click', function() {'use strict';var data = {message: 'Iniciada sessão como Funcionário', timeout: 3000};snackbarContainer.MaterialSnackbar.showSnackbar(data);});}());</script>");
      }
      else{
        Response.Write("<script>(function() {'use strict';var snackbarContainer = document.querySelector('.mdl-js-snackbar');var showToastButton = document.querySelector('.fab');showToastButton.addEventListener('click', function() {'use strict';var data = {message: 'Iniciada sessão como Administrador', timeout: 3000};snackbarContainer.MaterialSnackbar.showSnackbar(data);});}());</script>");
      }
    }
}
