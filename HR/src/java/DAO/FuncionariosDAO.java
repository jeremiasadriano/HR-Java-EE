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

    public void Cadastrar(FuncionariosDTO objFuncionariosDTO) throws ClassNotFoundException {
        String sql = "insert into tbFuncionarios(Nome, Idade, Sexo, Email, Cargo, Telefone, Departamento) values(?,?,?,?,?,?,?)";
        conexao = new ConexaoDAO().conexaoBD();

        try {
            prepS = conexao.prepareStatement(sql);

            prepS.setString(1, objFuncionariosDTO.getNome());
            prepS.setInt(2, objFuncionariosDTO.getIdade());
            prepS.setString(3, objFuncionariosDTO.getSexo());
            prepS.setString(4, objFuncionariosDTO.getEmail());
            prepS.setString(5, objFuncionariosDTO.getCargo());
            prepS.setString(6, objFuncionariosDTO.getTelefone());
            prepS.setString(7, objFuncionariosDTO.getDepartamento());

            prepS.execute();
            prepS.close();
            conexao.close();
        } catch (SQLException e) {

        }

    }

    public List<FuncionariosDTO> listarFuncionarios() throws SQLException, ClassNotFoundException {

        List<FuncionariosDTO> listaFuncionarios = new ArrayList<>();

        String sql = "SELECT * FROM tbfuncionarios";
        conexao = new ConexaoDAO().conexaoBD();
        Statement stmt = null;
        ResultSet rs = null;
        try {

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
                String departamento = rs.getString("Departamento");

                FuncionariosDTO funcionario = new FuncionariosDTO();
                funcionario.setIdFuncionario(id);
                funcionario.setNome(nome);
                funcionario.setIdade(idade);
                funcionario.setSexo(sexo);
                funcionario.setEmail(email);
                funcionario.setCargo(cargo);
                funcionario.setTelefone(telefone);
                funcionario.setDepartamento(departamento);

                listaFuncionarios.add(funcionario);
            }
        } catch (Exception e) {

        } finally {
            stmt.close();
            rs.close();
            conexao.close();
        }

        return listaFuncionarios;
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

    public void editarFuncionarios(FuncionariosDTO objFuncionariosDTO) throws ClassNotFoundException {
        String sql = "update tbfuncionarios set Nome=?, Idade=?, Sexo=?, Email=?, Cargo=?, Telefone=?, Departamento=? where Id_Funcionario=?";
        conexao = new ConexaoDAO().conexaoBD();

        try {
            prepS = conexao.prepareStatement(sql);

            prepS.setString(1, objFuncionariosDTO.getNome());
            prepS.setInt(2, objFuncionariosDTO.getIdade());
            prepS.setString(3, objFuncionariosDTO.getSexo());
            prepS.setString(4, objFuncionariosDTO.getEmail());
            prepS.setString(5, objFuncionariosDTO.getCargo());
            prepS.setString(6, objFuncionariosDTO.getTelefone());
             prepS.setString(7, objFuncionariosDTO.getDepartamento());
            prepS.setInt(8, objFuncionariosDTO.getIdFuncionario());

            prepS.execute();
            prepS.close();

        } catch (SQLException e) {

        }

    }

    public List<FuncionariosDTO> pesquisarFuncionarios( String valor) throws SQLException, ClassNotFoundException {
        List<FuncionariosDTO> listaFuncionarios = new ArrayList<>();
        String sql = "SELECT * FROM tbfuncionarios WHERE Nome LIKE ?";
        conexao = new ConexaoDAO().conexaoBD();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, "%" + valor + "%");
            rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("Id_Funcionario");
                String nome = rs.getString("Nome");
                int idade = rs.getInt("Idade");
                String sexo = rs.getString("Sexo");
                String email = rs.getString("Email");
                String cargo = rs.getString("Cargo");
                String telefone = rs.getString("Telefone");
                String departamento = rs.getString("Departamento");

                FuncionariosDTO funcionario = new FuncionariosDTO();
                funcionario.setIdFuncionario(id);
                funcionario.setNome(nome);
                funcionario.setIdade(idade);
                funcionario.setSexo(sexo);
                funcionario.setEmail(email);
                funcionario.setCargo(cargo);
                funcionario.setTelefone(telefone);
                funcionario.setDepartamento(departamento);

                listaFuncionarios.add(funcionario);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (stmt != null) {
                stmt.close();
            }
            if (rs != null) {
                rs.close();
            }
            conexao.close();
        }
        return listaFuncionarios;
    }

}
