package br.com.jfive.edoc.service.beans;

import br.com.caelum.vraptor.ioc.Component;
import br.com.jfive.edoc.models.UsuarioEntity;
import br.com.jfive.edoc.models.querys.UsuarioQuery;
import br.com.jfive.edoc.repositories.usuario.UsuarioRepository;
import br.com.jfive.edoc.service.UsuarioService;

@Component
public class UsuarioServiceBean implements UsuarioService {


    private UsuarioRepository repository;

    public UsuarioServiceBean(UsuarioRepository repository) {
        this.repository = repository;
    }


    @Override
    public UsuarioEntity resetarSenhaUsuario(String login) {
        UsuarioEntity usuarioEntity = repository.buscarUsuarioPorLogin(new UsuarioQuery(login));

        if(usuarioEntity != null){
            usuarioEntity.setSenha("gmud123");
            repository.beginTransaction();
            repository.update(usuarioEntity);
            repository.commit();
        }

        return usuarioEntity;
    }



}
