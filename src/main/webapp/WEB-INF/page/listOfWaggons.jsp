<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/form.css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <title>List of waggons</title>
</head>
<body>
<h1>List of waggons</h1>
<p>Here you can see the list of waggons,remove or update them.</p>
<table border="1px" cellpadding="0" cellspacing="0">
    <thread>
        <tr>
            <th width="10%">shift size</th>
            <th width="10%">capacity</th>
            <th width="10%">status</th>
            <th width="10%">current city</th>
        </tr>
    </thread>
    <tbody>
        <c:forEach var = "waggons" items="${waggons}">
            <tr>
                <td>${waggon.idWaggon}</td>
                <td>${waggon.regNumber}</td>
                <td>${waggon.shiftSize}</td>
                <td>${waggon.capacity}</td>
                <td>${waggon.status}</td>
                <td>${waggon.currentCity}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/waggons/edit/${waggon.idWaggon}.html">Edit</a><br/>
                    <a href="${pageContext.request.contextPath}/waggons/delete/${waggon.idWaggon}.html">Edit</a><br/>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<p><a href="${pageContext.request.contextPath}/"></a></p>
</body>
</html>