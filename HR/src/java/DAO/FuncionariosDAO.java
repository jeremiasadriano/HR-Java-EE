package DAO;

import java.sql.*;

import DTO.FuncionariosDTO;
import java.util.ArrayList;
import java.util.List;

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

   public List<FuncionariosDTO> listarFuncionarios() throws SQLException, ClassNotFoundException {
       
        List<FuncionariosDTO> listaFuncionarios = new ArrayList<>();
       
        String sql = "SELECT * FROM tbfuncionarios";
        conexao = new ConexaoDAO().conexaoBD();
          Statement stmt = null;
          ResultSet rs = null;
        try{
            
            stmt = conexao.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                
                int id = rs.getInt("Id_Funcionario");
                String nome = rs.getString("Nome");
                int idade = rs.getInt("Idade");
                String sexo = rs.getString("Sexo");
                String email = rs.getString("Email");
                String cargo = rs.getString("Cargo");
                String telefone = rs.getString("Telefone");
                
                FuncionariosDTO funcionario = new FuncionariosDTO();
                funcionario.setIdFuncionario(id);
                funcionario.setNome(nome);
                funcionario.setIdade(idade);
                funcionario.setSexo(sexo);
                funcionario.setEmail(email);
                funcionario.setCargo(cargo);
                funcionario.setTelefone(telefone);

                listaFuncionarios.add(funcionario);
                System.out.println(funcionario);
            }
        }catch(Exception e){
            
        }finally{
            stmt.close();
            rs.close();
            conexao.close();
        }

        return listaFuncionarios;
    }
}
