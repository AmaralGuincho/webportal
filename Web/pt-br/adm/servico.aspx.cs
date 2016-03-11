using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Referencia de Dados
using System.Data;

public partial class pt_br_adm_servico : System.Web.UI.Page
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

            // Adicionando o Nome Do Usuario a "OE"
            DataView usr_id;
            usr_id = (DataView)MySqlUsr.Select(DataSourceSelectArguments.Empty);
            nome_abertura.Text = usr_id.Table.Rows[0]["nome_usr"].ToString();

            //AUTOSET DATA
            data_abertura.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");

            //ADICIONANDO O ID DA OE
            DataView id_oe;
            id_oe = (DataView)MySqlSelect_id.Select(DataSourceSelectArguments.Empty);
            txtid_oe.Text = (Convert.ToInt64(id_oe.Table.Rows[0]["MAX(id_oe)"].ToString()) + 1).ToString();
        }
        catch { }
    }

    protected void btnProcurar_cliente_Click(object sender, EventArgs e)
    {
        DataView pesq_cli;
        pesq_cli = (DataView)MySqlSelectClient.Select
            (DataSourceSelectArguments.Empty);

        if (pesq_cli.Table.Rows.Count == 0)
        {
            //Cliente não encontrado
            ClienteDD.SelectedIndex = 1;
            btnProcurar_cliente.Visible = false;
            
        }
        else
        {
            //Cliente encontrado
            cpf_cli.Text = pesq_cli.Table.Rows[0]["cpf_usr"].ToString();
            email_cli.Text = pesq_cli.Table.Rows[0]["email_usr"].ToString();
            Cel_cli.Text = pesq_cli.Table.Rows[0]["mobile_usr"].ToString();

            if (pesq_cli.Table.Rows[0]["sx_usr"].ToString() == "M")
            {
                sexoCli.Text = "Masculino";
            }
            else
            {
                sexoCli.Text = "Feminino";
            }
        }
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

                //Adicionar id do cliente procurado

                MySqlAbrirOe.InsertParameters["IDCLI"].DefaultValue = dvIdcli.Table.Rows[0]["id_usr"].ToString();
                MySqlAbrirOe.InsertParameters["DATA"].DefaultValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                MySqlAbrirOe.Insert();

                MySqlViagem.Insert();
                #endregion

                Response.Redirect("done.aspx");
            }
            //Sucesso no serviço
            //Response.Redirect("done.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex);
            //Response.Redirect("fail.aspx");
        }
        
       
    }

    protected void selected(object sender, EventArgs e)
    {
       if(ClienteDD.SelectedIndex == 1)
        {
           btnProcurar_cliente.Visible = false;
        }
        else
        {
          btnProcurar_cliente.Visible = true;
        }
    }

}