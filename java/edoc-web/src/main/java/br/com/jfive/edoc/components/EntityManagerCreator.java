package br.com.jfive.edoc.components;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;
import br.com.caelum.vraptor.ioc.RequestScoped;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

@Component
@RequestScoped
public class EntityManagerCreator implements ComponentFactory<EntityManager> {

    private final EntityManagerFactory factory;
    private EntityManager entityManager;

    public EntityManagerCreator(EntityManagerFactory factory) {
        this.factory = factory;
    }

    @PostConstruct
    public void create() {
        entityManager = factory.createEntityManager();
    }

    public EntityManager getInstance() {
        return entityManager;
    }

    @PreDestroy
    public void destroy() {
        entityManager.close();
    }

}


