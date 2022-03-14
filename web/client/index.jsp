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
			
			<a href="login.html">Đăng Nhập/ Tham Gia</a>
				
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
											<input type="text" class="search-text" placeholder="Tìm kiếm">
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
							<div class="top-post mt-4">
								<h2 class="mb-3">BÀI VIẾT</h2>
								<div class="row">

<c:forEach items="${getPostTop3BaiViet}" var="getPostTop3BaiViet">
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
				<div class="card" >
				<img src="${getPostTop3BaiViet.images}" class="card-img-top" alt="...">
				<div class="card-body">
				<a href="bai-viet?post_id=${getPostTop3BaiViet.post_id}&&category_id=${getPostTop3BaiViet.category_id.getCategory_id()}"><h5 class="card-title">${getPostTop3BaiViet.title}</h5></a>
				<p class="card-text">${getPostTop3BaiViet.short_new}</p>
												
			    </div>
				</div>
				</div>
		</c:forEach>							
									
								</div>
							</div>	
							<div class="list-post mt-4">
								<h2 class="mb-3">TIN TỨC</h2>
								<div class="new-post">
									<div class="card mb-3" >
										<div class="row g-0">
											<div class="col-md-4">
												<img src="https://nemtv.vn/wp-content/uploads/2019/06/maxresdefault-5-218x150.jpg" class="img-fluid rounded-start"
												style="width: 100%;" alt="...">
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">Card title</h5>
													<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="new-post">
									<div class="card mb-3" >
										<div class="row g-0">
											<div class="col-md-4">
												<img src="https://nemtv.vn/wp-content/uploads/2019/06/maxresdefault-5-218x150.jpg" class="img-fluid rounded-start"
												style="width: 100%;" alt="...">
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">Card title</h5>
													<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="new-post">
									<div class="card mb-3" >
										<div class="row g-0">
											<div class="col-md-4">
												<img src="https://nemtv.vn/wp-content/uploads/2019/06/maxresdefault-5-218x150.jpg" class="img-fluid rounded-start"
												style="width: 100%;" alt="...">
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">Card title</h5>
													<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="new-post">
									<div class="card mb-3" >
										<div class="row g-0">
											<div class="col-md-4">
												<img src="https://nemtv.vn/wp-content/uploads/2019/06/maxresdefault-5-218x150.jpg" class="img-fluid rounded-start"
												style="width: 100%;" alt="...">
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">Card title</h5>
													<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
													<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="new-post">
									<div class="card mb-3" >
										<div class="row g-0">
											<div class="col-md-4">
												<img src="https://nemtv.vn/wp-content/uploads/2019/06/maxresdefault-5-218x150.jpg" class="img-fluid rounded-start"
												style="width: 100%;" alt="...">
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">Card title</h5>
													<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
													<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-3">
							<div class="sidebar mt-4">
								<h4 class="mb-4">KINH NGHIỆM DU LỊCH</h4>
								<div class="card mt-3" style="width: 18rem;">
									<img src="https://nemtv.vn/wp-content/uploads/2019/04/can-tho-co-gi-nemtv-10.jpg" class="card-img-top" alt="...">
									<div class="card-body">
										<p class="card-text">Cần Thơ gạo trắng nước trong – Ai đi đến đó lòng không muốn về” là câu thơ người ta vẫn thường truyền nhau để ca ngợi miền đất sông nước xinh đẹp hiền hòa.</p>
									</div>
								</div>
								<div class="card mt-3" style="width: 18rem;">
									<img src="https://nemtv.vn/wp-content/uploads/2019/04/can-tho-co-gi-nemtv-10.jpg" class="card-img-top" alt="...">
									<div class="card-body">
										<p class="card-text">Cần Thơ gạo trắng nước trong – Ai đi đến đó lòng không muốn về” là câu thơ người ta vẫn thường truyền nhau để ca ngợi miền đất sông nước xinh đẹp hiền hòa.</p>
									</div>
								</div>
								<div class="card mt-3" style="width: 18rem;">
									<img src="https://nemtv.vn/wp-content/uploads/2019/04/can-tho-co-gi-nemtv-10.jpg" class="card-img-top" alt="...">
									<div class="card-body">
										<p class="card-text">Cần Thơ gạo trắng nước trong – Ai đi đến đó lòng không muốn về” là câu thơ người ta vẫn thường truyền nhau để ca ngợi miền đất sông nước xinh đẹp hiền hòa.</p>
									</div>
								</div>
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
							<H4>THÔNG TIN LIÊN HỆ</H4>
							<p style="text-align: justify">Traveling Life chuyên trang du lịch với rất nhiều dữ liệu về thiên nhiên, văn hóa, ẩm thực của Việt Nam cũng như thế giới. Kết nối cộng đồng du lịch gần nhau hơn. Chia sẻ kiến thức bổ ích cho mỗi độc giả!</p>
							

						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
						<div class="box-footer ">
							<H4>ĐỊA CHỈ</H4>
							<p><i class="fa-solid fa-address-card"></i> LK11-02, KĐT An Hưng, Tố Hữu, Hà Đông, Hà Nội.</p>
							<p>CÔNG TY CỔ PHẦN THƯƠNG MẠI BILLIONS
Số ĐKKD 0107704947 do Sở Kế hoạch và Đầu tư TP Hà Nội cấp ngày 13 tháng 01 năm 2017.</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
						<h4>LIÊN HỆ</h4>
						<p><i class="fa-solid fa-phone"></i>  Điện Thoại: 036 6644 100</p>
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