SET NAMES 'utf8';

DROP DATABASE IF EXISTs 'amaral_guincho';

CREATE DATABASE amaral_guincho;

USE amaral_guincho;

CREATE TABLE usuario
(
    id_usr INT NOT NULL AUTO_INCREMENT,
    login_usr VARCHAR(50) NOT NULL,
    email_usr CHAR(50) NULL,
    password_urs CHAR(50) NOT NULL,
    type_usr ENUM('adm','staff','lowStaff','usr') NOT NULL,
    nome_usr VARCHAR(50) NOT NULL,
    sx_usr ENUM('M','F') NOT NULL,
    dtnasc_usr DATE NULL,
    cpf_usr CHAR(11) NULL,
    cep_usr CHAR(11) NULL,
    mobile_usr CHAR(12) NOT NULL,

    PRIMARY KEY (id_usr),
    CONSTRAINT uq_cpf UNIQUE (cpf_usr),
    CONSTRAINT uq_mobile UNIQUE (mobile_usr),
    CONSTRAINT uq_email UNIQUE (email_usr),
    CONSTRAINT uq_login UNIQUE (login_usr)
);

CREATE TABLE frota
(
    id_frota INT NOT NULL AUTO_INCREMENT,
    tipo_frota ENUM ('Guincho','Taxi','SOS-Guincho','Pesado'),
    placa_frota CHAR(7) NOT NULL,

    PRIMARY KEY (id_frota),
    CONSTRAINT uq_placa UNIQUE (placa_frota)
);

CREATE TABLE seguro(
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

CREATE TABLE seguro_usr
(
    id_usr INT NOT NULL AUTO_INCREMENT,
    id_seguro INT NOT NULL,

    PRIMARY KEY (id_usr,id_seguro),
    FOREIGN KEY(id_usr) REFERENCES usr (id_usr),
    FOREIGN KEY(id_seguro) REFERENCES seguro (id_seguro)
);

CREATE TABLE habilitacao
(
    id_habilitacao INT NOT NULL AUTO_INCREMENT,
    id_motorista INT NOT NULL,
    nome_habilitacao VARCHAR(45) NOT NULL,
    identidade_habilitacao INT NOT NULL,
    nregistro_habilitacao INT(12) NOT NULL,
    validade_habilitacao DATE NOT NULL,
    primeira_habilitacao DATE NOT NULL,
    local_habilitacao VARCHAR(30) NOT NULL,
    dtemissao_habilitacao DATE(30) NOT NULL,

    PRIMARY KEY (id_habilitacao),
    FOREIGN KEY(id_motorista) REFERENCES usr(id_usr),
    CONSTRAINT uq_nregistro UNIQUE (nregistro_habilitacao),
    CONSTRAINT uq_identidade UNIQUE (identidade_habilitacao)
);

CREATE TABLE veiculo
(
    id_veiculo INT NOT NULL AUTO_INCREMENT,
    id_usr INT NOT NULL,
    marca_veiculo VARCHAR (30) NOT NULL,
    modelo_veiculo VARCHAR (30) NOT NULL,
    ano_veiculo DATE NOT NULL,
    placa_veiculo VARCHAR(7) NOT NULL,
    cor_veiculo VARCHAR(10) NOT NULL,

    PRIMARY KEY (id_veiculo),
    FOREIGN KEY (id_usr) REFERENCES usr(id_usr),
    CONSTRAINT uq_placa UNIQUE (placa_veiculo)
);

CREATE TABLE ordem_de_servico
(
    id_oe INT NOT NULL AUTO_INCREMENT,
    id_seguro INT NOT NULL,
    id_cli INT NOT NULL,
    id_motorista INT NOT NULL,
    funcAbChamado_oe INT NOT NULL,
    cod_oe TEXT NOT NULL,
    dtAbr_oe DATETIME NOT NULL,
    nomeAsstSeguro_oe VARCHAR(100) NOT NULL,
    tpSeguro_oe VARCHAR (30) NOT NULL,
    lcRet_oe VARCHAR(30) NOT NULL,
    lcEnt_oe VARCHAR(30) NOT NULL,
    agendamento_oe DATE NULL,
    nSinistro_oe INT NOT NULL,
    status_oe ENUM('Aberto','Fechado','Recusado','Outro') NOT NULL,

    PRIMARY KEY (id_oe),
    FOREIGN KEY (id_seguro) REFERENCES seguro (id_seguro),
    FOREIGN KEY (id_cli) REFERENCES usr (id_usr),
    FOREIGN KEY (funcAbChamado_oe) REFERENCES usr (id_usr),
    FOREIGN KEY (id_motorista) REFERENCES usr (id_usr),
    CONSTRAINT uq_cod UNIQUE (cod_oe)
);

CREATE TABLE viagem
(
    id_viagem INT NOT NULL AUTO_INCREMENT,
    id_motorista INT NOT NULL,
    id_frota INT NOT NULL,
    id_oe INT NOT NULL,
    kmsaida_viagem VARCHAR(30) NOT NULL,
    kmchegada_viagem VARCHAR(30) NOT NULL,
    hrTrab_viagem VARCHAR(30) NOT NULL,

    PRIMARY KEY (id_viagem),
    FOREIGN KEY (id_motorista) REFERENCES usr (id_usr),
    FOREIGN KEY (id_frota) REFERENCES frota (id_frota),
    FOREIGN KEY (id_oe) REFERENCES ordem_de_servico (id_oe)
);
