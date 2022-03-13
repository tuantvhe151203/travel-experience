<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <title>Category</title>
        <%@include file="components/head.jsp"%>
        <script>
            function doUpdate(id)
            {
                window.location.href = "update-category?cate_id=" + id;
            }
            function doDelete(id)
            {
                var c = confirm("Bạn có chắc chắn muốn xóa?");
                if (c)
                {
                    window.location.href = "delete-category?cate_id=" + id;
                }
            }
        </script>
    </head>
    <%@include file="components/menu.jsp"%>

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <a href="add-category"><button class="btn btn-success" style="margin-bottom: 20px">Thêm danh mục</button></a>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Danh mục</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Ten Danh Muc</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>STT</th>
                                <th>Name</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </tfoot>
                        <tbody>
                           
                            <c:forEach items="${categories}" var="categories">
                                <tr>
                                   
                                    <td>${categories.name}</td>
                                    <th><input type="button" class="btn btn-primary" onclick="doUpdate(${categories.category_id});" value="Update"/></th>
                                    <th><input type="button" class="btn btn-danger" onclick="doDelete(${categories.category_id});" value="Delete"/></th>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<%@include file="components/footer.jsp"%>

</body>
</html>