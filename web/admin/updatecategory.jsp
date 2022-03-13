<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Category</title>
        <%@include file="components/head.jsp"%>    
    </head>
    <%@include file="components/menu.jsp"%>
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Cập nhật danh mục</h1>
        <form action="updatecategory" method="POST">
            <div class="form-group">
                <label for="my-input">Mã danh mục</label>
                <input id="my-input" class="form-control" value="${category.category_id}" type="text" name="cate_id" readonly="">
            </div>
            <div class="form-group">
                <label for="my-input">Tên danh mục</label>
                <input id="my-input" class="form-control" value="${category.name}" type="text" name="cate_name">
            </div>
            <div>
                <input class="btn btn-success" type="submit" value="Cập nhật">
                <a href="category"><button class="btn btn-danger" value="Hủy">Hủy</button></a>
            </div>
        </form>
    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<%@include file="components/footer.jsp"%>
</body>
</html>