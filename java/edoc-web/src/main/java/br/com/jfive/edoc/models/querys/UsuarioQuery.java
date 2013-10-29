package br.com.jfive.edoc.models.querys;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 08/07/13
 * Time: 19:55
 * To change this template use File | Settings | File Templates.
 */
public class UsuarioQuery {

    private String login;

    public UsuarioQuery(String login) {
        this.login = login;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }
}
