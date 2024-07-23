package com.techtitans.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Jpa {

    // Se crea la instancia EntityManager para gestionar la conexión a la base de datos.
    private static final EntityManagerFactory emf = buildEntityManagerFactory();

   /*
    * Se utilizo un metodo statico para que sea utilizado en todas las instancias
    * de la clase. Este metodo retorna la persistencia al momento de crear 
    * la base de datos y se utilizo una excepcion para el manejo de errores.
    */
    private static EntityManagerFactory buildEntityManagerFactory() {
      try{
          return Persistence.createEntityManagerFactory("DBHoteleria");
      }catch(Throwable e){
            throw new ExceptionInInitializerError(e);
      }
    }
    
   // Este metodo nos permite interactuar con la base de datos por medio de EntityManager.    
    public static EntityManager getEntityManager(){
      return emf.createEntityManager();
     }
    
    // Este metodo nos permite cerrar la instancia con la base de datos.
    public static void close(){
         emf.close();
     }  
}
