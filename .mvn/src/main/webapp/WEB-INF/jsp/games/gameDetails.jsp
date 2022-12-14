<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dobble" tagdir="/WEB-INF/tags" %>

<dobble:layout pageName="games">

    <h2>Game Information</h2>


    <table class="table table-striped">
        <tr>
            <th>Gamemode</th>
            <td><b><c:out value="${game.gamemode}"/></b></td>
        </tr>
        <tr>
            <th>Owner</th>
            <td><c:out value="${game.owner}"/></td>
        </tr>
        <tr>
            <th>winner</th>
            <td><c:out value="${game.winner}"/></td>
        </tr>
        <tr>
            <th>users</th>
            <td><c:out value="${game.users}"/></td>
        </tr>
    </table>

    <br/>
    <br/>
    <br/>

    

</dobble:layout>
