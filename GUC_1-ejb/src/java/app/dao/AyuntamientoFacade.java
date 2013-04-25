/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.dao;

import app.entity.Ayuntamiento;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Naoual Amasri
 */
@Stateless
public class AyuntamientoFacade extends AbstractFacade<Ayuntamiento> implements AyuntamientoFacadeLocal {
    @PersistenceContext(unitName = "GUC_1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AyuntamientoFacade() {
        super(Ayuntamiento.class);
    }
    
}
