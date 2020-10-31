package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    public Connection DBConnectionManager() throws ClassNotFoundException, SQLException {
        String dbURL = "jdbc:oracle:thin:@oracle.fiap.com.br:1521:orcl";
        String usuario = "RM86110";
        String senha = "290896";
        Class.forName("oracle.jdbc.OracleDriver");
        return DriverManager.getConnection(dbURL, usuario, senha);
    }

}
