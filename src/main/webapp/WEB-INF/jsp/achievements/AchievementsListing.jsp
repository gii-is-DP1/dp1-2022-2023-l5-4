<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dobble" tagdir="/WEB-INF/tags" %>

<dobble:layout pageName="achievements">
    
    <h2>Achievements</h2>
    <table id="achievementsTable" class="table table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>BadgeImage</th>
            <th>Threshold</th>
            <th>Metric</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${achievements}" var="achievement">
            <tr>
                <td>
                    <c:out value="${achievement.name}"/>
                </td>
                <td>                    
                      <c:out value="${achievement.actualDescription} "/>                                        
                </td>
                <td>                    
                    <c:if test="${achievement.badgeImage == ''}">none</c:if>
                    <c:if test="${achievement.badgeImage != ''}">
                        <img src="${achievement.badgeImage}" width="100px"  /> 
                    </c:if>
                </td>
                
                <td>       
                    <c:out value="${achievement.threshold} "/>
                </td>
            
                <td>       
                    <c:out value="${achievement.metric} "/>
                </td>
                
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <style>
        body {
        overflow: scroll; /* Agrega una barra de scroll vertical y horizontal */
        }

    </style>
    <a class="btn btn-default" href="/statistics/achievements/new">Create new achievement</a>
</dobble:layout>
