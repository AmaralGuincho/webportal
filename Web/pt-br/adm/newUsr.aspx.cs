using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pt_br_adm_newUsr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Cadastrar(object sender, EventArgs e)
    {
        try
        {

            //traduzindo o dropdown Tipo
            if (ddTipo.Text == "Administrador")
            {
                SqlInsert_Client.InsertParameters["TIPO"].DefaultValue = "adm";
            }

            if (ddTipo.Text == "Funcionario")
            {
                SqlInsert_Client.InsertParameters["TIPO"].DefaultValue = "staff";
            }

            if (ddTipo.Text == "Motorista")
            {
                SqlInsert_Client.InsertParameters["TIPO"].DefaultValue = "lowStaff";
            }

            if (ddTipo.Text == "Cliente")
            {
                SqlInsert_Client.InsertParameters["TIPO"].DefaultValue = "usr";
            }

            //Traduzindo o DropDown 
            if (ddSexo.Text == "Masculino")
            {
                SqlInsert_Client.InsertParameters["SEXO"].DefaultValue = "M";
            }
            else {
                SqlInsert_Client.InsertParameters["Sexo"].DefaultValue = "F";
            }

            SqlInsert_Client.Insert();
        }
        catch { }
    }
}