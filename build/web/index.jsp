<%-- 
    Document   : index
    Created on : Dec 28, 2025, 11:32:14 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            Double result = (Double)request.getAttribute("result");
            String error = (String)request.getAttribute("error");
            String msg = (String)request.getAttribute("msg");
        %>
        <h1>MÁY TÍNH</h1>
        <form action="calculate" method="POST">
           num 1:  <input type="text" name="num1" value="" />
           num 2:  <input type="text" name="num2" value="" />
           <select name="pheptinh">
               <option value="+">CỘNG</option>
               <option value="-">TRỪ</option>
               <option value="*">NHÂN</option>
               <option value="/">CHIA</option>
           </select>
           <input type="submit" value="calculate" />
        </form> <br>
        <% if (result != null) { %>
            <p>Kết quả: <strong><%= result %></strong></p>
        <% } %>

        <% if (error != null) { %>
            <p style="color:red"><%= error %></p>
        <% } %>

        <% if (msg != null) { %>
            <p style="color:red"><%= msg %></p>
        <% } %>
       
    </body>
</html>
