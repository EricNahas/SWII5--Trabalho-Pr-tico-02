<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:url value="/novoProduto" var="linkNovoProduto"/>
<!DOCTYPE html>
<html>
<body>
    <form action="${linkNovoProduto}" method="post">
        Nome: <input type="text" name="nome" /><br/>
        Unidade de Compra: <input type="number" name="unidadeCompra" /><br/>
        Descri��o: <input type="text" name="descricao" /><br/>
        Quantidade Prevista por M�s: <input type="number" step="any" name="qtdPrevistoMes" /><br/>
        Pre�o M�ximo Comprado: <input type="number" step="any" name="precoMaxComprado" /><br/>
        <input type="submit" value="Salvar" />
    </form>
</body>
</html>
