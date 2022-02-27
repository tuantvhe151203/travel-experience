<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>

<script language="javascript">
function deleteRecord(id){
    var =confirm('Do you want to delete the record?');
  if(doIt){
   var f=document.form;
    f.method="post";
    f.action='../DeleteServlet?id='+id;
    f.submit();
    }
  else{

    }
}

</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Student</title>
    </head>
    <body>
        <table border="1px solid black">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Dob</th>
            </tr>
            <c:forEach items="${listS}" var="x">
                <tr>
                    <td>${x.id}</td>
                    <td>${x.name}</td>
                    <td>
                        <c:if test="${x.gender==1}">
                            Male
                        </c:if>
                        <c:if test="${x.gender==0}">
                            Female
                        </c:if>
                    </td>
                    <td>${x.dob}</td>
                    <td>
                        <a href="update?sid=${x.id}">Update</a>
                        <a onclick="confirm()" href="delete?sid=${x.id}">Delete</a>

                    </td>
                </tr>
            </c:forEach>

        </table>
        <a href="Add.jsp">Create</a>    
    </body>
</html>
 