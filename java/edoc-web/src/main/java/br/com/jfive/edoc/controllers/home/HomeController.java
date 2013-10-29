package br.com.jfive.edoc.controllers.home;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.jfive.edoc.annotations.Category;


@Resource
@Category("home")
public class HomeController {


    public HomeController() {
    }

    @Path("/app/index")
    public void index(){}


}
