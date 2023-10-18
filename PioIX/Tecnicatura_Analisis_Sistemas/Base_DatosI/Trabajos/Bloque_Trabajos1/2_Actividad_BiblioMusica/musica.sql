create table musica(
  id int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(30),
  precio int unsigned,
  primary key(id)
 );

insert into musica (titulo,autor,precio)
  values('Hysteria','Def Leppard',15);

insert into musica (titulo,autor,precio)
  values('Dulce Pecado','Jesee Uribe',22);

insert into musica (titulo,autor,precio)
  values('Persiana Americana','Soda Estereo',40);

insert into musica (titulo,autor,precio)
  values('Home Sweet Home','Mötley Crüe',200);

insert into musica (titulo,autor,precio)
  values('El Ritual del Banana','Los Pericos',100);

insert into musica (titulo,autor,precio)
  values('Somebody to love', 'Queen',80);

insert into musica (titulo,autor,precio)
  values('Pour Some Sugar on Me','Def Leppard',45);

insert into musica (titulo,autor,precio)
  values('Como si Nada','Jesee Uribe',23);

insert into musica (titulo,autor,precio)
  values('The Dirt','Mötley Crüe',18);
