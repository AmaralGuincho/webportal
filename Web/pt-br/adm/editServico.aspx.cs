using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pt_br_adm_editServico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Verificando autenticação
            if (Session["Log"] == "On")
            {
                if (Session["Staff"] != "On")
                {
                    Response.Redirect("../index.html");
                }
            }

            DataView dvoe = (DataView)SqlSelectOE.Select(DataSourceSelectArguments.Empty);

            data_abertura.Text = dvoe.Table.Rows[0]["data_abertura_oe"].ToString();
            nome_abertura.Text = dvoe.Table.Rows[0]["nome_ab_chamado"].ToString();
            //idseguro
            nome_assistente.Text = dvoe.Table.Rows[0]["nome_assistente_seguro"].ToString();
            tipo_seguro.Text = dvoe.Table.Rows[0]["tipo_seguro"].ToString();
            //idcli
            txtLocalRetirada.Text = dvoe.Table.Rows[0]["local_retirada"].ToString();
            Agendamento.Text = dvoe.Table.Rows[0]["agendamento"].ToString();
            numero_sinistro.Text = dvoe.Table.Rows[0]["numero_sinistro"].ToString();
            local_entrega.Text = dvoe.Table.Rows[0]["local_entrega"].ToString();
            //idmotorista
            ddStatus.Text = dvoe.Table.Rows[0]["status"].ToString();

        }
        catch { }
    }

    protected void btnProcurar_cliente_Click(object sender, EventArgs e)
    {
        
    }

    protected void abriroe(object sender, EventArgs e)
    {
        try
        {
            if (ClienteDD.Text == "Novo Cliente")
            {
                #region Inserir OE + Cadastar Cliente

                DataView usr_id;
                usr_id = (DataView)MySqlUsr.Select(DataSourceSelectArguments.Empty);

                #region inserindo sexo no cliente

                if (sexoCli.Text == "Masculino")
                {
                    MySql_insert_cliente.InsertParameters["SEXCLI"].DefaultValue = "M";
                }
                else
                {
                    MySql_insert_cliente.InsertParameters["SEXCLI"].DefaultValue = "F";
                }

                #endregion

                MySql_insert_cliente.Insert();

                #region abrir oe

                DataView dvIdcli;
                dvIdcli = (DataView)MySqlSelect_MAXCliente.Select(DataSourceSelectArguments.Empty);

                MySqlAbrirOe.InsertParameters["IDCLI"].DefaultValue = dvIdcli.Table.Rows[0]["MAX(id_usr)"].ToString();
                MySqlAbrirOe.InsertParameters["DATA"].DefaultValue = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");

                MySqlAbrirOe.Insert();
                #endregion

                MySqlViagem.Insert();
                #endregion
            }
            else
            {
                #region Inserir OE + Cliente Existente
                DataView dvIdcli;
                dvIdcli = (DataView)MySqlSelectClient.Select(DataSourceSelectArguments.Empty);

                DataView usr_id;
                usr_id = (DataView)MySqlUsr.Select(DataSourceSelectArguments.Empty);

                DateTime dt = Convert.ToDateTime(data_abertura.Text);
                String datacorreta = dt.ToString("yyyy-mm-dd HH:mm:ss");

                //Adicionar id do cliente procurado

                MySqlAbrirOe.InsertParameters["IDCLI"].DefaultValue = dvIdcli.Table.Rows[0]["id_usr"].ToString();
                MySqlAbrirOe.InsertParameters["DATA"].DefaultValue = datacorreta;

                MySqlAbrirOe.Insert();

                MySqlViagem.Insert();
                #endregion
            }
            //Sucesso no serviço
            Response.Redirect("done.aspx");
        }
        catch { }
        finally
        {
            //falha no serviço
            //Response.Redirect("fail.aspx");
            Response.Redirect("done.aspx");
        }


    }

    protected void selected(object sender, EventArgs e)
    {
        if (ClienteDD.SelectedIndex == 1)
        {
            btnProcurar_cliente.Visible = false;
        }
        else
        {
            btnProcurar_cliente.Visible = true;
        }
    }
}