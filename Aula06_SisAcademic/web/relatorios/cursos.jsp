<%@page import="java.util.Map"%>
<%@page import="br.sisacamic.model.Curso"%>
<%@page import="br.siscademic.dao.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    CursoDAO cDAO = new CursoDAO();
    Map<Curso, Integer> cursos = cDAO.getTodosCursosCountAlunos();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisAcademic</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
        <div class="container mt-4">
            <table class="table justify-content-center">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Curso</th>
                        <th scope="col">Tipo de Curso</th>
                        <th scope="col">Qtd. Alunos</th>
                        <th scope="col">Ver Alunos</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(Map.Entry<Curso, Integer> c : cursos.entrySet()) { %>
                    <tr>
                        <td><%=c.getKey().getNomeCurso()%></td>
                        <td><%=c.getKey().getTipoCurso()%></td>
                        <td><%=c.getValue()%></td>
                        <td>Bt. Ver Alunos</td>
                        <td>Bt. Editar</td>
                        <td>Bt. Excluir</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </body>
</html>
