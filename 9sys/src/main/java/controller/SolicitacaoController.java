package controller;

import bean.Solicitacao;
import bo.SolicitacaoBO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

@WebServlet(urlPatterns = {"/criar", "/listar", "/detalhar"})
public class SolicitacaoController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public SolicitacaoController() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        switch (request.getRequestURI()) {
            case "/_9sys-1.0-SNAPSHOT/criar":
                criarSolicitacao(request, response);
                break;
            case "/_9sys-1.0-SNAPSHOT/listar":
                listarSolicitacao(request, response);
                break;
            case "/_9sys-1.0-SNAPSHOT/detalhar":
                detalharSolicitacao(request, response, Integer.parseInt(request.getParameter("id")));
                break;
            case "/_9sys-1.0-SNAPSHOT/atualizar":
                atualizarSolicitacao(request, response);
                break;
            default:
                response.sendRedirect("index.jsp");
        }

    }

    public void criarSolicitacao(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Solicitacao solicitacao = new Solicitacao();
        solicitacao.setId(request.getParameter("id"));
        solicitacao.setTitulo(request.getParameter("titulo"));
        solicitacao.setAnexo(request.getParameter("anexo"));
        solicitacao.setDescricao(request.getParameter("descricao"));
        solicitacao.setStatus(request.getParameter("status"));

        /* System.out.println(solicitacao.getId());
        System.out.println(solicitacao.getTitulo());
        System.out.println(solicitacao.getAnexo());
        System.out.println(solicitacao.getDescricao());
        System.out.println(solicitacao.getStatus()); */

        SolicitacaoBO solicitacaoBO = new SolicitacaoBO();
        int resultado = solicitacaoBO.criarSolicitacao(solicitacao);

        if (resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.ins");
        } else {
            response.sendRedirect("index.jsp?msgStatus=erro.ins_err");
        }

    }

    public void listarSolicitacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SolicitacaoBO solicitacaoBO = new SolicitacaoBO();

        List<Solicitacao> lista = solicitacaoBO.listarSolicitacao();

        if (lista != null) {
            request.setAttribute("listaSolicitacoes", lista);
            request.getRequestDispatcher("/webapp/solicitacoes.jsp").forward(request, response);
        }else{
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }
    }

    private void detalharSolicitacao(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
        SolicitacaoBO solicitacaoBO = new SolicitacaoBO();
        Solicitacao solicitacao = solicitacaoBO.detalharSolicitacao(id);

        if(solicitacao != null) {
            request.setAttribute("objSolicitacao", solicitacao);
            request.setAttribute("objIdSolicitacao", id);

            //Realizar o encaminhamento para a pï¿½gina atualiza.jsp.
            request.getRequestDispatcher("atualiza.jsp").forward(request, response);
        }else{
            //Criando um parï¿½metro no com uma mensagem de erro para a pï¿½gina JSP index.
            response.sendRedirect("index.jsp?msgStatus=erro.list_err");
        }

    }

    private void atualizarSolicitacao(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Solicitacao solicitacao = new Solicitacao();
        solicitacao.setTitulo(request.getParameter("titulo"));
        solicitacao.setDescricao(request.getParameter("descricao"));
        solicitacao.setStatus(request.getParameter("status"));
        solicitacao.setAnexo(request.getParameter("anexo"));

        SolicitacaoBO solicitacaoBO = new SolicitacaoBO();
        int resultado = solicitacaoBO.atualizarSolicitacao(solicitacao, Integer.parseInt(request.getParameter("id")));

        if(resultado == 1) {
            response.sendRedirect("index.jsp?msgStatus=sucesso.upd");
        }else {
            response.sendRedirect("index.jsp?msgStatus=erro.upd_err");
        }

    }


}
