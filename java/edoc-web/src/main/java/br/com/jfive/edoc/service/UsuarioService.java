package br.com.jfive.edoc.service;

import br.com.jfive.edoc.models.UsuarioEntity;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 08/07/13
 * Time: 19:58
 * To change this template use File | Settings | File Templates.
 */
public interface UsuarioService {

    UsuarioEntity resetarSenhaUsuario(String login);
}
