<%@ include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<main>
    <!--seteo de variables con JSQL//-->
    <c:set var="idProducto" value="${producto.id_producto}" />
    <c:set var="proNombre" value="${producto.nombre}" />
    <c:set var="proDescripcion" value="${producto.descripcion}" />
    <c:set var="proPrecio" value="${producto.precio_unitario}" />
    <c:set var="proCategoria" value="${producto.categoria}" />
    <!--Fin de seteo de variables//-->

    <form action="http://localhost:8080/jpa-laboratorio-1.0-SNAPSHOT/servlet_producto" method="post">

        <div class="container " style="margin-top: 30px;" >
            <div class="card mb-3 row col-10">
                <div class="card-header alert alert-primary">
                    <strong>Actualizar información del estudiante</strong>
                </div>
                <div class="card-body ">
                    <div class="mb-1 row">
                        <input type="hidden" value="${idProducto}" name="txtid">
                        <label for="inputName" class="card-title">Nombre</label>
                        <div class="col-10">
                            <input type="text" value="${proNombre}" class="form-control" name="txtnombre" id="inputName" placeholder="Name">
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="mb-1 row">
                        <label for="inputName" class="card-title">Descripcion</label>
                        <div class="col-10">
                            <input type="text" value="${proDescripcion}" class="form-control" name="txtdescripcion" id="inputName">
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="mb-1 row">
                        <label for="inputName" class="card-title">Precio unitario</label>
                        <div class="col-10">
                            <input type="text" value="${proPrecio}" class="form-control" name="txtpreciounitario" id="inputName">
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="mb-1 row">
                        <label for="inputName" class="card-title">Categoria</label>
                        <div class="col-10">
                            <input type="text" value="${proCategoria}" class="form-control" name="txtcategoria" id="inputName">
                        </div>
                    </div>
                </div>
                <div class="card-footer text-muted">
                    <input type="submit" value="Guardar información" name="btnUpdate" class="btn btn-dark">
                </div>
            </div>
        </div>

    </form>

</main>

<%@ include file="footer.jsp" %>