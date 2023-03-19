package model;

public class JavaBeans {
    private int IdFuncionario;
    private String Nome;
    private int Idade;
    private String Sexo;
    private String Email;
    private String Cargo;
    private String Telefone;

    public JavaBeans() {
        super();

    }

    public JavaBeans(int IdFuncionario, String Nome, int Idade, String Sexo, String Email, String Cargo, String Telefone) {
        super();
        this.IdFuncionario = IdFuncionario;
        this.Nome = Nome;
        this.Idade = Idade;
        this.Sexo = Sexo;
        this.Email = Email;
        this.Cargo = Cargo;
        this.Telefone = Telefone;
    }
    
    public int getIdFuncionario() {
        return IdFuncionario;
    }
    public void setIdFuncionario(int IdFuncionario) {
        this.IdFuncionario = IdFuncionario;
    }


    public String getNome() {
        return Nome;
    }
    public void setNome(String Nome) {
        this.Nome = Nome;
    }


    public int getIdade() {
        return Idade;
    }
    public void setIdade(int Idade) {
        this.Idade = Idade;
    }


    public String getSexo() {
        return Sexo;
    }
    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }


    public String getEmail() {
        return Email;
    }
    public void setEmail(String Email) {
        this.Email = Email;
    }


    public String getCargo() {
        return Cargo;
    }
    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }


    public String getTelefone() {
        return Telefone;
    }
    public void setTelefone(String Telefone) {
        this.Telefone = Telefone;
    }
}
