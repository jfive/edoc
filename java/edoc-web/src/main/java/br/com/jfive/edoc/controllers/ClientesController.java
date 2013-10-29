package br.com.jfive.edoc.controllers;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.view.Results;

import java.util.ArrayList;
import java.util.List;

@Resource
public class ClientesController {

    private List<Cliente> clienteList = new ArrayList<Cliente>();
    private Validator validator;
    private Result result;

    public ClientesController(Result result, Validator validator) {
        this.validator = validator;
        this.result = result;
    }

    public void form() {

    }


    public final void adiciona(final Cliente cliente){

//        validator.checking(new Validations(){{
//            if(that(cliente != null,"cliente","cliente.nulo")){
//                that(cliente.getNome() != null && !cliente.getNome().isEmpty(), "nome","nome.vazio");
//            }
//        }});
//        validator.onErrorUsePageOf(ClientesController.class).form();
//
//        clienteList.add(cliente);
        result.forwardTo(ClientesController.class).json();
    }

    public final List<Cliente> lista() {
        return clienteList;
    }

    public final void json(){
        result.use(Results.json()).withoutRoot().from(clienteList).recursive().serialize();
    }

}
