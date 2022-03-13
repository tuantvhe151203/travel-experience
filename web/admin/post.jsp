<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <%@include file="components/head.jsp"%>
        <title>Bài viết</title>
        <script>
            function doUpdate(id)
            {
                window.location.href = "updatepost?post_id=" + id;
            }
            function doDelete(id)
            {
                var c = confirm("Bạn có chắc chắn muốn xóa?");
                if (c)
                {
                    window.location.href = "deletepost?post_id=" + id;
                }
            }
        </script>
    </head>
    <%@include file="components/menu.jsp"%>

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <a href="add-post"><button class="btn btn-success" style="margin-bottom: 20px">Thêm bài viết</button></a>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Bài viết</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tiêu đề</th>
                                <th>Danh mục</th>S
                                <th>Ảnh </th>
                              <th>Nội Dung</th>
                                <th>Ngày tạo</th>
                                
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                               <th>STT</th>
                                <th>Tiêu đề</th>
                                <th>Danh mục</th>S
                                <th>Ảnh </th>
                                <th>Nội Dung</th>
                                <th>Ngày tạo</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </tfoot>
                        <tbody>
                          
                            <c:forEach items="${posts}" var="posts">
                                <tr>
                                    
                                    <td>${posts.title}</td>
                                    <td>${posts.cate_id.name}</td>
                                    <td>${posts.short_new}</td>
                                    <td>${posts.content}</td>
                                    <td><img width="100px" src="${posts.images}"></td>
                                    <td>${posts.created_date}</td>
                                    <
                                    <th><input type="button" class="btn btn-primary" onclick="doUpdate(${posts.post_id});" value="Update"/></th>
                                    <th><input type="button" class="btn btn-danger" onclick="doDelete(${posts.post_id});" value="Delete"/></th>
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