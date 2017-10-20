<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<title>Livros de Java, Android, IPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<form:form action="${s:mvcUrl('PC#gravar').build() }" method="POST" commandName="produto">
		<div class="form-group row">
			<label for="titulo" class="col-sm-1 col-form-label">Título</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="titulo" name="titulo" placeholder="Título">
			</div>
				<form:errors path="titulo" class="alert alert-danger" role="alert"/>
		</div>
		<div class="form-group row">
			<label for="descricao" class="col-sm-1 col-form-label">Descrição</label>
			<div class="col-sm-3">
				<textarea rows="10" cols="20" class="form-control" id="descricao" name="descricao" placeholder="Insira a descrição do livro"></textarea>
			</div>
				<form:errors path="descricao" class="alert alert-danger" role="alert"/>
		</div>
		<div class="form-group row">
			<label for="paginas" class="col-sm-1 col-form-label">Páginas</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="paginas" name="paginas" placeholder="Páginas">
			</div>
				<form:errors path="paginas" class="alert alert-danger" role="alert"/>
		</div>
		<c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
			<div class="form-group row">
				<label class="col-sm-1 col-form-label" for="${tipoPreco }">${tipoPreco }</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="${tipoPreco }" name="precos[${status.index}].valor" placeholder="${tipoPreco }"> <input
						type="hidden" class="form-control" name="precos[${status.index}].tipo"
						value="${tipoPreco }">
				</div>
			</div>
		</c:forEach>
		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form:form>
</body>
</html>