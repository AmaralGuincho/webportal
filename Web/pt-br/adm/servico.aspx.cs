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
        // Adicionando o Nome Do Usuario a "OE"
        DataView usr_id;
        usr_id = (DataView)MySqlUsr.Select(DataSourceSelectArguments.Empty);
        nome_abertura.Text = usr_id.Table.Rows[0]["nome_usr"].ToString();

        data_abertura.Text = DateTime.Now.ToString();
    }

    protected void nome_cli_TextChanged(object sender, EventArgs e)
    {
        try
        {
            if (Cliente.ToString() == "Novo Cliente")
            {

            }
            else
            {
                
            }
        }
        catch { }
       
    }
}