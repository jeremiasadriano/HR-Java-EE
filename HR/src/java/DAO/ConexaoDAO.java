
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

/**
 *
 * @author mutizo
 */
public class ConexaoDAO {
    
    public Connection conexaoBD() throws ClassNotFoundException{
        Connection conexao = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bdGestaoRH?user=root";
            conexao = DriverManager.getConnection(url);

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "ConexaoSQL: " + erro.getMessage());
        }
        return conexao;
    }
}
