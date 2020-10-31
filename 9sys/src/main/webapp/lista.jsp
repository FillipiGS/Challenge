<%@ page import="bean.Funcionario" %>
<%@ page import="dao.FuncionarioDAO" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="f" %>

<%--
  Created by IntelliJ IDEA.
  User: filli
  Date: 27/10/2020
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Funcionários</title>
</head>
<body>


<h1>Esse é um teste da lista!</h1>


<%
    List<Funcionario> list=FuncionarioDAO.listar();
    request.setAttribute("list",list);
%>

<table border="1" width="90%">
   <th>Nome</th><th>Sobrenome</th><th>Email</th><th>Data de Nascimento</th>

    <c:forEach items="${list}" var="funcionario">
        <tr>
            <td>${funcionario.nome}</td>
            <td>${funcionario.sobrenome}</td>
            <td>${funcionario.email}</td>
            <td><f:formatDate value="${funcionario.dataNascimento}" pattern="dd/MM/yyyy"/></td>
        </tr>
    </c:forEach>


</table>

</body>
</html>
