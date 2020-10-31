package bo;

import bean.Agenda;
import dao.AgendaDAO;

/**
 * The type Agenda bo.
 */
public class AgendaBO {

    private AgendaDAO agendaDAO = null;

    /**
     * Criar compromisso int.
     *
     * @param agenda the agenda
     * @return the int
     */
    public int criarCompromisso(Agenda agenda) {
        agendaDAO = new AgendaDAO();
        return agendaDAO.criarCompromisso(agenda);

    }

}
