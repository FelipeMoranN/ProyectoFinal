/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sistemas.Modelo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JESSICA
 */
public class Usuario {
    
    private int idUsuario;
    private String usuario;
    private String clave;


    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Usuario(String usuario, String clave) {
        this.usuario = usuario;
        this.clave = clave;
  
    }

    public Usuario() {
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

   

 public static Usuario cargarUsuario(ResultSet rs) throws SQLException{
		Usuario usuario = new Usuario();
                usuario.setIdUsuario(rs.getInt("idusuario"));
		usuario.setUsuario(rs.getString("usuario"));
		usuario.setClave(rs.getString("password"));
             
		return usuario;
	}
   

   
    
    
}
