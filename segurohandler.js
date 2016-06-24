

function prequica(camposSeguro) {
  for (var i = 0; i < camposSeguro.length; i++) {
    console.log('<asp:ControlParameter Name="+camposSeguro[i]+" ControlID="+camposSeguro[i]+" Property="Text"/>'
  }
}
