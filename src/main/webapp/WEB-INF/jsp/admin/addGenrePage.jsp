<%--
  Created by IntelliJ IDEA.
  User: Nikitos
  Date: 20.01.2021
  Time: 00:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="${sessionScope.language}"/>
<fmt:setBundle basename="locale" var="locale"/>
<fmt:message bundle="${locale}" key="locale.addGenreForMovie" var="addGenreForMovie"/>
<fmt:message bundle="${locale}" key="locale.genre" var="genre"/>
<fmt:message bundle="${locale}" key="locale.movie" var="movie"/>
<fmt:message bundle="${locale}" key="locale.movies" var="movies"/>
<fmt:message bundle="${locale}" key="locale.movieID" var="movieID"/>
<fmt:message bundle="${locale}" key="locale.genreID" var="genreID"/>
<fmt:message bundle="${locale}" key="locale.chooseAMovie" var="chooseAMovie"/>
<fmt:message bundle="${locale}" key="locale.chooseAGenre" var="chooseAGenre"/>
<fmt:message bundle="${locale}" key="locale.submit" var="submit"/>
<fmt:message bundle="${locale}" key="locale.cancel" var="cancel"/>

<c:if test="${sessionScope.get('user') == null && sessionScope.get('user').role ne 'admin'}">
    <c:redirect url="/index.jsp"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <title>${addGenreForMovie}</title>
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

        <div class="col-sm-8 text-left mainContent">
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
                    <label><input type="radio" name="command" value="add-genre-for-movie" checked/>${addGenreForMovie}</label>
                </p>

                 <label for="movieID">${chooseAMovie}</label>
                 <select name="movieID" id="movieID">
                <c:forEach var="item" items="${requestScope.movies}">
                    <option value="${item.id}">${item.title}</option>
                </c:forEach>
                 </select>

                <label for="genreID">${chooseAGenre}</label>
                <select name="genreID" id="genreID">
                    <option value="1">Comedy</option>
                    <option value="2">Action</option>
                    <option value="3">Documentary</option>
                    <option value="4">Drama</option>
                    <option value="5">Family</option>
                    <option value="6">Horror</option>
                    <option value="7">Adventure</option>
                    <option value="8">Thriller</option>
                    <option value="9">Musical</option>
                    <option value="10">Cartoon</option>
                    <option value="11">Detective</option>
                    <option value="12">Western</option>
                </select>
                <button type="submit" class="btn btn-primary">${submit}</button>
            </form>
        </div>

        <c:import url="../menu/slider.jsp"/>

    </br>
</div>
<c:import url="../menu/footer.jsp"/>
</body>
