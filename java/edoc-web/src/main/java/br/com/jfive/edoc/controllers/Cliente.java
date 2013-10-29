package br.com.jfive.edoc.controllers;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 18/05/13
 * Time: 01:32
 * To change this template use File | Settings | File Templates.
 */
public class Cliente {

    private String nome;
    private Endereco endereco = new Endereco();

    public final Endereco getEndereco() {
        return endereco;
    }

    public final void setEndereco(final Endereco endereco) {
        this.endereco = endereco;
    }

    public final String getNome() {
        return nome;
    }

    public final void setNome(final String nome) {
        this.nome = nome;
    }
}
