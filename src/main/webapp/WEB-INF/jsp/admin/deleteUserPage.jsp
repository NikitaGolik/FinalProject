<%--
  Created by IntelliJ IDEA.
  User: Nikitos
  Date: 14.01.2021
  Time: 00:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setLocale value="${sessionScope.language}"/>
<fmt:setBundle basename="locale" var="locale"/>
<fmt:message bundle="${locale}" key="locale.username" var="username"/>
<fmt:message bundle="${locale}" key="locale.leaveBlank" var="leaveBlankParticipantID"/>
<fmt:message bundle="${locale}" key="locale.deleteUser" var="deleteUser"/>
<fmt:message bundle="${locale}" key="locale.submit" var="submit"/>

<c:if test="${sessionScope.get('user') == null && sessionScope.get('user').role ne 'admin'}">
    <c:redirect url="/index.jsp"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <title>${deleteUser}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<c:import url="../menu/menu.jsp"/>

<div class="container-fluid text-center wrapper">
    <br class="row content">
        <c:import url="../menu/adminMenu.jsp"/>
        <br class="col-sm-8 text-left mainContent">
        <c:if test="${requestScope.get('errorMessage')!=null}">
            <h3 class="red"><c:out value="${requestScope.get('errorMessage')}"/></h3>
            <c:remove var="errorMessage" scope="request"/>
        </c:if>
        <c:if test="${requestScope.get('successMessage')!=null}">
            <h3 class="green"><c:out value="${requestScope.get('successMessage')}"/></h3>
            <c:remove var="successMessage" scope="request"/>
        </c:if>
        <br>
        <form action="DispatcherServlet" method="post">
            <p>
                <label><input type="radio" name="command" value="delete-user" checked/>${deleteUser}</label>
            </p>

            <label for="username">${username}<br></label>
            <input id="username" class="form-control" type="text" name="username" required>
            <br/>
            <button type="submit" class="btn btn-primary">${submit}</button>
        </form>
    </br>
</div>
</div>
<c:import url="../menu/footer.jsp"/>
</body>
</html>
