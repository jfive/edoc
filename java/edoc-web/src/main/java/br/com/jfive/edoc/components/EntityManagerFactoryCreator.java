package br.com.jfive.edoc.components;

import br.com.caelum.vraptor.ioc.ApplicationScoped;
import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@Component
@ApplicationScoped
public class EntityManagerFactoryCreator implements ComponentFactory<EntityManagerFactory> {

    private EntityManagerFactory factory;

    @PostConstruct
    public void create() {
        factory = getEntityManagerFactory();
    }

    public EntityManagerFactory getInstance() {
        return factory;
    }

    @PreDestroy
    public void destroy() {
        factory.close();
    }

    protected EntityManagerFactory getEntityManagerFactory() {
        return Persistence.createEntityManagerFactory("default");
    }
}