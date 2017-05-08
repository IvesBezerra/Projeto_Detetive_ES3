<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar tema</title>
    <head>
        <link rel="stylesheet" type="text/css"
              href="${contextPath}/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    </head>
<body>
<form id="logoutForm" method="POST" action="${contextPath}/logout">
</form>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Backoffice</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a onclick="document.forms['logoutForm'].submit()">Logout</a></li>
        </ul>
    </div>
</nav>

<div class="col-xs-12 col-sm-8 col-sm-offset-2 col-xs-offset-2">
    <div class="panel panel-default">
        <div class="panel-heading">Novo Tema</div>
        <div class="panel-body">
            <form method="POST" action="${contextPath}/themes/${theme.id}">
                <div class="form-group">
                    <label for="email">Nome:</label> <input type="text"
                                                            maxlength="60"
                                                            class="form-control" name="name" value="${theme.name}">
                </div>
                <div class="form-group">
                    <label for="pwd">Pre�o:</label> <input type="number" min="1"
                                                           step="any" class="form-control" name="price"
                                                           value="${theme.price}"/>
                </div>

                <div class="form-group">
                    <label>Papel de fundo do tabuleiro</label>
                    <img id="card" width="100%" height="100%" src="<c:url value="/cards/${card.cardSrc}"/>"
                         alt="Foto da imagem"/>

                </div>
                <input type="submit" class="btn btn-primary" value="Salvar"/>
                <a class="btn btn-default" href="${contextPath}/themes">Voltar</a>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript" src="${contextPath}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript"
        src="${contextPath}/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>