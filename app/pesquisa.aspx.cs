using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class app_pesquisa : System.Web.UI.Page
{
    CsharpCryptography Crypto = new CsharpCryptography("ETEP");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void listaGrid(String pesq)
    {
        DataView listaPlaca;

        listaPlaca = (DataView)sqlPlaca.Select(DataSourceSelectArguments.Empty);

        DataTable novaTabela = new DataTable();
        novaTabela.Columns.Add("id_veiculo", typeof(int));
        novaTabela.Columns.Add("id_cli", typeof(int));
        novaTabela.Columns.Add("fabricante_veiculo", typeof(string));
        novaTabela.Columns.Add("modelo_veiculo",typeof(string));
        novaTabela.Columns.Add("ano_veiculo",typeof(DateTime));
        novaTabela.Columns.Add("placa_veiculo", typeof(double));
        novaTabela.Columns.Add("cor_veiculo",typeof(string));

        novaTabela.DefaultView.RowFilter = "placa_veiculo like '"+pesq+"%'";

        for(int i=0; i<listaPlaca.Table.Rows.Count; i++)
        {
            DataRow linha = novaTabela.NewRow();

            linha["id_veiculo"] = listaPlaca.Table.Rows[i]["id_veiculo"].ToString();
            linha["id_cli"] = listaPlaca.Table.Rows[i]["id_cli"].ToString();
            linha["fabricante_veiculo"] = Crypto.Decrypt(listaPlaca.Table.Rows[i]["fabricante_veiculo"].ToString());
            linha["modelo_veiculo"] = Crypto.Decrypt(listaPlaca.Table.Rows[i]["modelo_veiculo"].ToString());
            linha["ano_veiculo"] = Crypto.Decrypt(listaPlaca.Table.Rows[i]["ano_veiculo"].ToString());
            linha["placa_veiculo"] = Crypto.Decrypt(listaPlaca.Table.Rows[i]["placa_veiculo"].ToString());
            linha["cor_veiculo"] = Crypto.Decrypt(listaPlaca.Table.Rows[i]["cor_veiculo"].ToString());

            novaTabela.Rows.Add(linha);
        }
        gvPesq.DataSource = novaTabela;
        gvPesq.DataBind();

    }

    protected void btnPesq_Click(object sender, EventArgs e)
    {
        listaGrid(txtPlaca.Text);
    }
}