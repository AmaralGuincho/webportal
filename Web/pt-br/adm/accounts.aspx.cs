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
            Response.Write(admins.Count);
           
            #region hide password

            if (Session["root"] == "enabled")
            {

            }
            else
            {
                #region Loop ninja para esconder a senha
                int i = 0;
                int rows = admins.Count;
                while (i < rows)
                {
                    admins.Table.Rows[i]["pwd_usr"] = "****";
                    admins.Table.Rows[i]["type_usr"] = "Administrador";
                    i++;
                }
                #endregion

            }

            #endregion

            GridView.DataSource = admins;

            GridView.DataBind();

            divgv.Visible = true;
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

            #region hide password
            if (Session["root"] == "enabled")
            {

            }
            else
            {
                #region Loop ninja para esconder a senha
                int i = 0;
                int rows = staff.Count;
                while (i < rows)
                {
                    staff.Table.Rows[i]["pwd_usr"] = "****";
                    staff.Table.Rows[i]["type_usr"] = "Funcionario";
                    i++;
                }
                #endregion

            }

            #endregion

            GridView.DataSource = staff;
            GridView.DataBind();
            divgv.Visible = true;
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

            #region hide password
            if (Session["root"] == "enabled")
            {

            }
            else
            {
                #region Loop ninja para esconder a senha
                int i = 0;
                int rows = lowStaff.Count;
                while (i < rows)
                {
                    lowStaff.Table.Rows[i]["pwd_usr"] = "****";
                    lowStaff.Table.Rows[i]["type_usr"] = "Motorista";
                    i++;
                }
                #endregion

            }

            #endregion



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
