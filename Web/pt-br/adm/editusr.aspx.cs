using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class css_editusr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dvimport = (DataView)SqlInportUsr.Select(DataSourceSelectArguments.Empty);

        txtLogin.Text = dvimport.Table.Rows[0]["login_usr"].ToString();
        txtEmail.Text = dvimport.Table.Rows[0]["email_usr"].ToString();
        txtSenha.Text = dvimport.Table.Rows[0]["pwd_usr"].ToString();
        txtNome.Text = dvimport.Table.Rows[0]["nome_usr"].ToString();
        txtNacimento.Text = dvimport.Table.Rows[0]["birth_usr"].ToString();
        txtCpf.Text = dvimport.Table.Rows[0]["cpf_usr"].ToString();
        txtCep.Text = dvimport.Table.Rows[0]["cep_usr"].ToString();
        txtCelular.Text = dvimport.Table.Rows[0]["mobile_usr"].ToString();

        if(dvimport.Table.Rows[0]["type_usr"].ToString() == "adm")
        {
            ddTipo.SelectedIndex = 1;
        }
        if (dvimport.Table.Rows[0]["type_usr"].ToString() == "staff")
        {
            ddTipo.SelectedIndex = 2;
        }
        if (dvimport.Table.Rows[0]["type_usr"].ToString() == "lowStaff")
        {
            ddTipo.SelectedIndex = 3;
        }
        if (dvimport.Table.Rows[0]["type_usr"].ToString() == "usr")
        {
            ddTipo.SelectedIndex = 4;
        }

        if(dvimport.Table.Rows[0]["sx_usr"].ToString() == "M")
        {
            ddSexo.Text = "Masculino";
        }
        else
        {
            ddSexo.Text = "Feminino";
        }
    }
}