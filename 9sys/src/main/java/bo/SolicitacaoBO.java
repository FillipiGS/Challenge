package bo;

import bean.Solicitacao;
import dao.SolicitacaoDAO;

import java.util.List;

/**
 * The type Solicitacao bo.
 */
public class SolicitacaoBO {

    private SolicitacaoDAO solicitacaoDAO = null;

    /**
     * Criar solicitacao int.
     *
     * @param solicitacao the solicitacao
     * @return the int
     */
    public int criarSolicitacao (Solicitacao solicitacao) {
        solicitacaoDAO = new SolicitacaoDAO();
        return solicitacaoDAO.criarSolicitacao(solicitacao);
    }

    /**
     * Listar solicitacao list.
     *
     * @return the list
     */
    public List<Solicitacao> listarSolicitacao(){
        solicitacaoDAO = new SolicitacaoDAO();
        return solicitacaoDAO.listarSolicitacao();
    }

    /**
     * Detalhar solicitacao solicitacao.
     *
     * @param id the id
     * @return the solicitacao
     */
    public Solicitacao detalharSolicitacao(int id){
        solicitacaoDAO = new SolicitacaoDAO();
        return solicitacaoDAO.detalharSolicitacao(id);
    }

    /**
     * Atualizar solicitacao int.
     *
     * @param solicitacao the solicitacao
     * @param id          the id
     * @return the int
     */
    public int atualizarSolicitacao(Solicitacao solicitacao, int id) {
        solicitacaoDAO = new SolicitacaoDAO();
        return solicitacaoDAO.atualizarSolicitacao(solicitacao, id);
    }

}
