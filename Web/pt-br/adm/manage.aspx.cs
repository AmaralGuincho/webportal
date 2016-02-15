using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pt_br_adm_Manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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

            Session["pesq"] = "none";
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

            Session["pesq"] = "usr";
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
            divgv.Visible = true;

            Session["pesq"] = "usr";
        }
        catch { }
    }

    protected void showFrota(object sender, EventArgs e)
    {
        DataView frota;
        frota = (DataView)SqlDFrota.Select(DataSourceSelectArguments.Empty);

        GridView.DataSource = frota;
        GridView.DataBind();
        divgv.Visible = true;
        Session["pesq"] = "frota";
    }

    protected void showSeguro(object sender, EventArgs e)
    {
        DataView dvSeg;
        dvSeg = (DataView)SqlSeguro.Select(DataSourceSelectArguments.Empty);
        GridView.DataSource = dvSeg;
        GridView.DataBind();
        divgv.Visible = true;

        Session["pesq"] = "seguro";
    }

    protected void showOE(object sender, EventArgs e)
    {
        DataView dvOe;
        dvOe = (DataView)SqlOe.Select(DataSourceSelectArguments.Empty);
        GridView.DataSource = dvOe;
        GridView.DataBind();
        divgv.Visible = true;
        Session["pesq"] = "oe";
    }

    protected void showViagem(object sender, EventArgs e)
    {
        DataView dvOe;
        dvOe = (DataView)SqlViagem.Select(DataSourceSelectArguments.Empty);
        GridView.DataSource = dvOe;
        GridView.DataBind();
        divgv.Visible = true;
        Session["pesq"] = "viagem";

    }

    protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView, "Select$" + e.Row.RowIndex);
            e.Row.ToolTip = "Click to select this row.";
        }
    }

    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView.Rows)
        {
            if (row.RowIndex == GridView.SelectedIndex)
            {
                row.BackColor = System.Drawing.ColorTranslator.FromHtml("#177ac4");
                row.ForeColor = System.Drawing.Color.White;
                row.ToolTip = string.Empty;
                Session["idpesq"] = GridView.SelectedRow.Cells[0].Text;
            }
            else
            {
                row.BackColor = System.Drawing.Color.White;
                row.ForeColor = System.Drawing.Color.Black;
                row.ToolTip = "Clique para selecionar!";

            }
        }
    }

    protected void editBtn(object sender, EventArgs e)
    {
        if (Session["pesq"] == "usr")
        {
            Response.Redirect("editusr.aspx");
        }
        if (Session["pesq"] == "frota")
        {
            Response.Redirect("editfrota.aspx");
        }
        if (Session["pesq"] == "seguro")
        {

        }

        if (Session["pesq"] == "oe")
        {
            Response.Redirect("editServico.aspx");
        }

        if (Session["pesq"] == "viagem")
        {

        }

    }
    protected void addBtn(object sender, EventArgs e)
    {
        if (Session["pesq"] == "usr")
        {
            DataView maxid = (DataView)SqlSelectNew.Select(DataSourceSelectArguments.Empty);
            Session["newid"] = maxid.Table.Rows[0]["MAX(id_usr)"].ToString();

            Response.Redirect("newUsr.aspx");
        }
        if (Session["pesq"] == "frota")
        {
            Response.Redirect("newFrota.aspx");
        }
        if (Session["pesq"] == "seguro")
        {

        }

        if (Session["pesq"] == "oe")
        {
            Response.Redirect("servico.aspx");
        }
        if (Session["pesq"] == "viagem")
        {

        }
    }
}
