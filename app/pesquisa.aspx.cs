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
      gettingDdl();
    }

  }

  public void gettingDdl()
  {
    switch (selectTables.SelectedValue)
    {
      // case "Cliente":
      // selectAtribute.Items.Clear();
      // selectAtribute.Items.Add(new ListItem("Nome","nome_cli"));
      // selectAtribute.Items.Add(new ListItem("Cpf","cpf_cli"));
      // selectAtribute.Items.Add(new ListItem("E-mail","email_cli"));
      // break;
      //
      // case "Funcionário":
      // selectAtribute.Items.Clear();
      // selectAtribute.Items.Add(new ListItem("Nome", "nome_func"));
      // selectAtribute.Items.Add(new ListItem("Cpf", "cpf_func"));
      // selectAtribute.Items.Add(new ListItem("E-mail", "email_func"));
      // break;

      case "Frota":
      selectAtribute.Items.Clear();
      selectAtribute.Items.Add(new ListItem("Nome", "nome_frota"));
      selectAtribute.Items.Add(new ListItem("Modelo", "modelo_frota"));
      selectAtribute.Items.Add(new ListItem("Placa", "placa_frota"));
      break;
      case "Veículo":
      selectAtribute.Items.Clear();
      selectAtribute.Items.Add(new ListItem("Modelo","modelo_veiculo"));
      selectAtribute.Items.Add(new ListItem("Placa", "placa_veiculo"));
      selectAtribute.Items.Add(new ListItem("Marca", "fabricante_veiculo"));

      break;
      default:
      break;
    }
    selectTables.DataBind();

  }

  public void listaGridVeiculo(String pesq)
  {
    DataView listaVeiculo;

    // Using table as sql constraint
    sqlFull.SelectCommand = "SELECT * FROM veiculo";

    listaVeiculo = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);

    DataTable novaTabela = new DataTable();
    novaTabela.Columns.Add("id_veiculo", typeof(int));
    novaTabela.Columns.Add("id_cli", typeof(int));
    novaTabela.Columns.Add("fabricante_veiculo", typeof(string));
    novaTabela.Columns.Add("modelo_veiculo",typeof(string));
    novaTabela.Columns.Add("ano_veiculo",typeof(int));
    novaTabela.Columns.Add("placa_veiculo", typeof(string));
    novaTabela.Columns.Add("cor_veiculo",typeof(string));

    if(selectAtribute.SelectedValue == "placa_veiculo"){
      novaTabela.DefaultView.RowFilter = "placa_veiculo like '"+pesq+"%'";
    } else if (selectAtribute.SelectedValue == "modelo_veiculo"){
      novaTabela.DefaultView.RowFilter = "modelo_veiculo like '"+pesq+"%'";
    } else if (selectAtribute.SelectedValue == "fabricante_veiculo"){
      novaTabela.DefaultView.RowFilter = "fabricante_veiculo like '"+pesq+"%'";
    }

    for(int i=0; i<listaVeiculo.Table.Rows.Count; i++)
    {
      DataRow linha = novaTabela.NewRow();

      linha["id_veiculo"] = listaVeiculo.Table.Rows[i]["id_veiculo"].ToString();
      linha["id_cli"] = listaVeiculo.Table.Rows[i]["id_cli"].ToString();
      linha["fabricante_veiculo"] = Crypto.Decrypt(listaVeiculo.Table.Rows[i]["fabricante_veiculo"].ToString());
      linha["modelo_veiculo"] = Crypto.Decrypt(listaVeiculo.Table.Rows[i]["modelo_veiculo"].ToString());
      linha["ano_veiculo"] = Crypto.Decrypt(listaVeiculo.Table.Rows[i]["ano_veiculo"].ToString());
      linha["placa_veiculo"] = Crypto.Decrypt(listaVeiculo.Table.Rows[i]["placa_veiculo"].ToString());
      linha["cor_veiculo"] = Crypto.Decrypt(listaVeiculo.Table.Rows[i]["cor_veiculo"].ToString());

      novaTabela.Rows.Add(linha);
    }
    gvPesqVeiculo.DataSource = novaTabela;
    gvPesqVeiculo.DataBind();

  }

  // public void listaGridCliente(String pesq)
  // {
  //   DataView listaCliente;
  //
  //   // Using table as sql constraint
  //   sqlFull.SelectCommand = "SELECT * FROM cliente";
  //
  //   listaCliente = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);
  //
  //   DataTable novaTabela1 = new DataTable();
  //   novaTabela1.Columns.Add("id_cli", typeof(int));
  //   novaTabela1.Columns.Add("nome_cli", typeof(string));
  //   novaTabela1.Columns.Add("sobrenome_cli", typeof(string));
  //   novaTabela1.Columns.Add("cpf_cli",typeof(string));
  //   novaTabela1.Columns.Add("email_cli",typeof(string));
  //   novaTabela1.Columns.Add("sx_cli", typeof(string));
  //   novaTabela1.Columns.Add("telefone_cli",typeof(string));
  //   novaTabela1.Columns.Add("dtnasc_cli", typeof(string));
  //   novaTabela1.Columns.Add("cep_cli", typeof(string));
  //   novaTabela1.Columns.Add("bairro_cli",typeof(string));
  //   novaTabela1.Columns.Add("cid_cli",typeof(string));
  //   novaTabela1.Columns.Add("uf_cli", typeof(string));
  //   novaTabela1.Columns.Add("endereco_cli",typeof(string));
  //   novaTabela1.Columns.Add("img_cli", typeof(string));
  //
  //   if(selectAtribute.SelectedValue == "nome_cli"){
  //     novaTabela1.DefaultView.RowFilter = "nome_cli like '"+pesq+"%'";
  //   } else if (selectAtribute.SelectedValue == "cpf_cli"){
  //     novaTabela1.DefaultView.RowFilter = "cpf_cli like '"+pesq+"%'";
  //   } else if (selectAtribute.SelectedValue == "email_cli"){
  //     novaTabela1.DefaultView.RowFilter = "email_cli like '"+pesq+"%'";
  //   }
  //
  //   for(int i=0; i<listaCliente.Table.Rows.Count; i++)
  //   {
  //     DataRow linha = novaTabela1.NewRow();
  //     linha["id_cli"] = listaCliente.Table.Rows[i]["id_cli"].ToString();
  //     linha["nome_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["nome_cli"].ToString());
  //     linha["sobrenome_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["sobrenome_cli"].ToString());
  //     linha["cpf_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["cpf_cli"].ToString());
  //     linha["email_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["email_cli"].ToString());
  //     linha["sx_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["sx_cli"].ToString());
  //     linha["telefone_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["telefone_cli"].ToString());
  //     linha["dtnasc_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["dtnasc_cli"].ToString());
  //     linha["cep_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["cep_cli"].ToString());
  //     linha["bairro_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["bairro_cli"].ToString());
  //     linha["cid_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["cid_cli"].ToString());
  //     linha["uf_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["uf_cli"].ToString());
  //     linha["endereco_cli"] = Crypto.Decrypt(listaCliente.Table.Rows[i]["endereco_cli"].ToString());
  //     linha["img_cli"] = listaCliente.Table.Rows[i]["img_cli"].ToString();
  //
  //     novaTabela1.Rows.Add(linha);
  //   }
  //   gvPesqCliente.DataSource = novaTabela1;
  //   gvPesqCliente.DataBind();
  //
  // }

  // public void listaGridFuncionaio(String pesq)
  // {
  //   DataView listaFunc;
  //
  //   // Using table as sql constraint
  //   sqlFull.SelectCommand = "SELECT * FROM funcionario";
  //
  //   listaFunc = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);
  //
  //   DataTable novaTabela2 = new DataTable();
  //   novaTabela2.Columns.Add("id_func", typeof(int));
  //   novaTabela2.Columns.Add("id_cargo", typeof(int));
  //   novaTabela2.Columns.Add("nome_func", typeof(string));
  //   novaTabela2.Columns.Add("sobrenome_func", typeof(string));
  //   novaTabela2.Columns.Add("dtnasc_func",typeof(string));
  //   novaTabela2.Columns.Add("cep_func",typeof(string));
  //   novaTabela2.Columns.Add("cpf_func", typeof(string));
  //   novaTabela2.Columns.Add("dtcont_func",typeof(string));
  //   novaTabela2.Columns.Add("sx_func", typeof(string));
  //   novaTabela2.Columns.Add("tel_func", typeof(string));
  //   novaTabela2.Columns.Add("email_func",typeof(string));
  //   novaTabela2.Columns.Add("residencia_func",typeof(string));
  //   novaTabela2.Columns.Add("bairro_func", typeof(string));
  //   novaTabela2.Columns.Add("uf_func",typeof(string));
  //   novaTabela2.Columns.Add("cid_func", typeof(string));
  //   novaTabela2.Columns.Add("img_func", typeof(string));
  //
  //   if(selectAtribute.SelectedValue == "nome_func"){
  //     novaTabela2.DefaultView.RowFilter = "nome_func like '"+pesq+"%'";
  //   } else if (selectAtribute.SelectedValue == "cpf_func"){
  //     novaTabela2.DefaultView.RowFilter = "cpf_func like '"+pesq+"%'";
  //   } else if (selectAtribute.SelectedValue == "email_func"){
  //     novaTabela2.DefaultView.RowFilter = "email_func like '"+pesq+"%'";
  //   }
  //
  //   for(int i=0; i<listaFunc.Table.Rows.Count; i++)
  //   {
  //     DataRow linha = novaTabela2.NewRow();
  //     linha["id_func"] = listaFunc.Table.Rows[i]["id_func"].ToString();
  //     linha["nome_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["nome_func"].ToString());
  //     linha["sobrenome_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["sobrenome_func"].ToString());
  //     linha["dtnasc_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["dtnasc_func"].ToString());
  //     linha["cep_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["cep_func"].ToString());
  //     linha["cpf_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["cpf_func"].ToString());
  //     linha["dtcont_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["dtcont_func"].ToString());
  //     linha["sx_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["sx_func"].ToString());
  //     linha["tel_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["tel_func"].ToString());
  //     linha["email_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["email_func"].ToString());
  //     linha["residencia_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["residencia_func"].ToString());
  //     linha["bairro_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["bairro_func"].ToString());
  //     linha["uf_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["uf_func"].ToString());
  //     linha["cid_func"] = Crypto.Decrypt(listaFunc.Table.Rows[i]["cid_func"].ToString());
  //     linha["img_func"] = listaFunc.Table.Rows[i]["img_func"].ToString();
  //
  //     novaTabela2.Rows.Add(linha);
  //   }
  //   gvPesqFunc.DataSource = novaTabela2;
  //   gvPesqFunc.DataBind();
  //
  // }

  public void listaGridFrota(String pesq)
  {
    DataView listaFrota;

    // Using table as sql constraint
    sqlFull.SelectCommand = "SELECT * FROM frota";

    listaFrota = (DataView)sqlFull.Select(DataSourceSelectArguments.Empty);

    DataTable novaTabela3 = new DataTable();
    novaTabela3.Columns.Add("id_frota", typeof(int));
    novaTabela3.Columns.Add("nome_frota", typeof(string));
    novaTabela3.Columns.Add("modelo_frota", typeof(string));
    novaTabela3.Columns.Add("ano_frota",typeof(string));
    novaTabela3.Columns.Add("fabricante_frota",typeof(string));
    novaTabela3.Columns.Add("tipo_frota", typeof(string));
    novaTabela3.Columns.Add("placa_frota",typeof(string));
    novaTabela3.Columns.Add("cor_frota", typeof(string));
    novaTabela3.Columns.Add("img_frota", typeof(string));

    if(selectAtribute.SelectedValue == "nome_frota"){
      novaTabela3.DefaultView.RowFilter = "nome_frota like '"+pesq+"%'";
    } else if (selectAtribute.SelectedValue == "modelo_frota"){
      novaTabela3.DefaultView.RowFilter = "modelo_frota like '"+pesq+"%'";
    } else if (selectAtribute.SelectedValue == "placa_frota"){
      novaTabela3.DefaultView.RowFilter = "placa_frota like '"+pesq+"%'";
    }

    for(int i=0; i<listaFrota.Table.Rows.Count; i++)
    {
      DataRow linha = novaTabela3.NewRow();
      linha["id_frota"] = listaFrota.Table.Rows[i]["id_frota"].ToString();
      linha["nome_frota"] = Crypto.Decrypt(listaFrota.Table.Rows[i]["nome_frota"].ToString());
      linha["modelo_frota"] = Crypto.Decrypt(listaFrota.Table.Rows[i]["modelo_frota"].ToString());
      linha["ano_frota"] = Crypto.Decrypt(listaFrota.Table.Rows[i]["ano_frota"].ToString());
      linha["fabricante_frota"] = Crypto.Decrypt(listaFrota.Table.Rows[i]["fabricante_frota"].ToString());
      linha["tipo_frota"] = Crypto.Decrypt(listaFrota.Table.Rows[i]["tipo_frota"].ToString());
      linha["placa_frota"] = Crypto.Decrypt(listaFrota.Table.Rows[i]["placa_frota"].ToString());
      linha["cor_frota"] = Crypto.Decrypt(listaFrota.Table.Rows[i]["cor_frota"].ToString());
      linha["img_frota"] = listaFrota.Table.Rows[i]["img_frota"].ToString();

      novaTabela3.Rows.Add(linha);
    }
    gvPesqFrota.DataSource = novaTabela3;
    gvPesqFrota.DataBind();

  }

  protected void searchQuery(object sender, EventArgs e){
    Session["response"] = true;

    gvPesqVeiculo.Visible = false;
    // gvPesqCliente.Visible = false;
    // gvPesqFunc.Visible = false;

    switch(selectTables.SelectedValue)
    {
      case "Veículo":
      listaGridVeiculo(pesqQuery.Text);
      if(gvPesqVeiculo.Visible == false )
    {
      // gvPesqCliente.Visible = false;
      gvPesqFrota.Visible = false;
      // gvPesqFunc.Visible = false;
      gvPesqVeiculo.Visible = true;
    }
    break;
    // case "Cliente":
    // listaGridCliente(pesqQuery.Text);
    // if(gvPesqCliente.Visible == false)
    // {
    //   gvPesqVeiculo.Visible = false;
    //   gvPesqFrota.Visible = false;
    //   gvPesqFunc.Visible = false;
    //   gvPesqCliente.Visible = true;
    // }
    // break;
    // case "Funcionário":
    // listaGridFuncionaio(pesqQuery.Text);
    // if(gvPesqFunc.Visible == false)
    // {
    //   gvPesqVeiculo.Visible = false;
    //   gvPesqFrota.Visible = false;
    //   gvPesqFunc.Visible = true;
    //   gvPesqCliente.Visible = false;
    // }
    // break;
    case "Frota":
    listaGridFrota(pesqQuery.Text);
    if(gvPesqFrota.Visible == false )
    {
      // gvPesqCliente.Visible = false;
      gvPesqFrota.Visible = true;
      // gvPesqFunc.Visible = false;
      gvPesqVeiculo.Visible = false;
    }
    break;
    }
  }

  protected void selectTables_SelectedIndexChanged(object sender, EventArgs e)
  {
    gettingDdl();
  }


}
