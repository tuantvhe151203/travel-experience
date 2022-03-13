<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <title>Post</title>
        <%@include file="components/head.jsp"%>
    </head>
    <%@include file="components/menu.jsp"%>
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Thêm bài viết</h1>
        <form action="addpost" method="POST">
            
            <div class="form-group">
                <label for="my-input">Tiêu đề</label>
                <input id="title" class="form-control" type="text" name="title">
            </div>
            <div class="form-group">
                <label for="my-input">Miêu tả ngắn</label>
                <input id="short_new" class="form-control" type="text" name="short_new">
            </div>
            <div class="form-group">
                <label for="my-input">Ảnh bìa</label>
                  <input id="short_new" class="form-control" type="text" name="content">
            </div>
            <div class="form-group">
                <label for="my-input">Nội dung</label>
                <input id="my-input" class="form-control" type="text" name="images">
            </div>
            <div class="form-group">
                <label for="my-input">Ngày tạo</label>
                <input id="my-input" class="form-control" value="${create_date}" readonly="" type="date" name="create_date">
            </div>
            <div class="form-group">
                Danh mục: <select name="category_id" id="my-input" class="form-control">
                    <c:forEach items="${categories}" var="categories">
                        <option value="${categories.category_id}">${categories.name}</option>
                    </c:forEach>
                </select>
            </div>
          
            <div>
                <input class="btn btn-success" type="submit" value="Thêm">
                <a href="post"><button class="btn btn-danger" value="Hủy">Hủy</button></a>
            </div>
        </form>
    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<%@include file="components/footer.jsp"%>
<script>
    var editor = '';
    $(document).ready(function () {
        editor = CKEDITOR.replace()('content');
    });
</script>
</body>

</html>