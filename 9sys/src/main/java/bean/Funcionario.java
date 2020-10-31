package bean;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Funcionario {

        private int id;
        private String nome;
        private String sobrenome;
        private String email;
        private String cpf;
        private String senha;
        private int salario;
        private String dataNascimento;
        private String dataAdmissao;
        private String permissaoAdmin;


        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getNome() {
                return nome;
            }

        public void setNome(String nome) {
            this.nome = nome;
        }

        public String getSobrenome() {
            return sobrenome;
        }

        public void setSobrenome(String sobrenome) {
            this.sobrenome = sobrenome;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getCpf() {
            return cpf;
        }

        public void setCpf(String cpf) {
            this.cpf = cpf;
        }

        public String getSenha() {
            return senha;
        }

        public void setSenha(String senha) {
            this.senha = senha;
        }

        public int getSalario() {
            return salario;
        }

        public void setSalario(int salario) {
            this.salario = salario;
        }

        public String getPermissaoAdmin() {
            return permissaoAdmin;
        }

        public void setPermissaoAdmin(String permissaoAdmin) {
            this.permissaoAdmin = permissaoAdmin;
        }

        public String getDataNascimento() {
            return dataNascimento;
        }

        public void setDataNascimento(String dataNascimento) {
            this.dataNascimento = dataNascimento;
        }

        public String getDataAdmissao() {
            return dataAdmissao;
        }

        public void setDataAdmissao(String dataAdmissao) {
            this.dataAdmissao = dataAdmissao;
        }
}
