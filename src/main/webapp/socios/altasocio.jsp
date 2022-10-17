<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String dni = request.getParameter("dni");
    String nombre = request.getParameter("nombre");
    String apellidos = request.getParameter("apellidos");
    String direccion = request.getParameter("direccion");
    String numero = request.getParameter("numero");

    Socio socio = new Socio();
    socio.setDni(dni);
    socio.setNombre(nombre);
    socio.setApellidos(apellidos);
    socio.setDireccion(direccion);
    socio.setNumero(numero);

    List<Socio> socios = (List) session.getAttribute("socios");

    socios.add(socio);

    session.setAttribute("socios", socios);

    response.sendRedirect("socios.jsp");

%>