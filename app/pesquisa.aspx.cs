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

    protected void Page_Load(object sender, EventArgs e){
      if(!IsPostBack){
        Session["response"] = true;
      }
      gettingDdl();
    }

    public void gettingDdl()
    {
      switch (selectTables.SelectedValue)
      {
        case "Cliente":
            selectAtribute.Items.Clear();
            selectAtribute.Items.Add(new ListItem("Nome","nome_cli"));
            selectAtribute.Items.Add(new ListItem("Cpf","cpf_cli"));
            selectAtribute.Items.Add(new ListItem("E-mail","email_cli"));
            // Using table as sql constraint
            sqlFull.SelectParameters["tabela"].DefaultValue = "cliente";
            break;

        case "Funcionário":
            selectAtribute.Items.Clear();
                selectAtribute.Items.Add(new ListItem("Nome", "nome_func"));
                selectAtribute.Items.Add(new ListItem("Cpf", "cpf_func"));
                selectAtribute.Items.Add(new ListItem("E-mail", "email_func"));
                // Using table as sql constraint
                sqlFull.SelectParameters["tabela"].DefaultValue = "funcionario";
            break;
        case "Frota":
            selectAtribute.Items.Clear();
                selectAtribute.Items.Add(new ListItem("Nome", "nome_frota"));
                selectAtribute.Items.Add(new ListItem("Modelo", "modelo_frota"));
                selectAtribute.Items.Add(new ListItem("Placa", "placa_frota"));
                // Using table as sql constraint
                sqlFull.SelectParameters["tabela"].DefaultValue = "frota";
            break;
        case "Veículo":
            selectAtribute.Items.Clear();
            selectAtribute.Items.Add(new ListItem("Modelo","modelo_veiculo"));
            selectAtribute.Items.Add(new ListItem("Placa", "placa_veiculo"));
            // Using table as sql constraint
            sqlFull.SelectParameters["tabela"].DefaultValue = "veiculo";
            break;
        default:
            break;
      }
      selectTables.DataBind();
      DataView listFunc = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);
      DataView listFrota = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);
      DataView listVeiculo = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);
    }

    public void listaGrid(String pesq)
    {
      DataTable tableCli = new DataTable();

      tableCli.Columns.Add("Nome");
      tableCli.Columns.Add("Cpf");
      tableCli.Columns.Add("E-mail");

      tableCli.DefaultView.RowFilter = "nome_cli like '"+pesq+"%'";

      DataView listCli = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);

      for(int i=0; i<listCli.Table.Rows.Count; i++)
      {
          DataRow linha = tableCli.NewRow();

          linha["nome_cli"] = Crypto.Decrypt(listCli.Table.Rows[i]["nome_cli"].ToString());
          linha["cpf_cli"] = Crypto.Decrypt(listCli.Table.Rows[i]["cpf_cli"].ToString());
          linha["email_cli"] = Crypto.Decrypt(listCli.Table.Rows[i]["email_cli"].ToString());

          tableCli.Rows.Add(linha);
      }

      gvPesq.DataSource = listCli;
      gvPesq.DataBind();

    }

    protected void searchQuery(object sender, EventArgs e){
      Session["response"] = true;
      listaGrid(pesqQuery.Text);
    }
}
