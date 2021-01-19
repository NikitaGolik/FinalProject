<%--
  Created by IntelliJ IDEA.
  User: Nikitos
  Date: 09.01.2021
  Time: 19:08
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
<fmt:message bundle="${locale}" key="locale.submit" var="submit"/>
<fmt:message bundle="${locale}" key="locale.cancel" var="cancel"/>
<div id="add-genre" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;  </button>
                <h4 class="modal-title" id="myModalLabel">${addGenreForMovie}</h4>
            </div>
            <div class="modal-body text-center">
                <form class="form-horizontal" method="post" action="DispatcherServlet">
                    <input type="hidden" name="command" value="add-genre-for-movie"/>
                    <input type="hidden" name="id" value="${movie.id}"/>
                    <div class="form-group">
                        <label for="inputUsername" class="col-sm-3 control-label">${genre}</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="inputUsername" placeholder="${genre}"
                                   name="name" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-7">
                            <button type="submit" class="btn btn-primary">${submit}</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">${cancel}</button>
            </div>
        </div>
    </div>
</div>

