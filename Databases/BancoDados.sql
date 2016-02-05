SET NAMES 'utf8';

DROP DATABASE IF EXISTs `amaral_guincho`;

# CREATE DATABASE IF NOT EXISTS `amaral_guincho`
# DEFAULT CHARACTER SET utf8 COLLATE uft8_unicode_ci;
CREATE DATABASE `amaral_guincho`;

USE `amaral_guincho`;
CREATE TABLE usr(
  id_usr INT NOT NULL AUTO_INCREMENT,
  login_usr VARCHAR(30) NOT NULL,
  email_usr CHAR(50) NULL,
  pwd_usr CHAR(50) NOT NULL,
  type_usr ENUM('adm','staff','lowStaff','usr') NOT NULL,
  nome_usr VARCHAR(50) NOT NULL,
  sx_usr ENUM('M','F') NOT NULL,
  birth_usr DATE NULL,
  cpf_usr CHAR(11) NULL,
  cep_usr CHAR(11) NULL,
  mobile_usr CHAR(12) NOT NULL,

  PRIMARY KEY (id_usr)
);

CREATE TABLE frota(
   id_frota TINYINT NOT NULL AUTO_INCREMENT,
                      # 8-bit unsigned int [0, 255]
 #(Tipo veiculo)
  tipo ENUM('Guincho','Taxi','SOS-Guincho','Pesado'),

 #(Fim tipo veiculo)
   placa  CHAR(7) NOT NULL,

  PRIMARY KEY (id_frota),
  UNIQUE KEY (placa)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE seguro_cli(
  id_cli INT NOT NULL AUTO_INCREMENT,
  id_usr INT NOT NULL,
  id_seguro TINYINT NOT NULL,
  tipo_seguro VARCHAR(20) NOT NULL,
  assistente VARCHAR(20) NOT NULL,

  PRIMARY KEY(id_cli),

  FOREIGN KEY(id_usr)
          REFERENCES usr (id_usr),

  FOREIGN KEY(id_seguro)
          REFERENCES seguro (id_seguro)
);

CREATE TABLE habilitacao(
   id_habilitacao  SMALLINT NOT NULL AUTO_INCREMENT,
   id_motorista INT NOT NULL,
   nome_habilitacao  VARCHAR(45) NOT NULL,
   identidade  INT NOT NULL,
   numero_registro  INT(12) NOT NULL,
   validade  DATE NOT NULL,
   primeira_habilitacao  DATE NOT NULL,
   local_gerado  VARCHAR(30) NOT NULL,
   emissao  DATE NOT NULL,

  PRIMARY KEY (id_habilitacao),

  FOREIGN KEY(id_motorista)
          REFERENCES usr(id_usr)
);

CREATE TABLE veiculo(
   id_veiculo  INT NOT NULL AUTO_INCREMENT,
   id_usr INT NOT NULL,
  #marca_veiculo  VARCHAR(30) NOT NULL,
   modelo_veiculo  VARCHAR(30) NOT NULL,
  #ano_veiculo  DATE NOT NULL,
   placa_veiculo  VARCHAR(7) NOT NULL,
   cor_veiculo  VARCHAR(10) NOT NULL,

  PRIMARY KEY (id_veiculo),
  FOREIGN KEY (id_usr)
    REFERENCES usr (id_usr)
);

CREATE TABLE ordem_de_servico(
   id_oe  INT NOT NULL AUTO_INCREMENT,
   data_abertura_oe  TIMESTAMP NOT NULL,
   nome_ab_chamado INT NOT NULL,
   id_seguro TINYINT NOT NULL,
   nome_assistente_seguro VARCHAR(30) NOT NULL,
   tipo_seguro VARCHAR(30) NOT NULL,
   id_cliente INT NOT NULL,
   local_retirada VARCHAR(30) NOT NULL,
   agendamento DATE NULL,
   numero_sinistro INT NOT NULL,
   local_entrega VARCHAR(30) NOT NULL,
   id_motorista INT NOT NULL,
   status ENUM('Aberto','Fechado','Recusado','Outro') NOT NULL,


  PRIMARY KEY (id_oe),
  FOREIGN KEY (id_seguro)
    REFERENCES seguro (id_seguro),

  FOREIGN KEY(nome_ab_chamado)
      REFERENCES usr (id_usr),

  FOREIGN KEY (id_cliente)
    REFERENCES usr (id_usr),
  #Motorista
  FOREIGN KEY (id_motorista)
    REFERENCES usr (id_usr)
);

CREATE TABLE viagem(
  id_viagem INT NOT NULL AUTO_INCREMENT,
  id_motorista INT NOT NULL,
  id_frota TINYINT NOT NULL,
  id_oe INT NOT NULL,
  kmsaida VARCHAR(30) NOT NULL,
  kmchegada VARCHAR(30) NOT NULL,
  horatrab VARCHAR(30) NOT NULL,

   PRIMARY KEY(id_viagem),

  FOREIGN KEY (id_motorista)
    REFERENCES usr (id_usr),

  FOREIGN KEY (id_frota)
    REFERENCES frota (id_frota),

  FOREIGN KEY (id_oe)
    REFERENCES ordem_de_servico (id_oe)
);

CREATE TABLE session(
   id_session INT NOT NULL AUTO_INCREMENT,
   id_funcionario INT NOT NULL,
   data_session TIMESTAMP NOT NULL,
   id_oe INT NOT NULL,

  PRIMARY KEY (id_session),
  FOREIGN KEY (id_funcionario)
    REFERENCES usr (id_usr),
  FOREIGN KEY (id_oe)
    REFERENCES ordem_de_servico (id_oe)
);
