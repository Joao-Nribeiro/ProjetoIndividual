create database its_just_a_game;

use its_just_a_game;

create table usuario (
idUsuario int primary key auto_increment,
email varchar (40),
username varchar(40),
senha varchar(40)
);

select * from usuario;

create table players(
idPlayer int primary key auto_increment,
nickname varchar(45),
plataforma varchar(45),
fkCapitao int,
foreign key (fkCapitao) references players(idplayer),
fkUsuario int,
foreign key (fkUsuario) references usuario(idusuario),
fkTimeCamp int,
foreign key (fkTimeCamp) references timeCamp(idTimeCamp)
) auto_increment = 1000;

select * from players;

create table timeCamp (
idTimeCamp int primary key,
nomeTime varchar(45),
kdTime decimal(4,2)
);

select * from timeCamp;

create table campeonatos(
idCampeonato int primary key auto_increment,
jogo varchar(45),
tipo varchar(45),
plataformaCamp varchar(45),
modo varchar(45)
);

select * from campeonatos;

create table TimeCampCampeonatos(
fkTime int,
foreign key (fkTime) references timeCamp(idTimeCamp),
fkCampeonato int,
foreign key (fkCampeonato) references campeonatos(idCampeonato),
primary key(fkTime, fkCampeonato),
dataCamp date,
patrocinador varchar(45),
premio decimal(6,2)
);

select * from TimeCampCampeonatos;

drop database its_just_a_game;