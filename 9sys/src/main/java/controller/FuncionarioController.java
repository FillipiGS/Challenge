package controller;

import bean.Funcionario;
import bo.FuncionarioBO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/cadastrar", "/listar", "/detalhar", "/atualizar", "/deletar"})
public class FuncionarioController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public FuncionarioController(){
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        switch (request.getRequestURI()) {
            case "/_9sys-1.0-SNAPSHOT/cadastrar":
                cadastrarFuncionario(request, response);
                break;

            case "/_9sys-1.0-SNAPSHOT/listar":
                listarFuncionario(request, response);
                break;

            case "/_9sys-1.0-SNAPSHOT/detalhar":
                detalharFuncionario(request, response, Integer.parseInt(request.getParameter("id")));
                break;

            case "/_9sys-1.0-SNAPSHOT/atualizar":
                atualizarFuncionario(request, response);
                break;

            case "/_9sys-1.0-SNAPSHOT/deletar":
                deletarFuncionario(request, response);
                break;

            default:
                response.sendRedirect("index.jsp");

        }

    }

    private void deletarFuncionario(HttpServletRequest request, HttpServletResponse response) throws IOException {
        FuncionarioBO funcionarioBO = new FuncionarioBO();
        int resultado = funcionarioBO.deletaFuncionario(Integer.parseInt(request.getParameter("id")));

        if (resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.del");
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.del_err");
        }
    }

    private void atualizarFuncionario(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Funcionario funcionario = null;
        funcionario = new Funcionario();
        funcionario.setNome(request.getParameter("nome"));
        funcionario.setSobrenome(request.getParameter("sobrenome"));
        funcionario.setEmail(request.getParameter("email"));

        FuncionarioBO funcionarioBO = new FuncionarioBO();
        int resultado = funcionarioBO.atualizaFuncionario(funcionario, Integer.parseInt(request.getParameter("id")));

        if (resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.upd");
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.upd_err");
        }

    }

    private void detalharFuncionario(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {

        FuncionarioBO funcionarioBO = new FuncionarioBO();
        Funcionario funcionario = funcionarioBO.detalhaFuncionario(id);

        if (funcionario != null) {
            request.setAttribute("objFuncionario", funcionario);
            request.setAttribute("objIdFuncionario", id);

            request.getRequestDispatcher("atualiza.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }
    }

    public void cadastrarFuncionario(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Funcionario funcionario = new Funcionario();

        funcionario.setId(Integer.parseInt(request.getParameter("id")));
        funcionario.setEmail(request.getParameter("email"));
        funcionario.setNome(request.getParameter("nome"));
        funcionario.setSobrenome(request.getParameter("sobrenome"));
        funcionario.setCpf(request.getParameter("cpf"));
        funcionario.setSenha(request.getParameter("senha"));
        funcionario.setSalario(Integer.parseInt(request.getParameter("salario")));
        funcionario.setDataNascimento(request.getParameter("dataNascimento"));
        funcionario.setDataAdmissao(request.getParameter("dataAdmissao"));
        funcionario.setPermissaoAdmin(request.getParameter("permissaoAdmin"));

        System.out.println(funcionario.getId());
        System.out.println(funcionario.getEmail());
        System.out.println(funcionario.getNome());
        System.out.println(funcionario.getSobrenome());
        System.out.println(funcionario.getCpf());
        System.out.println(funcionario.getSenha());
        System.out.println(funcionario.getSalario());
        System.out.println(funcionario.getDataNascimento());
        System.out.println(funcionario.getDataAdmissao());
        System.out.println(funcionario.getPermissaoAdmin());

        FuncionarioBO funcionarioBO = new FuncionarioBO();
        int resultado = funcionarioBO.cadastraFuncionario(funcionario);

        if (resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.ins");
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.ins_err");
        }

    }

    public void listarFuncionario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FuncionarioBO funcionarioBO = new FuncionarioBO();
        List<Funcionario> lista = funcionarioBO.listaFuncionario();

        if (lista != null) {
            request.setAttribute("lista_funcionario", lista);
            request.getRequestDispatcher("/WEB-INF/lista.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }

    }

}
