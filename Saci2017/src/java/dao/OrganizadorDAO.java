/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Organizador;

/**
 *
 * @author icaro
 */
public class OrganizadorDAO extends GenericDAO<Organizador, Integer> {

    public OrganizadorDAO() {
        super(Organizador.class);
    } 
}
