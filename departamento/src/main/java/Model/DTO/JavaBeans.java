package Model.DTO;

public class JavaBeans implements java.io.Serializable {
    private String nome;
    private int idade;
    private String sexo;
    private String email;
    private String cargo;
    private String telefone;
    private String departamento;
    private int quantidade;
    private String Username;

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public JavaBeans(String nome, int idade, String sexo, String email, String cargo, String telefone, String departamento) {
        this.nome = nome;
        this.idade = idade;
        this.sexo = sexo;
        this.email = email;
        this.cargo = cargo;
        this.telefone = telefone;
        this.departamento = departamento;
    }

    public JavaBeans() {
    }

    public String getNome() {
        return nome;
    }

    public String setNome(String nome) {
        this.nome = nome;
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
}
