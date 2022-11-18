<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="tournaments">
	<h2>Tournaments:</h2>
	<div class="container">
		<br />
		<c:if test="${message != null}">
		<div class="alert alert-${messageType}">
			<c:out value="${message}"></c:out>
			<a href="#" class="close" data-dismiss="alert" aria-label="close">X</a>
		</div>
		</c:if>
	</div>
	<a href="/tournaments/create"><span class="glyphicon glyphicon-plus sucess" aria-hidden="true"></span>Create tournament</a>
	<table class="table table-striped">
		<tr>
			<th>Name</th>
			<th>Players</th>			
			<th>Actions</th>
		</tr>
		 <c:forEach items="${tournaments}" var="p">
			<tr>
				<td><c:out value="${p.id}"/></td>				
				<td>Tournament of:
					<ul>
					<c:forEach items="${p.players}" var="o">
						<li><c:out value="${o.name}"/></li>
					</c:forEach>
					</ul>
				</td>
				<td>
					<a href="/tournaments/edit/${p.id}"><span class="glyphicon glyphicon-pencil warning" aria-hidden="true"></span></a>&nbsp;<a href="/tournaments/delete/${p.id}"><span class="glyphicon glyphicon-trash alert" aria-hidden="true"></a> </td>
			</tr>
		</c:forEach>		
	</table>
    
</petclinic:layout>