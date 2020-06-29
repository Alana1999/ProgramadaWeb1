package DAO.arrayList;

import java.util.ArrayList;
import java.util.List;
import modelo.Alumno;


public class Dataset {
    private static Dataset instance ;
    public List <Alumno> alumnos;
    
    private Dataset(){
        alumnos = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Alumno alumno = new Alumno (i, "nombre"+i, "apellidos"+i);
            alumnos.add(alumno);
        }
    }
    
    public static Dataset getInstance() {
        if (instance == null) {
            instance = new Dataset();
        }
        return instance;
    }
}
