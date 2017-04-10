drop table pedidos

create table pedidos(
numero      int        primary key,
data        date,
produto     varchar(30) ,
valor       decimal(10,2),
quantidade  int         ,
cod_cliente int   )


desc pedidos


insert into pedidos values(4, '20171231', 'mamao laranga', 5.2, 9, 3);

select * from pedidos

delete from pedidos WHERE NUMERO = "8"