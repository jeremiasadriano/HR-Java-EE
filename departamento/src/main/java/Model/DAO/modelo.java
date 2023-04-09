package Model.DAO;

import Model.DAL.Conexao;
import Model.DTO.JavaBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class modelo implements java.io.Serializable {
    private Connection conectar = Conexao.conexao();
    private PreparedStatement status = null;
    private ResultSet result = null;
    JavaBeans f = new JavaBeans();

//    public void inserirDepartamento(JavaBeans f) {
//        String sql = "INSERT INTO tbFuncionarios (Nome,Idade,Sexo,Email,Cargo,Telefone,Departamento) VALUES (?, ?,?,?,?,?,?)";
//        try {
//            status = conectar.prepareStatement(sql);
//            status.setString(1, f.getNome());
//            status.setInt(2, f.getIdade());
//            status.setString(3, f.getSexo());
//            status.setString(4, f.getEmail());
//            status.setString(5, f.getCargo());
//            status.setString(6, f.getTelefone());
//            status.setString(7, f.getDepartamento());
//            resposta = status.executeUpdate();
//        } catch (Exception e) {
//            System.out.println("Erro ao inserir departamento: " + e);
//        }
//    }
//

    public List<JavaBeans> quantidadeDep() {
        ArrayList<JavaBeans> lista = new ArrayList<>();
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

    public List<JavaBeans> listaDepartamento() {
        String sql = "select * from tbFuncionarios where Departamento='TI';";
        ArrayList<JavaBeans> lista = new ArrayList<>();
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
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }

    public List<JavaBeans> exibirDepartamento() {
        String sql = "select * from tbFuncionarios order by Departamento;";
        ArrayList<JavaBeans> lista = new ArrayList<>();
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
        } catch (Exception e) {
            System.out.println("Erro ao exibir departamento: " + e);
        }
        return lista;
    }

    public List<JavaBeans> user() {
        String sql = "select Username from tbUsuarios;";
        ArrayList<JavaBeans> lista = new ArrayList<>();
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

    public List<JavaBeans> pesquisar() {
        String sql = "select * from tbFuncionarios where Nome like ?;";
        ArrayList<JavaBeans> lista = new ArrayList<>();
        try {
            status = conectar.prepareStatement(sql);
            status.setString(1, f.getNome());
            result = status.executeQuery();
            while (result.next()) {
                f.setNome(result.getString("Nome"));
                lista.add(f);
            }
        } catch (Exception ex) {
            System.out.println("Erro ao exibir departamento: " + ex);
        }
        return lista;
    }

    public void selecionar(JavaBeans e) {
        String sql = "select * from tbFuncionarios where Nome = ?;";
        try {
            status = conectar.prepareStatement(sql);
            status.setString(1, f.getNome());
            result = status.executeQuery();
            while (result.next()) {
                f.setDepartamento(result.getString("Departamento"));
                f.setCargo(result.getString("Cargo"));
                f.setTelefone(result.getString("Telefone"));
                f.setEmail(result.getString("Email"));
                f.setSexo(result.getString("Sexo"));
                f.setIdade(result.getInt("Idade"));
                f.setNome(result.getString("Nome"));
            }
        } catch (Exception ex) {
            System.out.println("Erro ao exibir departamento: " + ex);
        }
    }

    public void editarSelecionar(JavaBeans f) {
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
}
