package dao;

import bean.Funcionario;
import conexao.ConnectionFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * The type Funcionario dao.
 */
public class FuncionarioDAO {

    /**
     * Get connection connection.
     *
     * @return the connection
     */
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:orcl","RM86110","290896");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    private Connection conexao;

    /**
     * Instantiates a new Funcionario dao.
     */
    public FuncionarioDAO() {
        ConnectionFactory cf = new ConnectionFactory();
        try {
            this.conexao = cf.DBConnectionManager();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Listar list.
     *
     * @return the list
     */
//Médoto para listar todos os funcionários
    public static List<Funcionario> listar(){
        List<Funcionario> list = new ArrayList<>();

        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from t_funcionario");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Funcionario funcionario = new Funcionario();
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSobrenome(rs.getString("sobrenome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setDataNascimento(rs.getNString("dt_nascimento"));
                funcionario.setCpf(rs.getString("cpf"));
                list.add(funcionario);
            }
        } catch(Exception e) {
            System.out.println(e);
        }
        return list;
    }

    /**
     * Detalhar funcionario.
     *
     * @param id the id
     * @return the funcionario
     */
    public Funcionario detalhar(int id) {

        String sql = null;
        Funcionario funcionario = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            sql = "SELECT * FROM tbl_funcionario WHERE id = ?";
            preparedStatement = conexao.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                funcionario = new Funcionario();
                funcionario.setId(resultSet.getInt("id"));
                funcionario.setNome(resultSet.getNString("nome"));
                funcionario.setSobrenome(resultSet.getNString("sobrenome"));
                funcionario.setEmail(resultSet.getNString("email"));
                funcionario.setCpf(resultSet.getNString("cpf"));
                funcionario.setDataNascimento(resultSet.getNString("dt_nascimento"));
                funcionario.setDataAdmissao(resultSet.getNString("dt_admissao"));
                funcionario.setSalario(resultSet.getInt("salario"));
                funcionario.setPermissaoAdmin(resultSet.getNString("pm_admin"));
                funcionario.setSenha(resultSet.getNString("senha"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                preparedStatement.close();
                resultSet.close();
                conexao.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return funcionario;
    }

    /**
     * Cadastrar int.
     *
     * @param funcionario the funcionario
     * @return the int
     */
    public int cadastrar(Funcionario funcionario) {

        try {
            String sql = "INSERT INTO t_funcionario VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            Connection conexao = getConnection();
            PreparedStatement ps = conexao.prepareStatement(sql);

            ps.setString(1, String.valueOf(funcionario.getId()));
            ps.setString(2, funcionario.getEmail());
            ps.setString(3, funcionario.getNome());
            ps.setString(4, funcionario.getSobrenome());
            ps.setString(5, funcionario.getDataNascimento());
            ps.setString(6, funcionario.getCpf());
            ps.setString(7, funcionario.getSenha());
            ps.setString(8, String.valueOf(funcionario.getSalario()));
            ps.setString(9, funcionario.getDataAdmissao());
            ps.setString(10, funcionario.getPermissaoAdmin());

            int status = ps.executeUpdate();
            return status;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }

    /**
     * Atualizar int.
     *
     * @param funcionario the funcionario
     * @param id          the id
     * @return the int
     */
    public int atualizar(Funcionario funcionario, int id) {

        String sql = null;
        PreparedStatement preparedStatement = null;
        int status = 0;

        try {
            sql = "UPDATE tbl_funcionario SET nome = ?, sobrenome = ?, email = ? WHERE id = ?";
            preparedStatement = conexao.prepareStatement(sql);

            preparedStatement.setString(1, funcionario.getNome());
            preparedStatement.setString(2, funcionario.getSobrenome());
            preparedStatement.setString(3, funcionario.getEmail());
            preparedStatement.setInt(4, id);

            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            try {
                preparedStatement.close();
                conexao.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }

    /**
     * Deletar int.
     *
     * @param id the id
     * @return the int
     */
    public int deletar(int id) {

        String sql = null;
        PreparedStatement preparedStatement = null;
        int status = 0;

        try {
            sql = "DELETE FROM tbl_cliente WHERE id = ?";
            preparedStatement = conexao.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            status = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                preparedStatement.close();
                conexao.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }

}
