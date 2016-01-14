CREATE DATABASE AMARAL_GUINCHOS;

CREATE TABLE ordem_de_servico{
  'id_oe' INT NOT NULL AUTO_INCREMENT,
  'data_abertura_oe' datetime NOT NULL,
  'id_funcionario_abertura' INT NOT NULL,
  'id_seguro' INT NOT NULL,
}

CREATE TABLE cliente{

}

CREATE TABLE funcionarios{
  'id_funcionario' INT NOT NULL AUTO_INCREMENT,
  'nome_funcionario' VARCHAR(20) NOT NULL,
  'categoria_funcionario' INT NOT NULL
  'end_funcionario' VARCHAR(20) NOT NULL,
  'cel_funcionario' int(11) NOT NULL,
  'fixo_funcionario' int(10),
  'id_habilitacao' INT,
  'data_contratacao_funcionario' DATE NOT NULL;
}

#region (Descrição_Funcionarios)
-- Na tabela funcionarios, o item "Categoria funcionario" de tipo
-- inteiro, serve para estabelecer uma hierarquia  onde
-- 1>2>3>4>5, sendo 1 para adm e 5 para funcionario
#endregion

CREATE TABLE habilitacao{
  'id_habilitacao' INT NOT NULL AUTO_INCREMENT,
  'nome-habilitacao' VARCHAR(30) NOT NULL,

}

CREATE TABLE frota{
  'id_veiculo' INT NOT NULL AUTO_INCREMENT,
  'tipo_veiculo' INT NOT NULL,
  ''
}
