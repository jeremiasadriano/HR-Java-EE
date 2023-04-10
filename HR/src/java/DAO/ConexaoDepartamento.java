package DAO;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoDepartamento {
    private static final String USER = "root";
    private static final String PASS = "Jeremias1";
    private static final String URL = "jdbc:mysql://localhost:3306/bdGestaoRH?";
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static Connection connectaction = null;

    public static Connection conexao() {
        try {
            Class.forName(DRIVER);
            connectaction = DriverManager.getConnection(URL, USER, PASS);
            return connectaction;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Conectation error: " + e.getMessage());
        }
        return connectaction;
    }

    public static void teste() {
        try {
            System.out.println(conexao());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
