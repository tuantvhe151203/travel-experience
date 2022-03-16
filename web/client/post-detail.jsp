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

                            <a href="">Đăng nhập/ Tham Gia</a>

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
                                        <c:forEach items="${categories}" var="categories">
                                            <li>
                                                <a href="danh-muc?category_id=${categories.category_id}">${categories.name}</a>
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
                            <div class="carousel-item active">
                                <img src="https://huykira.net/wp-content/themes/blogv3/images/banner.jpg" style="height: 300px" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="https://huykira.net/wp-content/themes/blogv3/images/banner.jpg" style="height: 300px" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="https://huykira.net/wp-content/themes/blogv3/images/banner.jpg" style="height: 300px" class="d-block w-100" alt="...">
                            </div>
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
                                
                                
                                <div class="post-detail mt-4">

                                    <h2 class="mb-3"> ${post.title}  </h2>
                                    <p>  ${post.short_new}  </p>
                                     <img src=" ${post.images}  " style="width:100%;height: 100%;">
                                    <h3> ${post.content}  </h3>

                                   

                                 
                                </div>
                                

                                <div class="comment">
                                    <h5>Góc Phản Hồi</h5>
                                    <div class="mb-3">
                                        <label for="exampleFormControlInput1" class="form-label">Email</label>
                                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleFormControlTextarea1" class="form-label">BÃ¬nh Luáº­n</label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    </div>
                                    <div class="col-auto">
                                        <button type="submit" class="btn btn-primary mb-3">Viáº¿t BÃ¬nh Luáº­n</button>
                                    </div>
                                </div>
                                <div class="comment-detail">
                                    <div class="card mb-3" style="max-width: 100%">
                                        <div class="row g-0">
                                            <div class="col-md-4">
                                                <img style="width:30%" src="https://cuoifly.tuoitre.vn/820/0/ttc/r/2020/07/09/markfb01-1594306085.jpg" class="img-fluid rounded-start" alt="...">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h4>Phan Cong Khanh</h4>
                                                    <p class="card-text">Bai Viet Rat Hay</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-3">
                                <div class="sidebar mt-4">
                                    <h4 class="mb-4">KINH NGhIỆM DU LỊCH</h4>
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
                                <H4>Thông Tin Liên Hệ</H4>
                                <p style="text-align: justify">Traveling Life chuyÃªn trang du lá»ch vá»i ráº¥t nhiá»u dá»¯ liá»u vá» thiÃªn nhiÃªn, vÄn hÃ³a, áº©m thá»±c cá»§a Viá»t Nam cÅ©ng nhÆ° tháº¿ giá»i. Káº¿t ná»i cá»ng Äá»ng du lá»ch gáº§n nhau hÆ¡n. Chia sáº» kiáº¿n thá»©c bá» Ã­ch cho má»i Äá»c giáº£!</p>


                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
                            <div class="box-footer ">
                                <H4>Địa Chỉ</H4>
                                <p><i class="fa-solid fa-address-card"></i> LK11-02, KÄT An HÆ°ng, Tá» Há»¯u, HÃ  ÄÃ´ng, HÃ  Ná»i.</p>
                                <p>CÃNG TY Cá» PHáº¦N THÆ¯Æ NG Máº I BILLIONS
                                    Sá» ÄKKD 0107704947 do Sá» Káº¿ hoáº¡ch vÃ  Äáº§u tÆ° TP HÃ  Ná»i cáº¥p ngÃ y 13 thÃ¡ng 01 nÄm 2017.</p>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
                            <h4>Liên Hệ</h4>
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