SET NAMES 'utf8';

DROP DATABASE IF EXISTs 'amaral_guincho';

CREATE DATABASE amaral_guincho;

USE amaral_guincho;

CREATE TABLE cliente
(

    id_cli INT NOT NULL AUTO_INCREMENT,
    nome_cli VARCHAR(20) NOT NULL,
    sobrenome_cli VARCHAR (50) NOT NULL,
    cpf_cli CHAR(11) NOT NULL,
    email_cli CHAR(50) NULL,
    sx_cli CHAR(1) NOT NULL,
    dtnasc_cli DATE NOT NULL,
    cep_cli CHAR(11) NOT NULL,
    cid_cli CHAR(11) NOT NULL,
    us_cli CHAR(2) NOT NULL,
    telefone_cli CHAR(12) NOT NULL,
    
    PRIMARY KEY (id_cli),
    CONSTRAINT ch_sx CHECK (sx_cli = "M","F"),
    CONSTRAINT uq_cep UNIQUE (cep_cli),
    CONSTRAINT uq_cpf UNIQUE (cpf_cli),
    CONSTRAINT uq_telefone UNIQUE (telefone_cli),
    CONSTRAINT uq_email UNIQUE (email_cli)
);

CREATE TABLE funcionario
(
    id_func INT NOT NULL AUTO_INCREMENT,
    nome_func VARCHAR(20) NOT NULL,
    sobrenome_func VARCHAR(30) NOT NULL,
    dtnasc_func DATE NOT NULL,
    cep_func CHAR(8) NOT NULL,
    cpf_func CHAR(11) NOT NULL,
    dtcont_func DATE NOT NULL,
    sx_func CHAR(1) NOT NULL,
    tel_func CHAR(11) NOT NULL,
    email_func VARCHAR(30) NOT NULL,
    us_func CHAR(2) NOT NULL,
    cid_func VARCHAR(20) NOT NULL,
    
    PRIMARY KEY (id_func),
    CONSTRAINT uq_cep UNIQUE (cep_func),
    CONSTRAINT uq_cpf UNIQUE (cpf_func),
    CONSTRAINT uq_email UNIQUE (email_func),
    CONSTRAINT uq_tel UNIQUE (tel_func),
    CONSTRAINT ch_sx CHECK (sx_func)
);

CREATE TABLE adm
(
    id_func INT NOT NULL AUTO_INCREMENT,
    login_adm VARCHAR(20) NOT NULL,
    senha_adm VARCHAR(20) NOT NULL,
    
    PRIMARY KEY (id_func),
    FOREIGN KEY (id_func) REFERENCES funcionario (id_func),
    CONSTRAINT uq_log UNIQUE (login_adm)
);

CREATE TABLE seguro
(
  id_seguro  TINYINT NOT NULL AUTO_INCREMENT,
              # 8-bit unsigned int [0, 255]
  nome_seguro  CHAR(20) NOT NULL,
  cod_prestador  VARCHAR(30) NOT NULL,
  cep  CHAR(11) NOT NULL,
  cgc  INT NOT NULL,
 #LISTA DE TELEFONES
  setor_cadastro_tel CHAR(11) NOT NULL,
  setor_pagto_tel CHAR(11) NOT NULL,
  fechamento_servicos_tel CHAR(11) NOT NULL,
  casos_andamento_tel CHAR(11) NOT NULL,
 #Cordenador
  cordenador_regiao VARCHAR(45) NOT NULL,
 #Tabela de preco Reboque
 #Passeio
  passeio_40km FLOAT NOT NULL,
  passeio_maior40km FLOAT NOT NULL,
  passeio_hora_trabalhada FLOAT NOT NULL,
  passeio_hora_parada FLOAT NOT NULL,
 #Ultilitario Lanca leve
  ull_40km  FLOAT NOT NULL,
  ull_maior40km  FLOAT NOT NULL,
  ull_hora_trabalhada  FLOAT NOT NULL,
  ull_hora_parada  FLOAT NOT NULL,
 #Moto
  moto_40km  FLOAT NOT NULL,
  moto_maior40km  FLOAT NOT NULL,
  moto_hora_trabalhada  FLOAT NOT NULL,
  moto_hora_parada  FLOAT NOT NULL,
 #Garagem
  garagem_40km  FLOAT NOT NULL,
  garagem_maior40km  FLOAT NOT NULL,
  garagem_hora_trabalhada  FLOAT NOT NULL,
  garagem_hora_parada  FLOAT NOT NULL,
 #Rodas Extras
  re_40km  FLOAT NOT NULL,
  re_maior40km  FLOAT NOT NULL,
  re_hora_trabalhada  FLOAT NOT NULL,
  re_hora_parada  FLOAT NOT NULL,
 #Patins
  patins_40km  FLOAT NOT NULL,
  patins_maior40km  FLOAT NOT NULL,
  patins_hora_trabalhada  FLOAT NOT NULL,
  patins_hora_parada  FLOAT NOT NULL,
 #cam/leve
  cl_40km  FLOAT NOT NULL,
  cl_maior40km  FLOAT NOT NULL,
  cl_hora_trabalhada  FLOAT NOT NULL,
  cl_hora_parada  FLOAT NOT NULL,
 #SOS Pesado
  sospsd_40km  FLOAT NOT NULL,
  sospsd_maior40km  FLOAT NOT NULL,
  sospsd_hora_trabalhada  FLOAT NOT NULL,
  sospsd_hora_parada  FLOAT NOT NULL,
 #Extra Pesado
  xtrpsd_40km  FLOAT NOT NULL,
  xtrpsd_maior40km  FLOAT NOT NULL,
  xtrpsd_hora_trabalhada  FLOAT NOT NULL,
  xtrpsd_hora_parada  FLOAT NOT NULL,
 #Socorro Mecanico
  scrmec_40km  float NOT NULL,
  scrmec_mais40km  float NOT NULL,
 #Taxi
  km_rodado  float NOT NULL,
  km_parado  float NOT NULL,
 #Abertura Chaveiro
  saida_nacional_40km  FLOAT NOT NULL,
  saida_nacional_mais40km  FLOAT NOT NULL,
  saida_importado_40km  FLOAT NOT NULL,
  saida_importado_mais40km  FLOAT NOT NULL,
  saida_confeccao_40km  FLOAT NOT NULL,
  saida_confeccao_mais40km  FLOAT NOT NULL,
 #Residencia
  saida_40km  FLOAT NOT NULL,
  saida_mais40km  FLOAT NOT NULL,
  saida_hora_trabalhada FLOAT NOT NULL,
 #Vigilante
  vigilante_40km  FLOAT NOT NULL,
  vigilante_mais40km  FLOAT NOT NULL,
  vigilante_hora_trabalhada FLOAT NOT NULL,

  PRIMARY KEY (id_seguro)
);

CREATE TABLE motorista
(
    id_mot INT NOT NULL AUTO_INCREMENT,
    nome_mot VARCHAR(20) NOT NULL,
    sobrenome_mot VARCHAR(30) NOT NULL,
    dtnasc_mot DATE NOT NULL,
    cep_mot CHAR(8) NOT NULL,
    dtcont_mot DATE NOT NULL,
    sx_mot CHAR(1) NOT NULL,
    tel_mot INT NOT NULL,
    email_mot VARCHAR(30) NOT NULL,
    cid_mot VARCHAR(20) NOT NULL,
    
    PRIMARY KEY (id_mot),
    CONSTRAINT ch_sx CHECK (sx_mot = "M","F"),
    CONSTRAINT uq_cep UNIQUE (cep_mot),
    CONSTRAINT uq_email UNIQUE (email_mot)    
);

CREATE TABLE login
(
    id_login INT NOT NULL AUTO_INCREMENT,
    nome_log VARCHAR(20) NOT NULL,
    senha_log VARCHAR(20) NOT NULL,
    classe_log VARCHAR(20) NOT NULL;
    
    PRIMARY KEY (id_login),
    CONSTRAINT uq_log UNIQUE(nome_log)
);

CREATE TABLE frota
(
    id_frota INT NOT NULL AUTO_INCREMENT,
    nome_frota VARCHAR(30) NULL,
    modelo_frota VARCHAR(30) NULL,
    ano_frota DATE NULL,
    fabricante_frota VARCHAR(30) NULL,
    tipo_frota VARCHAR(20) NOT NULL,
    placa_frota CHAR(7) NOT NULL,
    cor_frota VARCHAR(20) NULL,
    
    PRIMARY KEY (id_frota),
    CONSTRAINT uq_placa UNIQUE (placa_frota)
);

CREATE TABLE habilitacao
(
    id_hab INT NOT NULL AUTO_INCREMENT,
    id_mot INT NOT NULL,
    nome_hab VARCHAR(45) NOT NULL,
    id_hab INT NOT NULL,
    cpf_hab CHAR(11) NOT NULL,
    nregistro_hab INT(12) NOT NULL,
    validade_hab DATE NOT NULL,
    local_hab VARCHAR(30) NOT NULL,
    dtemissao_hab DATE(30) NOT NULL,
    
    PRIMARY KEY (id_hab),
    FOREIGN KEY(id_mot) REFERENCES motorista(id_mot),
    CONSTRAINT uq_cpf UNIQUE (cpf_hab),
    CONSTRAINT uq_nregistro UNIQUE (nregistro_hab),
    CONSTRAINT uq_id UNIQUE (id_hab)
);

CREATE TABLE veiculo
(
    id_veiculo INT NOT NULL AUTO_INCREMENT,
    id_cli INT NOT NULL,
    modelo_veiculo VARCHAR (30) NOT NULL,
    ano_veiculo DATE NOT NULL,
    fabricante_veiculo VARCHAR(20) NOT NULL,
    placa_veiculo VARCHAR(7) NOT NULL,
    cor_veiculo VARCHAR(10) NOT NULL,

    PRIMARY KEY (id_veiculo),
    FOREIGN KEY (id_cli) REFERENCES cliente(id_cli),
    CONSTRAINT uq_placa UNIQUE (placa_veiculo)    
);

CREATE TABLE sinistro
(
    id_sinistro INT NOT NULL AUTO_INCREMENT,
    id_cli INT NOT NULL,
    id_seguro INT NULL,
    tipo_sin VARCHAR(20) NOT NULL,
    fabricante_sin VARCHAR(20) NOT NULL
);

CREATE TABLE servico
(
    id_servico INT NOT NULL AUTO_INCREMENT,
    id_sinistro INT NOT NULL,
    id_viagem INT NOT NULL,
    id_frota INT NOT NULL,
    tipo_servico VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (id_servico),
    FOREIGN KEY (id_sinistro) REFERENCES sinistro(id_sinistro),    
    FOREIGN KEY (id_viagem) REFERENCES viagem(id_viagem),    
    FOREIGN KEY (id_frota) REFERENCES frota(id_frota),
);

CREATE TABLE viagem
(
    id_viagem INT NOT NULL AUTO_INCREMENT,
    id_mot INT NOT NULL,
    id_frota INT NOT NULL,
    id_cli INT NOT NULL,
    locals_viagem VARCHAR(20) NOT NULL,
    localc_viagem VARCHAR(20) NOT NULL
    
    PRIMARY KEY (id_viagem),
    FOREIGN KEY (id_mot) REFERENCES motorista (id_mot),
    FOREIGN KEY (id_frota) REFERENCES frota (id_frota),
    FOREIGN KEY (id_cli) REFERENCES cliente (id_cli)
);

CREATE TABLE viagem_serviço
(
    id_viagem INT NOT NULL AUTO_INCREMENT,
    id_servico INT NOT NULL,
    
    PRIMARY KEY (id_viagem, id_servico),
    FOREIGN KEY (id_viagem) REFERENCES viagem(id_viagem),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
    
);



CREATE TABLE ordem_de_servico
(
    id_oe INT NOT NULL AUTO_INCREMENT,
    id_seguro INT NOT NULL,
    id_func INT NOT NULL,
    id_veiculo INT NOT NULL,
    dtab_oe DATETIME NOT NULL,
    status_oe VARCHAR(20) NOT NULL,
    agendamento_oe VARCHAR(100) NULL,
    
    PRIMARY KEY (id_oe),
    FOREIGN KEY (id_seguro) REFERENCES seguro (id_seguro),
    FOREIGN KEY (id_func) REFERENCES func (id_func),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo (id_veiculo)
);