package br.com.jfive.edoc.controllers;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 18/05/13
 * Time: 02:31
 * To change this template use File | Settings | File Templates.
 */
public class Endereco {

    private String rua = "Rua 1 ";
    private String estado = "São Paulo";

    public final String getRua() {
        return rua;
    }

    public final void setRua(String rua) {
        this.rua = rua;
    }

    public final String getEstado() {
        return estado;
    }

    public final void setEstado(String estado) {
        this.estado = estado;
    }
}
