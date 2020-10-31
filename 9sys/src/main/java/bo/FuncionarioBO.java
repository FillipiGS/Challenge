package bo;

import bean.Funcionario;
import dao.FuncionarioDAO;

import java.util.List;

/**
 * The type Funcionario bo.
 */
public class FuncionarioBO {

    private FuncionarioDAO funcionarioDAO = null;

    /**
     * Cadastra funcionario int.
     *
     * @param funcionario the funcionario
     * @return the int
     */
    public int cadastraFuncionario (Funcionario funcionario) {
        funcionarioDAO = new FuncionarioDAO();
        return funcionarioDAO.cadastrar(funcionario);
    }

    /**
     * Lista funcionario list.
     *
     * @return the list
     */
    public List<Funcionario> listaFuncionario(){
        funcionarioDAO = new FuncionarioDAO();
        return FuncionarioDAO.listar();
    }

    /**
     * Detalha funcionario funcionario.
     *
     * @param id the id
     * @return the funcionario
     */
    public Funcionario detalhaFuncionario(int id){
        funcionarioDAO = new FuncionarioDAO();
        return funcionarioDAO.detalhar(id);
    }

    /**
     * Atualiza funcionario int.
     *
     * @param funcionario the funcionario
     * @param id          the id
     * @return the int
     */
    public int atualizaFuncionario(Funcionario funcionario, int id) {
        funcionarioDAO = new FuncionarioDAO();
        return funcionarioDAO.atualizar(funcionario, id);
    }

    /**
     * Deleta funcionario int.
     *
     * @param id the id
     * @return the int
     */
    public  int deletaFuncionario (int id) {
        funcionarioDAO = new FuncionarioDAO();
        return funcionarioDAO.deletar(id);
    }

}
