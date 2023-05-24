<style>
    tbody tr:nth-child(even) {
        background-color: lightblue;
    }

    tbody tr:nth-child(odd) {
        background-color: lightsteelblue;
    }
</style>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include flush="true" page="header.jsp"/>
<a href="register" class="btn btn-primary float-right">Register New</a>
<h4 class="text-center mb-2 border-bottom pb-2">Registered Users</h4>
<table class="table table-bordered table-fixed">
    <thead class="table-dark">
    <tr style="position:sticky;top:0;">
    	<th>Student Id</th>
        <th>Student Name </th>
        <th>Address</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody style="overflow: scroll">
    
    <c:forEach var="u" items="${list }">
    <tr>                    
        <td>${u.student.id }</td>
        <td>${u.student.name }</td>
        <td>${u.student.address }</td>
        <td>${u.student.phone }</td>
        <td>${u.student.email }</td>
        <td>${u.isactive ? 'Active' : 'Inactive' }</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<jsp:include page="footer.jsp"></jsp:include>
