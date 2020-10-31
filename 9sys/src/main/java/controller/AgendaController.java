package controller;

import bean.Agenda;
import bo.AgendaBO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet (urlPatterns = {"/criar"})
public class AgendaController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public AgendaController() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {

        switch (request.getRequestURI()) {
            case "/_9sys-1.0-SNAPSHOT/criar":
                criarCompromisso(request, response);
                break;
            default:
                response.sendRedirect("index.jsp");
        }

    }

    public void criarCompromisso(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Agenda agenda = new Agenda();
        agenda.setId(Integer.parseInt(request.getParameter("id")));
        agenda.setFuncionario(request.getParameter("funcionario"));
        agenda.setDescricao(request.getParameter("descricao"));
        agenda.setDataCompromisso(Date.valueOf(request.getParameter("dataCompromisso")));

        AgendaBO agendaBO = new AgendaBO();
        int resultado = agendaBO.criarCompromisso(agenda);

        if (resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.ins");
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.ins_err");
        }

    }

}
