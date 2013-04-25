/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.dao;

import app.entity.Solicitud;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Naoual Amasri
 */
@Local
public interface SolicitudFacadeLocal {

    void create(Solicitud solicitud);

    void edit(Solicitud solicitud);

    void remove(Solicitud solicitud);

    Solicitud find(Object id);

    List<Solicitud> findAll();

    List<Solicitud> findRange(int[] range);

    int count();
    
}
