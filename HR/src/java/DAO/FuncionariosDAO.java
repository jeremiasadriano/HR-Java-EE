package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DTO.FuncionariosDTO;
import java.util.ArrayList;

public class FuncionariosDAO {
    Connection conexao;
    PreparedStatement prepS;
    ResultSet rSet;
    ArrayList<FuncionariosDTO> ListaFuncionarios = new ArrayList<>();

    /**
     * 
     */
    public void Cadastrar(FuncionariosDTO objFuncionariosDTO) throws ClassNotFoundException {
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

    public ArrayList<FuncionariosDTO> PesquisarLivro() throws ClassNotFoundException, SQLException{
        String sql = "select * from tbFuncionarios";
        conexao = new ConexaoDAO().conexaoBD();

        prepS = conexao.prepareStatement(sql);
        rSet = prepS.executeQuery(sql);
        try {
            while (rSet.next()) {
                FuncionariosDTO objFuncionariosDTO = new FuncionariosDTO();
                objFuncionariosDTO.setIdFuncionario(rSet.getInt("Id_Funcionario"));;
                objFuncionariosDTO.setNome(rSet.getString("Nome"));
                objFuncionariosDTO.setIdade(rSet.getInt("Idade"));
                objFuncionariosDTO.setSexo(rSet.getString("Sexo"));
                objFuncionariosDTO.setEmail(rSet.getString("Email"));
                objFuncionariosDTO.setCargo(rSet.getString("Cargo"));
                objFuncionariosDTO.setTelefone(rSet.getString("Telefone"));

                // lista para armazenar cada linha da tabela
                ListaFuncionarios.add(objFuncionariosDTO);
            }
        } catch (Exception e) {

        }
        return ListaFuncionarios;    
    } 


    public void Remover(FuncionariosDTO objFuncionariosDTO) throws ClassNotFoundException {
        String sql = "delete from tbFuncionarios where Id_Funcionario=?";
        conexao = new ConexaoDAO().conexaoBD();

        try {
            prepS = conexao.prepareStatement(sql);

            prepS.setInt(1, objFuncionariosDTO.getIdFuncionario());

            prepS.execute();
            prepS.close();

        } catch (SQLException e) {

        }

    }


}
