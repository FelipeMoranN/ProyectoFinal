/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sistemas.Modelo;

import com.sistemas.Config.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author JESSICA
 */
public class UsuarioDAO {
 
    int cap;
    Connection cx;
    Statement st;
    ResultSet rs;
    String sql;
    public int validarUsuario(String usu, String pass){
        sql="SELECT *FROM Usuario WHERE usuario='"+usu
                +"' AND pass='"+pass+"'";
        try {
            cx = Conexion.GetConexion();
            st = cx.createStatement();
            rs = st.executeQuery(sql);
            //cx.close();
            if(rs.next()){
               cap=1;
            }else{
                cap=2;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error: "+ex);
        }    
    return cap;
    }
    public int verificarUsuario(String user){
    sql="SELECT *FROM Usuario WHERE usuario='"+user+"'";
        try {
            cx = Conexion.GetConexion();
            st = cx.createStatement();
            rs = st.executeQuery(sql);
            //cx.close();
            if(rs.next()){
                cap=1;
            }else{
                cap=2;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error: "+ex);
        }
        return cap;    
    }
}
