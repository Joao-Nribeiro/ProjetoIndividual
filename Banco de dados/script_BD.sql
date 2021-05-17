create database its_just_a_game;

use its_just_a_game;

create table usuario (
idUsuario int primary key auto_increment,
email varchar(45),
senha varchar(45)
);

select * from usuario;

create table Equipe (
idEquipe int primary key auto_increment,
nomeEquipe varchar(40),
vitoria int,
partidas int,
eliminacoes int,
KD decimal(4,2)
);

select * from Equipe;

create table jogadorCamp(
idPlayer int primary key auto_increment,
nomeJogador varchar(40),
email varchar(40),
fkCapitao int,
foreign key (fkCapitao) references jogadorCamp(idPlayer),
fkEquipe int,
foreign key(fkEquipe) references Equipe(idEquipe),
fkUsuario int,
foreign key(fkUsuario) references Usuario(idUsuario)
)auto_increment = 1000;

select * from jogadorCamp;

insert into usuario values (null, 'joao.ribeiro@hotmail.com', '12345');

insert into Equipe values (null, 'os brabo',5, 5, 120, '6.50');

insert into jogadorCamp values (null, 'p3drol_s2', 'pedroBatatao@gmail.com', null, 1, 1),
								(null, 'Eu_mesmoS2', 'joao.ribeiro@hotmail.com', 1000, 1, 1),
								(null, 'ThorGB', 'thor_guevara@outlook.com', 1000, 1, 1);