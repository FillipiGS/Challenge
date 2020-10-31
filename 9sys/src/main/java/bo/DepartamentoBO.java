package bo;

import bean.Departamento;
import dao.DepartamentoDAO;

/**
 * The type Departamento bo.
 */
public class DepartamentoBO {

    private DepartamentoDAO departamentoDAO = null;

    /**
     * Criar departamento int.
     *
     * @param departamento the departamento
     * @return the int
     */
    public int criarDepartamento (Departamento departamento) {
        departamentoDAO = new DepartamentoDAO();
        return departamentoDAO.criarDepartamento(departamento);
    }

}
