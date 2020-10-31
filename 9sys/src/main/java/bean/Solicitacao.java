package bean;

import java.sql.Blob;
import java.sql.Clob;

public class Solicitacao {

    private String id;
    private String descricao;
    private String titulo;
    private Clob anexo;
    private String status;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Clob getAnexo() {
        return anexo;
    }

    public void setAnexo(Clob anexo) {
        this.anexo = anexo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setAnexo(String anexo) {
    }
}
