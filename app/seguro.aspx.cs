using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class app_seguro : System.Web.UI.Page{
  CsharpCryptography Crypto = new CsharpCryptography("ETEP");

    protected void Page_Load(object sender, EventArgs e){

    }

    protected void cadastro_seguro(object sender, EventArgs e){
      //singin up `seguro` to database
      seguro.InsertParameters["nomeSeguro"].DefaultValue = Crypto.Encrypt(nomeSeguro.Text);
      seguro.InsertParameters["codPrestador"].DefaultValue = Crypto.Encrypt(codPrestador.Text);
      seguro.InsertParameters["cgc"].DefaultValue = Crypto.Encrypt(cgc.Text);
      seguro.InsertParameters["setorCadastroTel"].DefaultValue = Crypto.Encrypt(setorCadastroTel.Text);
      seguro.InsertParameters["setorPagtoTel"].DefaultValue = Crypto.Encrypt(setorPagtoTel.Text);
      seguro.InsertParameters["fechamentoServicosTel"].DefaultValue = Crypto.Encrypt(fechamentoServicosTel.Text);
      seguro.InsertParameters["casosAndamentoTel"].DefaultValue = Crypto.Encrypt(casosAndamentoTel.Text);
      seguro.InsertParameters["cordenadorRegiao"].DefaultValue = Crypto.Encrypt(cordenadorRegiao.Text);
      seguro.InsertParameters["passeio40km"].DefaultValue = Crypto.Encrypt(passeio40km.Text);
      seguro.InsertParameters["passeioMaior40km"].DefaultValue = Crypto.Encrypt(passeioMaior40km.Text);
      seguro.InsertParameters["passeioHoraTrabalhada"].DefaultValue = Crypto.Encrypt(passeioHoraTrabalhada.Text);
      seguro.InsertParameters["passeioHoraParada"].DefaultValue = Crypto.Encrypt(passeioHoraParada.Text);
      seguro.InsertParameters["ull40km"].DefaultValue = Crypto.Encrypt(ull40km.Text);
      seguro.InsertParameters["ullMaior40km"].DefaultValue = Crypto.Encrypt(ullMaior40km.Text);
      seguro.InsertParameters["ullHoraTrabalhada"].DefaultValue = Crypto.Encrypt(ullHoraTrabalhada.Text);
      seguro.InsertParameters["ullHoraParada"].DefaultValue = Crypto.Encrypt(ullHoraParada.Text);
      seguro.InsertParameters["moto40km"].DefaultValue = Crypto.Encrypt(moto40km.Text);
      seguro.InsertParameters["motoMaior40km"].DefaultValue = Crypto.Encrypt(motoMaior40km.Text);
      seguro.InsertParameters["motoHoraTrabalhada"].DefaultValue = Crypto.Encrypt(motoHoraTrabalhada.Text);
      seguro.InsertParameters["motoHoraParada"].DefaultValue = Crypto.Encrypt(motoHoraParada.Text);
      seguro.InsertParameters["garagem40km"].DefaultValue = Crypto.Encrypt(garagem40km.Text);
      seguro.InsertParameters["garagemMaior40km"].DefaultValue = Crypto.Encrypt(garagemMaior40km.Text);
      seguro.InsertParameters["garagemHoraTrabalhada"].DefaultValue = Crypto.Encrypt(garagemHoraTrabalhada.Text);
      seguro.InsertParameters["garagemHoraParada"].DefaultValue = Crypto.Encrypt(garagemHoraParada.Text);
      seguro.InsertParameters["re40km"].DefaultValue = Crypto.Encrypt(re40km.Text);
      seguro.InsertParameters["reMaior40km"].DefaultValue = Crypto.Encrypt(reMaior40km.Text);
      seguro.InsertParameters["reHoraTrabalhada"].DefaultValue = Crypto.Encrypt(reHoraTrabalhada.Text);
      seguro.InsertParameters["reHoraParada"].DefaultValue = Crypto.Encrypt(reHoraParada.Text);
      seguro.InsertParameters["patins40km"].DefaultValue = Crypto.Encrypt(patins40km.Text);
      seguro.InsertParameters["patinsMaior40km"].DefaultValue = Crypto.Encrypt(patinsMaior40km.Text);
      seguro.InsertParameters["patinsHoraTrabalhada"].DefaultValue = Crypto.Encrypt(patinsHoraTrabalhada.Text);
      seguro.InsertParameters["patinsHoraParada"].DefaultValue = Crypto.Encrypt(patinsHoraParada.Text);
      seguro.InsertParameters["cl40km"].DefaultValue = Crypto.Encrypt(cl40km.Text);
      seguro.InsertParameters["clMaior40km"].DefaultValue = Crypto.Encrypt(clMaior40km.Text);
      seguro.InsertParameters["clHoraTrabalhada"].DefaultValue = Crypto.Encrypt(clHoraTrabalhada.Text);
      seguro.InsertParameters["clHoraParada"].DefaultValue = Crypto.Encrypt(clHoraParada.Text);
      seguro.InsertParameters["sospsd40km"].DefaultValue = Crypto.Encrypt(sospsd40km.Text);
      seguro.InsertParameters["sospsdMaior40km"].DefaultValue = Crypto.Encrypt(sospsdMaior40km.Text);
      seguro.InsertParameters["sospsdHoraTrabalhada"].DefaultValue = Crypto.Encrypt(sospsdHoraTrabalhada.Text);
      seguro.InsertParameters["sospsdHoraParada"].DefaultValue = Crypto.Encrypt(sospsdHoraParada.Text);
      seguro.InsertParameters["xtrpsd40km"].DefaultValue = Crypto.Encrypt(xtrpsd40km.Text);
      seguro.InsertParameters["xtrpsdMaior40km"].DefaultValue = Crypto.Encrypt(xtrpsdMaior40km.Text);
      seguro.InsertParameters["xtrpsdHoraTrabalhada"].DefaultValue = Crypto.Encrypt(xtrpsdHoraTrabalhada.Text);
      seguro.InsertParameters["xtrpsdHoraParada"].DefaultValue = Crypto.Encrypt(xtrpsdHoraParada.Text);
      seguro.InsertParameters["scrmec40km"].DefaultValue = Crypto.Encrypt(scrmec40km.Text);
      seguro.InsertParameters["scrmecMais40km"].DefaultValue = Crypto.Encrypt(scrmecMais40km.Text);
      seguro.InsertParameters["kmRodado"].DefaultValue = Crypto.Encrypt(kmRodado.Text);
      seguro.InsertParameters["kmParado"].DefaultValue = Crypto.Encrypt(kmParado.Text);
      seguro.InsertParameters["saidaNacional40km"].DefaultValue = Crypto.Encrypt(saidaNacional40km.Text);
      seguro.InsertParameters["saidaNacionalMais40km"].DefaultValue = Crypto.Encrypt(saidaNacionalMais40km.Text);
      seguro.InsertParameters["saidaImportado40km"].DefaultValue = Crypto.Encrypt(saidaImportado40km.Text);
      seguro.InsertParameters["saidaImportadoMais40km"].DefaultValue = Crypto.Encrypt(saidaImportadoMais40km.Text);
      seguro.InsertParameters["saidaConfeccao40km"].DefaultValue = Crypto.Encrypt(saidaConfeccao40km.Text);
      seguro.InsertParameters["saidaConfeccaoMais40km"].DefaultValue = Crypto.Encrypt(saidaConfeccaoMais40km.Text);
      seguro.InsertParameters["saida40km"].DefaultValue = Crypto.Encrypt(saida40km.Text);
      seguro.InsertParameters["saidaMais40km"].DefaultValue = Crypto.Encrypt(saidaMais40km.Text);
      seguro.InsertParameters["saidaHoraTrabalhada"].DefaultValue = Crypto.Encrypt(saidaHoraTrabalhada.Text);
      seguro.InsertParameters["vigilante40km"].DefaultValue = Crypto.Encrypt(vigilante40km.Text);
      seguro.InsertParameters["vigilanteMais40km"].DefaultValue = Crypto.Encrypt(vigilanteMais40km.Text);
      seguro.InsertParameters["vigilanteHoraTrabalhada"].DefaultValue = Crypto.Encrypt(vigilanteHoraTrabalhada.Text);
      seguro.InsertParameters["endereco"].DefaultValue = Crypto.Encrypt(endereco.Text);
      seguro.InsertParameters["emailRepresentante"].DefaultValue = Crypto.Encrypt(emailRepresentante.Text);
      seguro.InsertParameters["nomeAmigavel"].DefaultValue = Crypto.Encrypt(nomeAmigavel.Text);

      seguro.Insert();
      Response.Redirect("~/app/home.aspx");
    }
}
