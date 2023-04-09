package DTO;

public class FuncionariosDTO {
    private int IdFuncionario;
    private String Nome;
    private int Idade;
    private String Sexo;
    private String Email;
    private String Cargo;
    private String Departamento;
    private String Telefone;

//    public FuncionariosDTO(int idFuncionario, String nome, int idade, String sexo, String email, String cargo,
//            String telefone) {
//        IdFuncionario = idFuncionario;
//        Nome = nome;
//        Idade = idade;
//        Sexo = sexo;
//        Email = email;
//        Cargo = cargo;
//        Telefone = telefone;
//    }

    
    public int getIdFuncionario() {
        return IdFuncionario;
    }
    public void setIdFuncionario(int idFuncionario) {
        IdFuncionario = idFuncionario;
    }


    public String getNome() {
        return Nome;
    }
    public void setNome(String nome) {
        Nome = nome;
    }


    public int getIdade() {
        return Idade;
    }
    public void setIdade(int idade) {
        Idade = idade;
    }


    public String getSexo() {
        return Sexo;
    }
    public void setSexo(String sexo) {
        Sexo = sexo;
    }


    public String getEmail() {
        return Email;
    }
    public void setEmail(String email) {
        Email = email;
    }


    public String getCargo() {
        return Cargo;
    }
    public void setCargo(String cargo) {
        Cargo = cargo;
    }

    public String getDepartamento() {
        return Departamento;
    }
    public void setDepartamento(String departamento) {
        Departamento = departamento;
    }
    

    public String getTelefone() {
        return Telefone;
    }
    public void setTelefone(String telefone) {
        Telefone = telefone;
    }
}
