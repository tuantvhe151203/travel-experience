<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <title>Post</title>
        <%@include file="components/head.jsp"%>
        <script>
            function doUpdate(id)
            {
                window.location.href = "updatecategory?cate_id=" + id;
            }
            function doDelete(id)
            {
                var c = confirm("Bạn có chắc chắn muốn xóa?");
                if (c)
                {
                    window.location.href = "deletecategory?cate_id=" + id;
                }
            }
        </script>
    </head>
    <%@include file="components/menu.jsp"%>

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Cập nhật bài viết</h1>
        <form action="updatepost" method="POST">
            <div class="form-group">
                <label for="my-input">Mã bài viết</label>
                <input id="my-input" class="form-control" value="${post.post_id}" type="text" name="post_id"  readonly="">
            </div>
            <div class="form-group">
                <label for="my-input">Tiêu đề</label>
                <input id="my-input" class="form-control" value="${post.title}"  type="text" name="title">
            </div>
            <div class="form-group">
                <label for="my-input">Miêu tả ngắn</label>
                <input id="my-input" class="form-control" value="${post.short_new}" type="text" name="short_new">
            </div>
            <div class="form-group">
                <label for="my-input">Nội dung</label>
                <textarea id="my-input" class="form-control" name="content">${post.content}</textarea>
            </div>
            <div class="form-group">
                <label for="my-input">Ảnh bìa</label>
                <input id="my-input" class="form-control" value="${post.images}" type="text" name="images">
            </div>
            <div class="form-group">
                <label for="my-input">Ngày tạo</label>
                <input id="my-input" class="form-control" value="${post.create_date}" type="date" name="create_date">
            </div>
             <div class="form-group">
                Danh mục: <select name="cetagory_id" id="my-input" class="form-control">
                    <c:forEach items="${categories}" var="categories">
                        <option
                            <c:if test="${categories.category_id eq post.getCategory_id().getCategory_id()}">
                                selected="selected"
                            </c:if>
                            value="${categories.category_id}">${categories.name}</option>
                    </c:forEach>
                </select>
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