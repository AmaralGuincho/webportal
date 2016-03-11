using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pt_br_adm_editfrota : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataView frotaInfo = (DataView)SqlInportUsr.Select(DataSourceSelectArguments.Empty);
            ddTipo.Text = frotaInfo.Table.Rows[0]["tipo"].ToString();
            txtPlaca.Text = frotaInfo.Table.Rows[0]["placa"].ToString();
        }
    }

    protected void update(object sender, EventArgs e)
    {
        //try

        SqlUpdate.Update();
        Response.Redirect("accounts.aspx");
        //  }
        //  catch { }
    }

}