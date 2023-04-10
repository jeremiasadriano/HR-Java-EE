package DAO;

import DTO.DepartamentoDTO;
import DTO.DepartamentoDTO2;
import DTO.FuncionariosDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DepartamentoDAO {

    private Connection conectar = ConexaoDepartamento.conexao();
    private PreparedStatement status = null;
    private ResultSet result = null;
    DepartamentoDTO f = new DepartamentoDTO();

    public List<DepartamentoDTO> quantidadeDep() {
        ArrayList<DepartamentoDTO> lista = new ArrayList<>();
        String sql = "select count(*) from tbFuncionarios;";
        try {
            status = conectar.prepareStatement(sql);
            result = status.executeQuery();
            while (result.next()) {
                f.setQuantidade(result.getInt("count(*)"));
                lista.add(f);
            }
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }



    
    public List<DepartamentoDTO> user() {
        String sql = "select Username from tbUsuarios;";
        ArrayList<DepartamentoDTO> lista = new ArrayList<>();
        try {
            status = conectar.prepareStatement(sql);
            result = status.executeQuery();
            while (result.next()) {
                f.setUsername(result.getString("Username"));
                lista.add(f);
            }
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }

    public List<DepartamentoDTO> pesquisar(String valor) {
        String sql = "select * from tbFuncionarios where Nome like ?;";
        ArrayList<DepartamentoDTO> lista = new ArrayList<>();
        try {
            status = conectar.prepareStatement(sql);
            status.setString(1, "%" + valor + "%");
            result = status.executeQuery();
            while (result.next()) {
                f.setNome(result.getString("Nome"));
                f.setIdade(result.getInt("Idade"));
                f.setSexo(result.getString("Sexo"));
                f.setEmail(result.getString("Email"));
                f.setCargo(result.getString("Cargo"));
                f.setTelefone(result.getString("Telefone"));
                f.setDepartamento(result.getString("Departamento"));

                lista.add(f);
            }
            status.close();
            result.close();
        } catch (Exception ex) {
            System.out.println("Erro ao exibir departamento: " + ex);
        }
        return lista;
    }

    public void editarSelecionar(DepartamentoDTO f) {
        String sql = "update tbFuncionarios set Departamento =?  where Nome = ?;";
        try {
            status = conectar.prepareStatement(sql);
            status.setString(1, this.f.getDepartamento());
            status.setString(2, this.f.getNome());
            status.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Erro ao exibir departamento: " + ex);
        }

    }

    public List<DepartamentoDTO> DepartamentoTI() {
        String sql = "select * from tbFuncionarios where Departamentp='TI' order by Nome;";
        ArrayList<DepartamentoDTO> lista = new ArrayList<>();
        try {
            status = conectar.prepareStatement(sql);
            result = status.executeQuery();
            while (result.next()) {
                f.setNome(result.getString("Nome"));
                f.setIdade(result.getInt("Idade"));
                f.setSexo(result.getString("Sexo"));
                f.setEmail(result.getString("Email"));
                f.setCargo(result.getString("Cargo"));
                f.setTelefone(result.getString("Telefone"));
                f.setDepartamento(result.getString("Departamento"));
                lista.add(f);
            }
            status.close();
            result.close();
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }

    public List<DepartamentoDTO> DepartamentoEco() {
        String sql = "select * from tbFuncionarios where Departamentp='Economia' order by Nome;";
        ArrayList<DepartamentoDTO> lista = new ArrayList<>();
        try {
            status = conectar.prepareStatement(sql);
            result = status.executeQuery();
            while (result.next()) {
                f.setNome(result.getString("Nome"));
                f.setIdade(result.getInt("Idade"));
                f.setSexo(result.getString("Sexo"));
                f.setEmail(result.getString("Email"));
                f.setCargo(result.getString("Cargo"));
                f.setTelefone(result.getString("Telefone"));
                f.setDepartamento(result.getString("Departamento"));
                lista.add(f);
            }
            status.close();
            result.close();
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }

    public List<DepartamentoDTO> DepartamentoGestao() {
        String sql = "select * from tbFuncionarios where Departamentp='Gestao' order by Nome;";
        ArrayList<DepartamentoDTO> lista = new ArrayList<>();
        try {
            status = conectar.prepareStatement(sql);
            result = status.executeQuery();
            while (result.next()) {
                f.setNome(result.getString("Nome"));
                f.setIdade(result.getInt("Idade"));
                f.setSexo(result.getString("Sexo"));
                f.setEmail(result.getString("Email"));
                f.setCargo(result.getString("Cargo"));
                f.setTelefone(result.getString("Telefone"));
                f.setDepartamento(result.getString("Departamento"));
                lista.add(f);
            }
            status.close();
            result.close();
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }
    
     public List<DepartamentoDTO2> listarDepartamentoNome() {
        String sql = "select * from tbdepartamentos;";
        ArrayList<DepartamentoDTO2> lista = new ArrayList<>();
        try {
            status = conectar.prepareStatement(sql);
            result = status.executeQuery();
            while (result.next()) {
                DepartamentoDTO2 f1 = new DepartamentoDTO2();
                f1.setId_Departamento(result.getString(1));
                f1.setNome_Departamento(result.getString(2));
               
                lista.add(f1);
            }
            
            status.close();
            result.close();
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }
    
}