<%--
  Created by IntelliJ IDEA.
  User: ieglezos
  Date: 07/03/2021
  Time: 08:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%
        String year = request.getParameter("year");
        String result = request.getParameter("result");
        System.out.println(year);
    %>
    <div class="marginTable" data-pubid="<%=year%>" data-count="5"></div>
<%--        <p><h1>Τα εισιτηρια για τη χρονιά <span id="year"> είναι <span id="result"></h1></p>--%>
</body>
</html>
