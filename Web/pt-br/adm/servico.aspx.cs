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
        data_abertura.Text = DateTime.Now.ToString();

        //ADICIONANDO O ID DA OE
        DataView id_oe;
        id_oe = (DataView)MySqlSelect_id.Select(DataSourceSelectArguments.Empty);
        txtid_oe.Text =(Convert.ToInt64(id_oe.Table.Rows[0]["MAX(id_oe)"].ToString()) + 1).ToString();
    }

    protected void ClienteDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ClienteDD.SelectedIndex == 1)
        {
            btnProcurar_cliente.Enabled = false;
        }
        else
        {
            btnProcurar_cliente.Enabled = true;
        }
    }

    protected void btnProcurar_cliente_Click(object sender, EventArgs e)
    {
        DataView pesq_cli;
        pesq_cli = (DataView)MySqlSelectClient.Select
            (DataSourceSelectArguments.Empty);

        if (pesq_cli.Table.Rows.Count == 0)
        {
            //Cliente não encontrado
            nome_pesq_cli.Text = string.Empty;
            
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
        if(ClienteDD.Text == "Novo Cliente")
        {
            #region Inserir OE + Cadastar Cliente


            DataView dvIdcli;
            dvIdcli = (DataView)MySqlSelect_MAXCliente.Select(DataSourceSelectArguments.Empty);

            DataView usr_id;
            usr_id = (DataView)MySqlUsr.Select(DataSourceSelectArguments.Empty);

            DateTime dt = Convert.ToDateTime(data_abertura.Text);
            String datacorreta = dt.ToString("yyyy/mm/dd HH:mm:ss");

            DataView dv_id_cli;
            dv_id_cli = (DataView)MySqlSelectClient.Select(DataSourceSelectArguments.Empty);

            
            MySql_insert_cliente.Insert();
            MySqlAbrirOe.InsertParameters["IDABERTURA"].DefaultValue = usr_id.Table.Rows[0]["id_usr"].ToString();
            MySqlAbrirOe.InsertParameters["IDCLI"].DefaultValue = dv_id_cli.Table.Rows[0]["id_usr"].ToString();
            MySqlAbrirOe.InsertParameters["DATA"].DefaultValue = datacorreta;

            MySqlAbrirOe.Insert();
            MySqlViagem.Insert();
            #endregion
        }
        else
        {
            DataView dvIdcli;
            dvIdcli = (DataView)MySqlSelectClient.Select(DataSourceSelectArguments.Empty);

            DataView usr_id;
            usr_id = (DataView)MySqlUsr.Select(DataSourceSelectArguments.Empty);
            
            DateTime dt = Convert.ToDateTime(data_abertura.Text);
            String datacorreta = dt.ToString("yyyy/mm/dd HH:mm:ss");

            //Adicionar id do cliente procurado



            MySqlAbrirOe.InsertParameters["IDCLI"].DefaultValue = dvIdcli.Table.Rows[0]["id_usr"].ToString();
            MySqlAbrirOe.InsertParameters["DATA"].DefaultValue = datacorreta;

            MySqlAbrirOe.Insert();

            MySqlViagem.Insert();
        }
    }
}