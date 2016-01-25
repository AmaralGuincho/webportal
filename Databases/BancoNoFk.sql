#Banco de Dados s/ FK
DROP DATABASE amaral_guincho;

CREATE DATABASE amaral_guincho;

USE amaral_guincho;

CREATE TABLE user(
  id_user INT NOT NULL AUTO_INCREMENT,
  login_user VARCHAR(30) NOT NULL,
  password_user VARCHAR(30) NOT NULL,
  id_funcionario INT NOT NULL,
  id_cliente INT NOT NULL,

  PRIMARY KEY (id_user)
);

CREATE TABLE session(
   id_session INT NOT NULL AUTO_INCREMENT,
   id_funcionario INT NOT NULL,
   data_session datetime NOT NULL,
   id_oe INT NOT NULL,

  PRIMARY KEY (id_session)
);

CREATE TABLE ordem_de_servico(
   id_oe  INT NOT NULL AUTO_INCREMENT,
   data_abertura_oe  datetime NOT NULL,
   id_seguro  INT NOT NULL,
   nome_ab_chamado VARCHAR (30) NOT NULL,
   nome_assistente_seguro  VARCHAR(30) NOT NULL,
   tipo_seguro  VARCHAR(30) NOT NULL,
   id_cliente  INT NOT NULL,
   local_retirada  VARCHAR(30) NOT NULL,
   agendamento  DATE NOT NULL,
   numero_sinistro  INT NOT NULL,
   local_entrega  VARCHAR(30) NOT NULL,
  #--MOTORISTA
   id_funcionario  INT NOT NULL,

  PRIMARY KEY (id_oe)
);

CREATE TABLE cliente(
   id_cliente  INT NOT NULL AUTO_INCREMENT,
   id_seguro  INT NOT NULL,
   nome_cliente  VARCHAR(30) NOT NULL,
   rg_cliente  INT NOT NULL,
   cpf_cliente  INT NOT NULL,
   end_cliente  VARCHAR(30) NOT NULL,

  PRIMARY KEY (id_cliente),
  CONSTRAINT UNIQUE (cpf_cliente)
);

CREATE TABLE veiculo(
   id_veiculo  INT NOT NULL AUTO_INCREMENT,
   id_cliente INT NOT NULL,
   marca_veiculo  VARCHAR(30) NOT NULL,
   modelo_veiculo  VARCHAR(30) NOT NULL,
   ano_veiculo  DATE NOT NULL,
   placa_veiculo  VARCHAR(6) NOT NULL,
   cor_veiculo  VARCHAR(10) NOT NULL,

  PRIMARY KEY (id_veiculo)
);

CREATE TABLE funcionario(
   id_funcionario  INT NOT NULL AUTO_INCREMENT,
   nome_funcionario  VARCHAR(20) NOT NULL,
   categoria_funcionario  INT NOT NULL,
   end_funcionario  VARCHAR(20) NOT NULL,
   cel_funcionario  INT(11) NOT NULL,
   fixo_funcionario  INT(10) NOT NULL,
   data_contratacao_funcionario  DATE NOT NULL,

  PRIMARY KEY (id_funcionario)
);

#region (Descrição_Funcionarios)
#-- Na tabela funcionarios, o item "Categoria funcionario" de tipo
#-- inteiro, serve para estabelecer uma hierarquia  onde
#-- 1>2>3>4>5, sendo 1 para adm e 5 para funcionario
#endregion

CREATE TABLE habilitacao(
   id_habilitacao  INT NOT NULL AUTO_INCREMENT,
   id_funcionario  INT NOT NULL,
   nome_habilitacao  VARCHAR(30) NOT NULL,
   identidade  INT NOT NULL,
   numero_registro  INT(12) NOT NULL,
   validade  DATE NOT NULL,
   primeira_habilitacao  DATE NOT NULL,
   local_gerado  VARCHAR(30) NOT NULL,
   emissao  DATE NOT NULL,

  PRIMARY KEY (id_habilitacao)
);

CREATE TABLE frota(
   id_veiculo  INT NOT NULL AUTO_INCREMENT,
#-- (Tipo veiculo)
   tipo_guincho  BOOLEAN NOT NULL,
   tipo_taxi  BOOLEAN NOT NULL,
   tipo_sosguincho  BOOLEAN NOT NULL,
   tipo_pesado  BOOLEAN NOT NULL,
#--(Fim tipo veiculo)
   placa  INT(6) NOT NULL,

  PRIMARY KEY (id_veiculo)
);

CREATE TABLE seguro(
  id_seguro  INT NOT NULL AUTO_INCREMENT,
  nome_seguro  INT NOT NULL,
  cod_prestador  VARCHAR(30) NOT NULL,
  cep  INT NOT NULL,
  cgc  INT NOT NULL,
 #--LISTA DE TELEFONES
  setor_cadastro_tel  INT NOT NULL,
  setor_pagto_tel  INT NOT NULL,
  fechamento_servicos_tel  INT NOT NULL,
  casos_andamento_tel  INT NOT NULL,
 #--Cordenador
  cordenador_regiao  INT NOT NULL,
 #--Tabela de preco Reboque
 #--Passeio
  passeio_40km  FLOAT NOT NULL,
  passeio_maior40km  FLOAT NOT NULL,
  passeio_hora_trabalhada  FLOAT NOT NULL,
  passeio_hora_parada  FLOAT NOT NULL,
 #--Ultilitario Lanca leve
  ull_40km  FLOAT NOT NULL,
  ull_maior40km  FLOAT NOT NULL,
  ull_hora_trabalhada  FLOAT NOT NULL,
  ull_hora_parada  FLOAT NOT NULL,
 #--Moto
  moto_40km  FLOAT NOT NULL,
  moto_maior40km  FLOAT NOT NULL,
  moto_hora_trabalhada  FLOAT NOT NULL,
  moto_hora_parada  FLOAT NOT NULL,
 #--Garagem
  garagem_40km  FLOAT NOT NULL,
  garagem_maior40km  FLOAT NOT NULL,
  garagem_hora_trabalhada  FLOAT NOT NULL,
  garagem_hora_parada  FLOAT NOT NULL,
 #--Rodas Extras
  re_40km  FLOAT NOT NULL,
  re_maior40km  FLOAT NOT NULL,
  re_hora_trabalhada  FLOAT NOT NULL,
  re_hora_parada  FLOAT NOT NULL,
 #--Patins
  patins_40km  FLOAT NOT NULL,
  patins_maior40km  FLOAT NOT NULL,
  patins_hora_trabalhada  FLOAT NOT NULL,
  patins_hora_parada  FLOAT NOT NULL,
 #--cam/leve
  cl_40km  FLOAT NOT NULL,
  cl_maior40km  FLOAT NOT NULL,
  cl_hora_trabalhada  FLOAT NOT NULL,
  cl_hora_parada  FLOAT NOT NULL,
 #--SOS Pesado
  sospsd_40km  FLOAT NOT NULL,
  sospsd_maior40km  FLOAT NOT NULL,
  sospsd_hora_trabalhada  FLOAT NOT NULL,
  sospsd_hora_parada  FLOAT NOT NULL,
 #--Extra Pesado
  xtrpsd_40km  FLOAT NOT NULL,
  xtrpsd_maior40km  FLOAT NOT NULL,
  xtrpsd_hora_trabalhada  FLOAT NOT NULL,
  xtrpsd_hora_parada  FLOAT NOT NULL,
 #--Socorro Mecanico
  scrmec_40km  INT NOT NULL,
  scrmec_mais40km  INT NOT NULL,
 #--Taxi
  km_rodado  INT NOT NULL,
  km_parado  INT NOT NULL,
 #--Abertura Chaveiro
  saida_nacional_40km  INT NOT NULL,
  saida_nacional_mais40km  INT NOT NULL,
  saida_importado_40km  INT NOT NULL,
  saida_importado_mais40km  INT NOT NULL,
  saida_confeccao_40km  INT NOT NULL,
  saida_confeccao_mais40km  INT NOT NULL,
 #--Residencia
  saida_40km  INT NOT NULL,
  saida_mais40km  INT NOT NULL,
  saida_hora_trabalhada INT NOT NULL,
 #--Vigilante
  vigilante_40km  INT NOT NULL,
  vigilante_mais40km  INT NOT NULL,
  vigilante_hora_trabalhada INT NOT NULL,

  PRIMARY KEY (id_seguro)
);
