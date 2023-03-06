<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
    <title>User information</title>
</head>

<body>
<h2>User information</h2>
<hr>

<p>Check the user information below</p>

<hr>
<p>
    User:
    <security:authentication property="principal.username"/>
    <br><br>
    Role(s):
    <security:authentication property="principal.authorities"/>

    <p>First name: ${user.firstName}</p>
    <p>Last name: ${user.lastName}</p>
    <p>Email: ${user.email}</p>
</p>


    <security:authorize access="hasRole('MANAGER')">

        <p><a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a></p>

    </security:authorize>


    <security:authorize access="hasRole('ADMIN')">

        <p><a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a></p>

    </security:authorize>

<hr>

    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Logout"/>

    </form:form>

</body>

</html>









