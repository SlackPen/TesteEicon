

create database db_eicon;

use db_eicon;

GRANT usage ON *.* TO omar@localhost IDENTIFIED BY 'senha';

  
GRANT usage ON *.* TO omar@'%' IDENTIFIED BY 'senha';

  
GRANT CREATE, DROP, SELECT, INSERT, UPDATE, DELETE ON db_eicon.* TO omar@localhost;

GRANT CREATE, DROP, SELECT, INSERT, UPDATE, DELETE ON db_eicon.* TO omar@'%';




CREATE TABLE TB_Clientes
(
	id_cliente           INTEGER AUTO_INCREMENT,
	nm_cliente           VARCHAR(30) NULL,
	PRIMARY KEY (id_cliente)
);



CREATE TABLE TB_ItensPedido
(
	id_item              INTEGER AUTO_INCREMENT,
	nm_produto           VARCHAR(30) NULL,
	vl_valor             DECIMAL(10,2) NULL,
	nu_qtde              INTEGER NULL,
	id_pedido            INTEGER NOT NULL,
	PRIMARY KEY (id_item)
);



CREATE TABLE TB_Pedidos
(
	id_pedido            INTEGER AUTO_INCREMENT,        
	dt_cadastro          DATE NULL,
	vl_total             DECIMAL(10,2) NULL,
	id_cliente           INTEGER NOT NULL,
	PRIMARY KEY (id_pedido)
);



ALTER TABLE TB_ItensPedido
ADD FOREIGN KEY FK_ItensPedido_Pedidos(id_pedido) REFERENCES TB_Pedidos (id_pedido);



ALTER TABLE TB_Pedidos
ADD FOREIGN KEY FK_Pedidos_Clientes(id_cliente) REFERENCES TB_Clientes (id_cliente);


INSERT INTO TB_Clientes(nm_cliente) values("Vilma");
INSERT INTO TB_Clientes(nm_cliente) values("Dulce - Carol");
INSERT INTO TB_Clientes(nm_cliente) values("Marluci");
INSERT INTO TB_Clientes(nm_cliente) values("Jose");
INSERT INTO TB_Clientes(nm_cliente) values("Rosana");
INSERT INTO TB_Clientes(nm_cliente) values("Adriana");
INSERT INTO TB_Clientes(nm_cliente) values("Dulce - ovo");
INSERT INTO TB_Clientes(nm_cliente) values("Silvana");
INSERT INTO TB_Clientes(nm_cliente) values("FranciscO");
INSERT INTO TB_Clientes(nm_cliente) values("NicO");




