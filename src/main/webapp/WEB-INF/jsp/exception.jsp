<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="dobble" tagdir="/WEB-INF/tags" %>

<dobble:layout pageName="error">

    <spring:url value="/resources/images/favicon.png" var="dobbleImage"/>
    <img src="${dobbleImage}"/>

    <h2>Something happened...</h2>

    <p>${exception.message}</p>

</dobble:layout>
