package controller;

import bean.Departamento;
import bo.DepartamentoBO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/criar"})
public class DepartamentoController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public DepartamentoController() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {

        switch (request.getRequestURI()) {
            case "/_9sys-1.0-SNAPSHOT/criar":
                criarDepartamento(request, response);
                break;
            default:
                response.sendRedirect("index.jsp");
        }
    }

    public void criarDepartamento(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Departamento departamento = new Departamento();
        departamento.setId(Integer.parseInt(request.getParameter("id")));
        departamento.setNome(request.getParameter("nome"));

        DepartamentoBO departamentoBO = new DepartamentoBO();
        int resultado = departamentoBO.criarDepartamento(departamento);

        if (resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.ins");
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.ins_err");
        }

    }

}
