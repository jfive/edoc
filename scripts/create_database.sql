create table role(
    id_role int auto_increment primary key not null,
    nome_role varchar(200) not null,
    status_role char(1) not null,
    mostra_tela char(1) default 'S',
    data_criacao datetime,
    data_atualizacao datetime,
    id_usuario_criacao int,
    id_usuario_atualiacao int
);

create table perfil_acesso(
    id_perfil_acesso int auto_increment primary key not null,
    nome_perfil_acesso varchar(200)
); 

create table perfil_acesso_role(
    id_perfil_acesso int,
    id_role int,
    constraint foreign key (id_perfil_acesso) references perfil_acesso(id_perfil_acesso),
    constraint foreign key (id_role) references role(id_role)
);

create table usuario(
    id_usuario int auto_increment primary key not null,
    id_perfil_acesso int,    
    nome_usuario varchar(200),
    login_usuario varchar(200),
    senha_usuario varchar(200), 
    data_criacao datetime,
    data_atualizacao datetime,
    id_usuario_criacao int,
    id_usuario_atualiacao int,
    constraint foreign key (id_perfil_acesso) references perfil_acesso(id_perfil_acesso)
);

