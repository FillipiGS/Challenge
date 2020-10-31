package dao;

import bean.Agenda;
import conexao.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * The type Agenda dao.
 */
public class AgendaDAO {

    private Connection con;

    /**
     * Instantiates a new Agenda dao.
     */
    public AgendaDAO() {
        ConnectionFactory cf = new ConnectionFactory();
        try {
            this.con = cf.DBConnectionManager();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Criar compromisso int.
     *
     * @param agenda the agenda
     * @return the int
     */
    public int criarCompromisso (Agenda agenda) {

        try {
            String sql = "INSERT INTO t_agenda VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, String.valueOf(agenda.getId()));
            ps.setString(2, String.valueOf(agenda.getFuncionario()));
            ps.setString(3, agenda.getDescricao());
            ps.setString(4, String.valueOf(agenda.getDataCompromisso()));

            int status = ps.executeUpdate();
            return status;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

}
