/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.dao;

import app.entity.Perfilgasto;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Naoual Amasri
 */
@Stateless
public class PerfilgastoFacade extends AbstractFacade<Perfilgasto> implements PerfilgastoFacadeLocal {
    @PersistenceContext(unitName = "GUC_1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PerfilgastoFacade() {
        super(Perfilgasto.class);
    }
    
}
