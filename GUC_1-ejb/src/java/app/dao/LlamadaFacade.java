/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.dao;

import app.entity.Llamada;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Naoual Amasri
 */
@Stateless
public class LlamadaFacade extends AbstractFacade<Llamada> implements LlamadaFacadeLocal {
    @PersistenceContext(unitName = "GUC_1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LlamadaFacade() {
        super(Llamada.class);
    }
    
}
