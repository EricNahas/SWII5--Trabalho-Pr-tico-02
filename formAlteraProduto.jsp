<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
    <c:url value="/alteraProduto" var="linkAlteraProduto"/>
<!DOCTYPE html>
<html>
<body>
    <form action="${linkAlteraProduto}" method="post">
        ID: <input type="hidden" name="id" value="${produto.id}" /><br/>
        Nome: <input type="text" name="nome" value="${produto.nome}" /><br/>
        Unidade de Compra: <input type="number" name="unidadeCompra" value="${produto.unidadeCompra}" /><br/>
        Descri��o: <input type="text" name="descricao" value="${produto.descricao}" /><br/>
        Quantidade Prevista por M�s: <input type="number" step="any" name="qtdPrevistoMes" value="${produto.qtdPrevistoMes}" /><br/>
        Pre�o M�ximo Comprado: <input type="number" step="any" name="precoMaxComprado" value="${produto.precoMaxComprado}" /><br/>
        <input type="submit" value="Atualizar" />
    </form>
</body>
</html>