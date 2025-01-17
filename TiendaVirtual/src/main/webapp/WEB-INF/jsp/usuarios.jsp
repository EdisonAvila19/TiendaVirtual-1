<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Usuarios</title>
	<link href="../css/estilos.css" rel="stylesheet">
	<!--<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
</head>
<body class="bodyUsuarios">
	${alerta}
	<!-- <div class='alert alert-danger alert-dismissable' role='alert'>No agregado.</div> -->
	<!-- <div class='alert alert-success alert-dismissable' role='alert'>Agregado.</div> -->
	<!-- <div class='alert alert-danger alert-dismissable' role='alert'>Eliminado.</div> -->
	<section class="sectionUsuarios">
		<form class="divUsuarios" method="post" action="" name="userForm">
			<table class="camposUsuarios">
				<tr>
					<td><label class="labelUsuarios" for="cedula">Cédula:</label> </td>
					<td><input type="text" class="datoUsuarios" id="cedula" name="ced" size="42"placeholder="Escriba su cédula sin puntos ni comas" ></td>
					<td><label class="labelUsuarios" for="usuario">Usuario:</label> </td>
					<td><input type="text" class="datoUsuarios" id="usuario" name="user" size="40"placeholder="Escriba su usuario" ></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="nombre">Nombre Completo:</label> </td>
					<td><input type="text" class="datoUsuarios" id="nombre" name="nom_comp" size="42" placeholder="Escriba su nombre completo"></td>
					<td><label class="labelUsuarios" for="password">Contraseña:</label> </td>
					<td><input type="password" class="datoUsuarios" id="password" name="contra" size="40" placeholder="Escriba su contraseña"></td>
				</tr>
				<tr>
					<td><label class="labelUsuarios" for="correo">Correo Electrónico:</label> </td>
					<td><input type="email" class="datoUsuarios" id="correo" name="correo" size="42" placeholder="Escriba su correo electrónico. Ej: tu@correo.com"></td>
				</tr>
			</table>
			<div class="botonesUsuarios">
				<button type="submit" id="btn botonCrear" class="btn btnUsuarios" name="crear">Crear</button>
                ${btnact}
                <!-- <button type="submit" class="btn btn-warning"  name="crear">Actualizar usuario</button> -->
                ${btncancel}
                <!-- <button type="submit" class="btn btn-danger"  name="crear">Cancelar</button> -->
			</div>
		</form>
	</section>
    <section id="buscador">
			<label class="labelUsuarios">Buscar usuario</label>
			<input type="text" class="datoUsuarios" id="formulario">
    </section>
	<section class="sectionUsuarios__table"><!--my-custom-scrollbar table-wrapper-scroll-y  table-responsive-->
        <table class="Usuarios_table" > <!-- table-hover table-striped -->
            <thead class="tablas">
                <tr>
                    <th>#</th>
                    <th>Cedula</th>
                    <th>Nombre</th>
                    <th>Correo Electronico</th>
                    <th>Usuario</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody id="Usuarios_info_table"><tbody>
        </table>
    </section>
    <script>
	    let usuarios = [
	    	<c:forEach items="${listado}" var="x">
	    		{id:"", cedula:"${x.cedula}", nombre:"${x.nombre_usuario}", email:"${x.email_usuario}", usuario:"${x.usuario}"},
	    	</c:forEach>
	    ]
    </script>
    <script src="../js/filtro.js"></script>
</body>
</html>