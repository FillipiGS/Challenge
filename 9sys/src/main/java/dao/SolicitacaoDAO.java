package dao;

import bean.Solicitacao;
import conexao.ConnectionFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * The type Solicitacao dao.
 */
public class SolicitacaoDAO {

        private Connection con;

    /**
     * Instantiates a new Solicitacao dao.
     */
    public SolicitacaoDAO() {
            ConnectionFactory cf = new ConnectionFactory();
            try {
                this.con = cf.DBConnectionManager();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }

    /**
     * Criar solicitacao int.
     *
     * @param solicitacao the solicitacao
     * @return the int
     */
    public int criarSolicitacao(Solicitacao solicitacao) {

            try {
                String sql = "INSERT INTO t_solicitacoes VALUES (?, ?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, String.valueOf(solicitacao.getId()));
                ps.setString(2, solicitacao.getTitulo());
                ps.setString(3, String.valueOf(solicitacao.getAnexo()));
                ps.setString(4, solicitacao.getDescricao());
                ps.setString(5, solicitacao.getStatus());

                int status = ps.executeUpdate();
                return status;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return 0;
    }

    /**
     * Listar solicitacao list.
     *
     * @return the list
     */
    public List<Solicitacao> listarSolicitacao() {

        String sql = "SELECT * FROM t_solicitacoes ORDER BY id";
        List<Solicitacao> lista = new ArrayList<Solicitacao>();

        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            Solicitacao solicitacao = null;

            while (rs.next()) {
                solicitacao = new Solicitacao();
                solicitacao.setId(rs.getNString("ID_SOLICITACAO"));
                solicitacao.setTitulo(rs.getNString("NM_FUN_SOLICITADO"));
                solicitacao.setDescricao(rs.getNString("DS_SOLICITACAO"));
                solicitacao.setAnexo(rs.getClob("ANEXO"));
                solicitacao.setStatus(rs.getNString("ST_SOLICITACAO"));
                lista.add(solicitacao);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                ps.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return lista;
    }


    /**
     * Detalhar solicitacao solicitacao.
     *
     * @param id the id
     * @return the solicitacao
     */
    public Solicitacao detalharSolicitacao(int id) {

        String sql = null;
        Solicitacao solicitacao = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            sql = "SELECT * FROM t_solicitacoes WHERE ID_SOLICITACAO = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                solicitacao = new Solicitacao();
                solicitacao.setId(rs.getNString("ID_SOLICITACAO"));
                solicitacao.setTitulo(rs.getNString("NM_FUN_SOLICITADO"));
                solicitacao.setDescricao(rs.getNString("DS_SOLICITACAO"));
                solicitacao.setAnexo(rs.getClob("ANEXO"));
                solicitacao.setStatus(rs.getNString("ST_SOLICITACAO"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                ps.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return solicitacao;
    }

    /**
     * Atualizar solicitacao int.
     *
     * @param solicitacao the solicitacao
     * @param id          the id
     * @return the int
     */
    public int atualizarSolicitacao(Solicitacao solicitacao, int id) {

        String sql = null;
        PreparedStatement ps = null;
        int status = 0;

        try {
            sql = "UPDATE T_SOLICITACOES SET NM_FUN_SOLICITADO = ?, DS_SOLICITACAO = ?, ST_SOLICITACAO = ? , ANEXO = ?, WHERE ID_SOLICITACAO = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, solicitacao.getTitulo());
            ps.setString(2, solicitacao.getDescricao());
            ps.setString(3, solicitacao.getStatus());
            ps.setString(4, String.valueOf(solicitacao.getAnexo()));
            status = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            try {
                ps.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }


}
