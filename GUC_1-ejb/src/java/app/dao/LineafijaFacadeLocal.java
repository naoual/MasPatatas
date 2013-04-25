/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.dao;

import app.entity.Lineafija;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Naoual Amasri
 */
@Local
public interface LineafijaFacadeLocal {

    void create(Lineafija lineafija);

    void edit(Lineafija lineafija);

    void remove(Lineafija lineafija);

    Lineafija find(Object id);

    List<Lineafija> findAll();

    List<Lineafija> findRange(int[] range);

    int count();
    
}
