package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DTO.FuncionariosDTO;

public class FuncionariosDAO {
    Connection conexao;
    PreparedStatement prepS;
    ResultSet rSet;  
    /**
     * 
     */
    public void Cadastrar(FuncionariosDTO objFuncionariosDTO) throws ClassNotFoundException{
        String sql = "insert into tbFuncionarios(Nome, Idade, Sexo, Email, Cargo, Telefone) values(?,?,?,?,?,?)";
        conexao = new ConexaoDAO().conexaoBD();

        try {
            prepS = conexao.prepareStatement(sql);

            prepS.setString(1, objFuncionariosDTO.getNome());
            prepS.setInt(2, objFuncionariosDTO.getIdade());
            prepS.setString(3, objFuncionariosDTO.getSexo());
            prepS.setString(4, objFuncionariosDTO.getEmail());
            prepS.setString(5, objFuncionariosDTO.getCargo());
            prepS.setString(6, objFuncionariosDTO.getTelefone());

            prepS.execute();
            prepS.close();

        } catch (SQLException e) {
            
        }

    }

}
