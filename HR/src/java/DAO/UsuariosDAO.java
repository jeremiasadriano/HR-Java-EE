package DAO;

import DTO.UsuariosDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

/**
 *
 * @author mutizo
 */
public class UsuariosDAO {

    Connection conexao;
    PreparedStatement prepS;
    ResultSet rSet;
    
    public ResultSet LoginUsr(UsuariosDTO objUsuariosDTO) throws ClassNotFoundException{
        String sql = "select * from tbUsuarios where Username = ? and Senha = ?";
        conexao = new ConexaoDAO().conexaoBD();
        
        try {

            prepS = conexao.prepareStatement(sql);
            
            prepS.setString(1, objUsuariosDTO.getUsername());
            prepS.setString(2, objUsuariosDTO.getSenha());
            
            rSet = prepS.executeQuery();
            return rSet;

        } catch (SQLException erro) {
           JOptionPane.showMessageDialog(null, "Verificar credenciais: "+ erro);
        }
        return null;
        
    }
}
