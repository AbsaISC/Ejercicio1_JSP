/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.ArrayList;
import DTO.Alumno;
import java.sql.DriverManager;

/**
 *
 * @author absalom
 */
public class AlumnoDAO {

    Connection conn = null;

    /* SQL to insert data */
    private static final String SQL_INSERT
            = "{call crearAlumno(?,?,?,?,?,?,?,?)}";

    /* SQL to select data */
    private static final String SQL_SELECT
            = "{call mostrarAlumno(?)}";

    /*SQL to select all*/
    private static final String SQL_SELECT_ALL
            = "{call mostrarAlumnos()}";

    /* SQL to update data */
    private static final String SQL_UPDATE
            = "{call actualizarAlumno(?,?,?,?,?,?,?,?,?)}";

    /* SQL to delete data */
    private static final String SQL_DELETE
            = "{call eliminarAlumno(?)}";

    private static final String findByUserPass
            = "{call bucaClaveUsuario(?,?)}";

    /**
     * Create a new record in Database.
     *
     * @param bean The Object to be inserted.
     * @param conn JDBC Connection.
     * @exception SQLException if something is wrong.
     */
    public void create(Alumno bean) throws SQLException, ClassNotFoundException {
        openConn();
        CallableStatement cs = null;
        try {
            cs = conn.prepareCall(SQL_INSERT);
            //cs.setInt(1, bean.getIdalumno());
            cs.setString(1, bean.getNombre());
            cs.setString(2, bean.getPaterno());
            cs.setString(3, bean.getMaterno());
            cs.setString(4, bean.getSexo());
            cs.setInt(5, bean.getEdad());
            cs.setString(6, bean.getUsuario());
            cs.setString(7, bean.getClave());
            if (bean.getFechanac() != null) {
                cs.setDate(8, new java.sql.Date(bean.getFechanac().getTime()));
            } else {
                cs.setNull(8, Types.DATE);
            }
            cs.executeUpdate();
        } finally {
            close(cs);
            closeConn();
        }
    }

    public Alumno login(String user, String pass) throws SQLException, ClassNotFoundException {
        openConn();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = conn.prepareCall(findByUserPass);
            cs.setString(1, user);
            cs.setString(2, pass);
            rs = cs.executeQuery();
            List results = getResults(rs);
            if (results.size() > 0) {
                return (Alumno) results.get(0);
            } else {
                return null;
            }
        } finally {
            close(rs);
            close(cs);
            closeConn();
        }
    }

    /**
     * Retrive a record from Database.
     *
     * @param beanKey The PK Object to be retrived.
     * @param conn JDBC Connection.
     * @exception SQLException if something is wrong.
     */
    public Alumno load(Alumno key) throws SQLException, ClassNotFoundException {
        openConn();
//        PreparedStatement ps = null;
        ResultSet rs = null;
        CallableStatement cs = null;
        try {
            cs = conn.prepareCall(SQL_SELECT);
            cs.setInt(1, key.getIdalumno());
            rs = cs.executeQuery();
            List results = getResults(rs);
            if (results.size() > 0) {
                return (Alumno) results.get(0);
            } else {
                return null;
            }
        } finally {
            close(rs);
            close(cs);
            closeConn();
        }
    }

    public List loadAll() throws SQLException, ClassNotFoundException {
        openConn();
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = conn.prepareCall(SQL_SELECT_ALL);
            rs = cs.executeQuery();
            List results = getResults(rs);
            if (results.size() > 0) {
                return results;
            } else {
                return null;
            }
        } finally {
            close(rs);
            close(cs);
            closeConn();
        }

    }

    /**
     * Update a record in Database.
     *
     * @param bean The Object to be saved.
     * @param conn JDBC Connection.
     * @exception SQLException if something is wrong.
     */
    public void update(Alumno bean, Connection conn) throws SQLException, ClassNotFoundException {
        openConn();
        CallableStatement cs = null;
        try {
            cs = conn.prepareCall(SQL_UPDATE);
            cs.setString(1, bean.getNombre());
            cs.setString(2, bean.getPaterno());
            cs.setString(3, bean.getMaterno());
            cs.setString(4, bean.getSexo());
            cs.setInt(5, bean.getEdad());
            cs.setString(6, bean.getUsuario());
            cs.setString(7, bean.getClave());
            if (bean.getFechanac() != null) {
                cs.setDate(8, new java.sql.Date(bean.getFechanac().getTime()));
            } else {
                cs.setNull(8, Types.DATE);
            }
            cs.setInt(9, bean.getIdalumno());
            cs.executeUpdate();
        } finally {
            close(cs);
            closeConn();
        }
    }

    /**
     * Create a new record in Database.
     *
     * @param bean The PK Object to be deleted.
     * @param conn JDBC Connection.
     * @exception SQLException if something is wrong.
     */
    public void delete(Alumno key, Connection conn) throws SQLException, ClassNotFoundException {
        openConn();
        CallableStatement cs = null;
        try {
            cs = conn.prepareCall(SQL_DELETE);
            cs.setInt(1, key.getIdalumno());
            cs.executeUpdate();
        } finally {
            close(cs);
            closeConn();
        }
    }

    /**
     * Populate the ResultSet.
     *
     * @param rs The ResultSet.
     * @return The Object to retrieve from DB.
     * @exception SQLException if something is wrong.
     */
    protected List<Alumno> getResults(ResultSet rs) throws SQLException {
        List results = new ArrayList<Alumno>();
        while (rs.next()) {
            Alumno bean = new Alumno();
            bean.setIdalumno(rs.getInt("idAlumno"));
            bean.setNombre(rs.getString("nombre"));
            bean.setPaterno(rs.getString("paterno"));
            bean.setMaterno(rs.getString("materno"));
            bean.setSexo(rs.getString("sexo"));
            bean.setEdad(rs.getInt("edad"));
            bean.setUsuario(rs.getString("usuario"));
            bean.setClave(rs.getString("clave"));
            bean.setFechanac(rs.getDate("fechanac"));
            results.add(bean);
        }
        return results;
    }

    /**
     * Close JDBC Statement.
     *
     * @param stmt Statement to be closed.
     */
    protected void close(Statement stmt) {
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
            }
        }
    }

    /**
     * Close JDBC ResultSet.
     *
     * @param rs ResultSet to be closed.
     */
    protected void close(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
            }
        }
    }

    protected void closeConn() throws SQLException {
        if (conn != null) {
            conn.close();
            conn = null;
        }
    }

    public void openConn() throws ClassNotFoundException, SQLException {
        conn = null;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
    }

}
