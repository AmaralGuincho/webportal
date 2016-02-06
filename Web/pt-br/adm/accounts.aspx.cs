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
                    admins.Table.Rows[i]["Senha"] = "****";
                    admins.Table.Rows[i]["tipo"] = "Administrador";
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
                    staff.Table.Rows[i]["Senha"] = "****";
                    staff.Table.Rows[i]["Tipo"] = "Funcionario";
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
                    lowStaff.Table.Rows[i]["Senha"] = "****";
                    lowStaff.Table.Rows[i]["tipo"] = "Motorista";
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

    protected void showClients(object sender, EventArgs e)
    {
        try
        {
            DataView client;
            client = (DataView)SqlSelectClient.Select(DataSourceSelectArguments.Empty);

            #region hide password
            if (Session["root"] == "enabled")
            {

            }
            else
            {
                #region Loop ninja para esconder a senha
                int i = 0;
                int rows = client.Count;
                while (i < rows)
                {
                    client.Table.Rows[i]["Senha"] = "****";
                    client.Table.Rows[i]["tipo"] = "Cliente";
                    i++;
                }
                #endregion

            }

            #endregion

            GridView.DataSource = client;
            GridView.DataBind();
        }
        catch { }
    }
    
    protected void showFrota(object sender,EventArgs e)
    {
        DataView frota;
        frota = (DataView)SqlDFrota.Select(DataSourceSelectArguments.Empty);

        GridView.DataSource = frota;
        GridView.DataBind();
    }

    protected void showSeguro(object sender,EventArgs e)
    {
        DataView dvSeg;
        dvSeg = (DataView)SqlSeguro.Select(DataSourceSelectArguments.Empty);
        GridView.DataSource = dvSeg;
        GridView.DataBind();
    }
}

