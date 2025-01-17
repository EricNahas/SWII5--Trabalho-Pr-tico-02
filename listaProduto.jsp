<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Produtos</title>
</head>
<body>
    <h1>Lista de Produtos</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Unidade de Compra</th>
            <th>Descrição</th>
            <th>Quantidade Prevista por Mês</th>
            <th>Preço Máximo Comprado</th>
            <th>Ações</th>
        </tr>
        <c:forEach items="${listaProduto}" var="produto">
            <tr>
                <td>${produto.id}</td>
                <td>${produto.nome}</td>
                <td>${produto.unidadeCompra}</td>
                <td>${produto.descricao}</td>
                <td>${produto.qtdPrevistoMes}</td>
                <td>${produto.precoMaxComprado}</td>
                <td>
                    <a href="mostraProduto?id=${produto.id}">Mostrar</a>
					<a href="mostraProduto?id=${produto.id}&action=edit">Editar</a>
                    <a href="removeProduto?id=${produto.id}" >Excluir</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="formNovoProduto.jsp">Adicionar Novo Produto</a>
</body>
</html>
