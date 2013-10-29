insert into role(nome_role,status_role,mostra_tela,data_criacao) values('LOGADO','A','N', now());

insert into perfil_acesso(nome_perfil_acesso) values('ADMINISTRADOR');

insert into perfil_acesso_role(id_perfil_acesso,id_role) values(1,1);

insert into usuario(id_perfil_acesso,nome_usuario,login_usuario,senha_usuario,data_criacao)
values(1,'Rodrigo Almeida','rodrigo.almeida@jfive.com.br', 'rodrigo', now());

