package dao;

import bean.Departamento;
import conexao.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * The type Departamento dao.
 */
public class DepartamentoDAO {

    private Connection con;

    /**
     * Instantiates a new Departamento dao.
     */
    public DepartamentoDAO() {
        ConnectionFactory cf = new ConnectionFactory();
        try {
            this.con = cf.DBConnectionManager();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Criar departamento int.
     *
     * @param departamento the departamento
     * @return the int
     */
    public int criarDepartamento (Departamento departamento) {

        try {
            String sql = "INSERT INTO t_departamento VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, String.valueOf(departamento.getId()));
            ps.setString(2, departamento.getNome());

            int status = ps.executeUpdate();
            return status;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

}
