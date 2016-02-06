using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pt_br_adm_accounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void showAdm(object sender, EventArgs e)
    {
        try
        {
            //achamos administradores
            DataView admins;
            admins = (DataView)SqlSelectAdm.Select(DataSourceSelectArguments.Empty);

            GridView.DataSource = admins;
        }
        catch { }
        finally
        {
            //nao achamos administradores
        }
    }

        protected void showStaff(object sender, EventArgs e)
    {
        try
        {
            //achamos administradores
            DataView staff;
            staff = (DataView)SqlSelectStaff.Select(DataSourceSelectArguments.Empty);

            GridView.DataSource = staff;
        }
        catch { }
        finally
        {
            //nao achamos administradores
        }
    }

    protected void showLowStaff(object sender, EventArgs e)
    {
        try
        {
            //achamos administradores
            DataView lowStaff;
            lowStaff = (DataView)SqlSelectLowStaff.Select(DataSourceSelectArguments.Empty);

            if (Session["root"] == "enabled")
            {

            }
            else
            {
                lowStaff.Table.Rows[0]["pwd_usr"] = "****";
                lowStaff.Table.Rows[0]["type_usr"] = "Motorista";
            }

            lowStaff.Table.TableName{ 0; "Código"; };



            GridView.DataSource = lowStaff;
            GridView.DataBind();
            divgv.Visible = true;
        }
        catch { }
        finally
        {
            //nao achamos administradores
        }
    }
}
