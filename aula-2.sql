-- ========== Acesso ao banco de dados ===================
-- Caso tenha instalado a partir do docker-compose utilize as seguintes credenciais
-- Host: localhost
-- Authentication: SQL Server Authentication 
-- Port: 1433
-- Username: sa
-- Password: Infnet@123



-- =================== Criando estrutura ============================
--Rode linha por linha, se estiver usando dbeaver selecione o comando e uutilize CTRL + Enter

-- Rode a linha abaixo primeiro
create database ToDoDb;

-- Rode a linha abaixo em segundo
use ToDoDb


-- Rode a linha abaixo para criar tabela
create table Items(
	Id uniqueidentifier not null primary key,
	Description varchar(256) not null,
	Done bit not null,
	CreatedAt Datetime not null
);

-- =================== Inserindo registros iniciais ============================
-- Rode as duas linhas abaixo
insert into Items values ('28a32095-6363-4b65-8668-a9035e6ef7a1', 'Aprender principios .NET', 0, GetDate());
insert into Items values ('4380393a-67e1-44b7-99a1-fbb2ce969221', 'Entrar na aula', 1, GetDate());




