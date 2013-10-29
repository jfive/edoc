package br.com.jfive.edoc.models;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 08/07/13
 * Time: 03:04
 * To change this template use File | Settings | File Templates.
 */
public class UsuarioDTO implements Serializable{



    private static final long serialVersionUID = 5194639625652723773L;
    private String email;

    public UsuarioDTO(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}
