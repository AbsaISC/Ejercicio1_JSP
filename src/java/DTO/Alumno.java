/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DTO;

/**
 *
 * @author absalom
 */
public class Alumno implements java.io.Serializable, Cloneable {
    //private AlumnoKey _key = new AlumnoKey();

    /* idAlumno, PK */
    protected int idalumno;

    /* nombre */
    protected String nombre;

    /* paterno */
    protected String paterno;

    /* materno */
    protected String materno;

    /* sexo */
    protected String sexo;

    /* edad */
    protected int edad;

    /* usuario */
    protected String usuario;

    /* clave */
    protected String clave;

    /* fechanac */
    protected java.util.Date fechanac;

    /* Return the key object. */
//    public AlumnoKey getKeyObject() {
//        return _key;
//    }

    /* idAlumno, PK */
    public int getIdalumno() {
        return idalumno;
    }

    /* idAlumno, PK */
    public void setIdalumno(int idalumno) {
        this.idalumno = idalumno;
        //_key.setIdalumno(idalumno);
    }

    /* nombre */
    public String getNombre() {
        return nombre;
    }

    /* nombre */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /* paterno */
    public String getPaterno() {
        return paterno;
    }

    /* paterno */
    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    /* materno */
    public String getMaterno() {
        return materno;
    }

    /* materno */
    public void setMaterno(String materno) {
        this.materno = materno;
    }

    /* sexo */
    public String getSexo() {
        return sexo;
    }

    /* sexo */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /* edad */
    public int getEdad() {
        return edad;
    }

    /* edad */
    public void setEdad(int edad) {
        this.edad = edad;
    }

    /* usuario */
    public String getUsuario() {
        return usuario;
    }

    /* usuario */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /* clave */
    public String getClave() {
        return clave;
    }

    /* clave */
    public void setClave(String clave) {
        this.clave = clave;
    }

    /* fechanac */
    public java.util.Date getFechanac() {
        return fechanac;
    }

    /* fechanac */
    public void setFechanac(java.util.Date fechanac) {
        this.fechanac = fechanac;
    }

    /* Indicates whether some other object is "equal to" this one. */
    public boolean equals(Object obj) {
        if (this == obj)
            return true;

        if (obj == null || !(obj instanceof Alumno))
            return false;

        Alumno bean = (Alumno) obj;

        if (this.idalumno != bean.idalumno)
            return false;

        if (this.nombre == null) {
            if (bean.nombre != null)
                return false;
        }
        else if (!this.nombre.equals(bean.nombre)) 
            return false;

        if (this.paterno == null) {
            if (bean.paterno != null)
                return false;
        }
        else if (!this.paterno.equals(bean.paterno)) 
            return false;

        if (this.materno == null) {
            if (bean.materno != null)
                return false;
        }
        else if (!this.materno.equals(bean.materno)) 
            return false;

        if (this.sexo == null) {
            if (bean.sexo != null)
                return false;
        }
        else if (!this.sexo.equals(bean.sexo)) 
            return false;

        if (this.edad != bean.edad)
            return false;

        if (this.usuario == null) {
            if (bean.usuario != null)
                return false;
        }
        else if (!this.usuario.equals(bean.usuario)) 
            return false;

        if (this.clave == null) {
            if (bean.clave != null)
                return false;
        }
        else if (!this.clave.equals(bean.clave)) 
            return false;

        if (this.fechanac == null) {
            if (bean.fechanac != null)
                return false;
        }
        else if (!this.fechanac.equals(bean.fechanac)) 
            return false;

        return true;
    }

    /* Creates and returns a copy of this object. */
    public Object clone()
    {
        Alumno bean = new Alumno();
        bean.idalumno = this.idalumno;
        bean.nombre = this.nombre;
        bean.paterno = this.paterno;
        bean.materno = this.materno;
        bean.sexo = this.sexo;
        bean.edad = this.edad;
        bean.usuario = this.usuario;
        bean.clave = this.clave;
        if (this.fechanac != null)
            bean.fechanac = (java.util.Date) this.fechanac.clone();
        return bean;
    }

    /* Returns a string representation of the object. */
    public String toString() {
        String sep = "\r\n";
        StringBuffer sb = new StringBuffer();
        sb.append(this.getClass().getName()).append(sep);
        sb.append("[").append("idalumno").append(" = ").append(idalumno).append("]").append(sep);
        sb.append("[").append("nombre").append(" = ").append(nombre).append("]").append(sep);
        sb.append("[").append("paterno").append(" = ").append(paterno).append("]").append(sep);
        sb.append("[").append("materno").append(" = ").append(materno).append("]").append(sep);
        sb.append("[").append("sexo").append(" = ").append(sexo).append("]").append(sep);
        sb.append("[").append("edad").append(" = ").append(edad).append("]").append(sep);
        sb.append("[").append("usuario").append(" = ").append(usuario).append("]").append(sep);
        sb.append("[").append("clave").append(" = ").append(clave).append("]").append(sep);
        sb.append("[").append("fechanac").append(" = ").append(fechanac).append("]").append(sep);
        return sb.toString();
    }
}