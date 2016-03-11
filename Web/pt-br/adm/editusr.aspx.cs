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
        if (!IsPostBack)
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

                if (dvimport.Table.Rows[0]["type_usr"].ToString() == "adm")
                {
                    ddTipo.SelectedIndex = 0;
                }
                if (dvimport.Table.Rows[0]["type_usr"].ToString() == "staff")
                {
                    ddTipo.SelectedIndex = 1;
                }
                if (dvimport.Table.Rows[0]["type_usr"].ToString() == "lowStaff")
                {
                    ddTipo.SelectedIndex = 2;
                }
                if (dvimport.Table.Rows[0]["type_usr"].ToString() == "usr")
                {
                    ddTipo.SelectedIndex = 3;
                }

                if (dvimport.Table.Rows[0]["sx_usr"].ToString() == "M")
                {
                    ddSexo.SelectedIndex = 0;
                }
                else
                {
                    ddSexo.SelectedIndex = 1;
                }
        }

    }

    protected void ddtipo_changed(object sender, EventArgs e)
    {
       /* //traduzindo o dropdown Tipo
        if (ddTipo.SelectedIndex == 0)
        {
            SqlUpdate.UpdateParameters["TIPO"].DefaultValue = "adm";
        }

        if (ddTipo.SelectedIndex == 1)
        {
            SqlUpdate.UpdateParameters["TIPO"].DefaultValue = "staff";
        }

        if (ddTipo.SelectedIndex == 2)
        {
            SqlUpdate.UpdateParameters["TIPO"].DefaultValue = "lowStaff";
        }

        if (ddTipo.SelectedIndex == 3)
        {
            SqlUpdate.UpdateParameters["TIPO"].DefaultValue = "usr";
        }
        */
    }

    protected void ddsex_changed(object sender, EventArgs e)
    {
        /*
        //Traduzindo o DropDown 
        if (ddSexo.SelectedItem.Text == "Masculino")
        {
            SqlUpdate.UpdateParameters["SEXO"].DefaultValue = "M";
        }
        else {
            SqlUpdate.UpdateParameters["Sexo"].DefaultValue = "F";
        }
        */
    }

    protected void update(object sender, EventArgs e)
    {
        //try
      
        SqlUpdate.Update();
        Response.Redirect("accounts.aspx");
        //  }
        //  catch { }
    }
}