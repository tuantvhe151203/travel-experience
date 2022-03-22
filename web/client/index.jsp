<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang Chu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="fonts/css/all.css">

    </head>
    <body>
        <div id="wallpaper">
            <header>
                <div class="header-top text-center">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                            <div class="social">
                                <i class="fa-brands fa-facebook-square"></i>
                                <i class="fa-brands fa-instagram"></i>
                                <i class="fa-brands fa-youtube"></i>

                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">

                            <a href="login.jsp">Đăng Nhập/ Tham Gia</a>

                        </div>
                    </div>

                </div>
                <div class="main-header">
                    <div class="main-menu">
                        <div class="logo text-center">
                            <img src="images/5.jpg" alt="">
                        </div>
                        <div class="menu-header">
                            <div class="container">
                                <div class="main-menu text-center">
                                      
                                
                                    <ul>
                                        <li>
                                                <a href="trang-chu">Trang Chủ</a>
                                            </li>
                                        <c:forEach items="${categories}" var="categories">
                                            <li>
                                                <a href="danh-muc?category_id=${categories.getCategory_id()}">${categories.name}</a>
                                            </li>
                                        </c:forEach>
                                        <li>
                                            <div class="search-box">
                                                <input type="text" class="search-text" placeholder="Tìm Kiếm">
                                                <a href="" class="search-btn">
                                                    <i class="fa-solid fa-magnifying-glass"></i>
                                                </a>
                                            </div>
                                        </li>

                                    </ul>

                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </header>
            <div id="content">
                <div class="slide-show">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                             <c:forEach items="${getAllSlide}" var="getAllSlide">
                            <div class="carousel-item active">
                                <img src="${getAllSlide.images}" style="height: 300px" class="d-block w-100" alt="...">
                            </div>
                            </c:forEach>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <div class="main-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-9">
                                <div class="top-post mt-4">
                                    <h2 class="mb-3">Bài Viết</h2>
                                    <div class="row">
                                        <c:forEach items="${getPostTop3BV}" var="getPostTop3BV">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
                                                <div class="card" >
                                                    <img src="${getPostTop3BV.images}" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <a href="
                                                           bai-viet?post_id=${getPostTop3BV.post_id}&&cate_id=
                                                           ${getPostTop3BV.category_id.category_id}
                                                           ">
                                                            <h5 class="card-title">${getPostTop3BV.title}</h5>
                                                        </a>
                                                        <p class="card-text">${getPostTop3BV.short_new}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </div>
                                </div>	
                                <div class="list-post mt-4">
                                    <h2 class="mb-3">Nhật Ký</h2>



                                    <c:forEach items="${getTop6NhatKy}" var="getTop6NhatKy">
                                        <div class="new-post">
                                            <div class="card mb-3" >
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="${getTop6NhatKy.images}" class="img-fluid rounded-start"
                                                             style="width: 100%;" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            
                                                            <a href="
                                                           bai-viet?post_id=${getTop6NhatKy.post_id}&&cate_id=
                                                           ${getTop6NhatKy.category_id.category_id}
                                                           ">
                                                            <h5 class="card-title">${getTop6NhatKy.title}</h5>
                                                        </a>
                                                            <p class="card-text">${getTop6NhatKy.short_new}</p>
                                                            <p class="card-text"><small class="text-muted">${getTop6NhatKy.create_date}</small></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-3">
                                <div class="sidebar mt-4">
                                    <h4 class="mb-4">Khám Phá Du Lịch</h4>
                                    <c:forEach items="${getTop3KinhNGhiem}" var="getTop3KinhNGhiem">
                                        <div class="card mt-3" style="width: 18rem;">
                                            <img src="${getTop3KinhNGhiem.images}" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                  <a href="
                                                           bai-viet?post_id=${getTop3KinhNGhiem.post_id}&&cate_id=
                                                           ${getTop3KinhNGhiem.category_id.category_id}
                                                           ">
                                                            <h5 class="card-title">${getTop3KinhNGhiem.title}</h5>
                                                        </a>
                                                <p class="card-text">${getTop3KinhNGhiem.short_new}</p>
                                                  <p class="card-text"><small class="text-muted">${getTop3KinhNGhiem.create_date}</small></p>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                                <div class="banner text-center mt-3"  style="width: 100%">
                                    <img src="https://english.mic.gov.vn/Upload/Store/tintuc/vietnam/7/150-NAM-ITU-web-doc.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
                            <div class="box-footer">
                                <H4>THÃNG TIN LIÃN Há»</H4>
                                <p style="text-align: justify">Traveling Life chuyÃªn trang du lá»ch vá»i ráº¥t nhiá»u dá»¯ liá»u vá» thiÃªn nhiÃªn, vÄn hÃ³a, áº©m thá»±c cá»§a Viá»t Nam cÅ©ng nhÆ° tháº¿ giá»i. Káº¿t ná»i cá»ng Äá»ng du lá»ch gáº§n nhau hÆ¡n. Chia sáº» kiáº¿n thá»©c bá» Ã­ch cho má»i Äá»c giáº£!</p>


                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
                            <div class="box-footer ">
                                <H4>Äá»A CHá»</H4>
                                <p><i class="fa-solid fa-address-card"></i> LK11-02, KÄT An HÆ°ng, Tá» Há»¯u, HÃ  ÄÃ´ng, HÃ  Ná»i.</p>
                                <p>CÃNG TY Cá» PHáº¦N THÆ¯Æ NG Máº I BILLIONS
                                    Sá» ÄKKD 0107704947 do Sá» Káº¿ hoáº¡ch vÃ  Äáº§u tÆ° TP HÃ  Ná»i cáº¥p ngÃ y 13 thÃ¡ng 01 nÄm 2017.</p>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
                            <h4>LIÃN Há»</h4>
                            <p><i class="fa-solid fa-phone"></i>  Äiá»n Thoáº¡i: 036 6644 100</p>
                            <p><i class="fa-solid fa-envelope-open-text"></i>  Email: Travelinglife@gmail.com</p>
                        </div>
                    </div>
                </div>
            </footer>

        </div>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>