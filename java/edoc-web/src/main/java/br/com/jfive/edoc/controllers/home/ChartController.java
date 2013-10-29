package br.com.jfive.edoc.controllers.home;

import br.com.jfive.edoc.annotations.Category;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;


@Resource
@Category("chart")
public class ChartController {


    private final Result result;

    public ChartController(Result pResult) {
        this.result = pResult;
    }

    @Path("/chart")
    public final void load(){
        result.forwardTo("/WEB-INF/jsp/home/chart.jsp");
    }

}
