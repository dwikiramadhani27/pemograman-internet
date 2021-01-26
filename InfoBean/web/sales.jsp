<%-- 
    Document   : sales
    Created on : Jan 15, 2021, 3:05:05 PM
    Author     : Endang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/WEB-INF/jspf/header.jspf" %>

<jsp:useBean id="userData" scope="session" class="com.infobean.UserData" />
<jsp:setProperty name="userData" property="*" />

<html>
 <head>
 <title>JSP Page</title>
 </head>
 <body>
 <h2> Selamat Datang , <%=userData.getNamaUser()%> </h2>
 ID ANDA = <jsp:getProperty name="userData" property="idUser" /> <br>
 USIA ANDA = <jsp:getProperty name="userData" property="umur" /> <br>

 <p> </p>
 <a href="index.jsp" > LOGIN </a>
 </body>
</html> 
