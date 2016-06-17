using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pt_br_app_seguro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cadastro_seguro(object sender, EventArgs e){
      //singin up `seguro` to database
      seguro.Insert();
      Response.Redirect("~/pt-br/app/home.aspx");
    }
}
