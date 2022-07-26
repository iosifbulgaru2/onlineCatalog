package com.stefanini.onlinecatalog;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaService {
    private static JpaService instance;
    private EntityManagerFactory entityManagerFactory;

    private JpaService() {
        entityManagerFactory = Persistence.createEntityManagerFactory("persistenceUnitName");
    }

    public static synchronized JpaService getInstance() {
        return instance == null ? instance = new JpaService() : instance;
    }

    public void shutDown() {
        if (entityManagerFactory != null) {
            entityManagerFactory.close();
        }
    }

    public EntityManagerFactory getEntityManagerFactory() {
        return entityManagerFactory;
    }
}
