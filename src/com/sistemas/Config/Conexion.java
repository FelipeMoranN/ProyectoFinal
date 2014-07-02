/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sistemas.Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author ROSSYMARY
 */
public class Conexion {
 
    //public Connection GetConexion() throws ClassNotFoundException, SQLException{
    //Connection conex=null;
   // public Connection conectar(){
      //  try{
        //    Class.forName("com.mysql.jdbc.Driver");
          //  conex = DriverManager.getConnection("jdbc:mysql://localhost/BD_HISTORIALMEDICO/","root","system");    
 
        //}catch(Exception e){
          //  JOptionPane.showMessageDialog(null, "Error"+e);
        //}
        //return conex;
    //}
        
       // String url="jdbc:mysql://localhost/HISTORIALMEDICO";
        //String usuario="root";
        //String pass ="system";
        
    
    
    
    
    
    
    
    
    public static Connection GetConexion() throws ClassNotFoundException, SQLException{
    Connection conex=null;
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost/BD_HISTORIALMEDICO";
        String usuario="root";
        String pass ="system";
        conex =(Connection) DriverManager.getConnection(url,usuario,pass);    
    return conex;
    }
    
    
}
