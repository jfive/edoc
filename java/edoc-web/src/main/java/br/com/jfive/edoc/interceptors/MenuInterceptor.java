package br.com.jfive.edoc.interceptors;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.jfive.edoc.annotations.Category;

import javax.servlet.http.HttpServletRequest;


public class MenuInterceptor implements Interceptor {

    private final HttpServletRequest request;

    public MenuInterceptor(HttpServletRequest request) {
        this.request = request;
    }

    public boolean accepts(ResourceMethod method) {
        return true;
    }

    public void intercept(InterceptorStack stack, ResourceMethod method,
                          Object resourceInstance) throws InterceptionException {

//        Utilizado para setar o menu que o usuário está
        Category category = resourceInstance.getClass().getAnnotation(Category.class);
        if(category != null && category.value() != null){
            this.request.setAttribute("menu", category.value());
        }

        stack.next(method, resourceInstance); // continua a execução
    }


}
