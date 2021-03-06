USE [Ass_PRJ]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 03/23/2022 13:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[content] [text] NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 03/23/2022 13:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([category_id], [name]) VALUES (14, N'Tin Tức')
INSERT [dbo].[category] ([category_id], [name]) VALUES (17, N'Cẩm nang')
INSERT [dbo].[category] ([category_id], [name]) VALUES (20, N'Nhật Ký')
INSERT [dbo].[category] ([category_id], [name]) VALUES (21, N'Kinh Nghiệm')
INSERT [dbo].[category] ([category_id], [name]) VALUES (22, N'Liên Hệ')
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[account]    Script Date: 03/23/2022 13:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON
INSERT [dbo].[account] ([user_id], [username], [password], [email], [role]) VALUES (2, N'admin', N'admin', N'admin@gmail.com', N'1')
INSERT [dbo].[account] ([user_id], [username], [password], [email], [role]) VALUES (6, N'admintl', N'admintl', N'tuantvhe@gmail.com1', N'1')
INSERT [dbo].[account] ([user_id], [username], [password], [email], [role]) VALUES (8, N'tanang', N'123', N't@gmail.com', N'1')
INSERT [dbo].[account] ([user_id], [username], [password], [email], [role]) VALUES (11, N'tuan', N'123', N'tuantvhe@gmail.com1', N'1')
INSERT [dbo].[account] ([user_id], [username], [password], [email], [role]) VALUES (12, N'phantom', N'123', N'tuantvhe@gmail.com1', N'1')
INSERT [dbo].[account] ([user_id], [username], [password], [email], [role]) VALUES (13, N'phandungtran', N'123', N'tuantvhe@gmail.com1', N'1')
INSERT [dbo].[account] ([user_id], [username], [password], [email], [role]) VALUES (14, N'admin', N'123', N't@gmail.com', N'1')
SET IDENTITY_INSERT [dbo].[account] OFF
/****** Object:  Table [dbo].[slide]    Script Date: 03/23/2022 13:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slide](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[images] [nvarchar](1000) NULL,
 CONSTRAINT [PK_slide] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[slide] ON
INSERT [dbo].[slide] ([slider_id], [images]) VALUES (6, N'https://huykira.net/wp-content/themes/blogv3/images/banner.jpg')
SET IDENTITY_INSERT [dbo].[slide] OFF
/****** Object:  Table [dbo].[post]    Script Date: 03/23/2022 13:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1000) NULL,
	[short_new] [nvarchar](3000) NULL,
	[images] [nvarchar](3000) NULL,
	[content] [nvarchar](3000) NULL,
	[create_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[post] ON
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (16, N'NGHỈ LỄ 30/4 NÊN ĐI ĐÂU CHƠI? ', N'Với 5 ngày nghỉ dài xuyên suốt trong đợt lễ lớn sắp tới, 30/4 nên đi đâu chơi liệu có phải câu hỏi mà khiến nhiều người vẫn còn đau đầu hay chăng? ', N'https://nemtv.vn/wp-content/uploads/2019/03/30-4-di-dau-choi-nhi-1.jpg', N'Với 5 ngày nghỉ dài xuyên suốt trong đợt lễ lớn sắp tới, 30/4 nên đi đâu chơi liệu có phải câu hỏi mà khiến nhiều người vẫn còn đau đầu hay chăng?  Để kiếm tìm một địa điểm du lịch trong nước vào những ngày lễ', CAST(0xB3430B00 AS Date), 14)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (17, N'Trà Vinh có gì chơi? 8+ địa điểm ', N'Bãi Ba Động nằm ở xã Trường Long Hà, huyện Duyên Hải, tỉnh Trà Vinh. Đây là điểm đến hấp dẫn không chỉ du khách trong nước mà còn nhiều du khách nước ngoài.  Mang trong mình vẻ hoang sơ, khí hậu khá trong lành và những triền cát dài thơ mộng, bãi biển là một nơi tránh nóng lý tưởng của người Trà Vinh nói riêng và những ngườ', N'https://nemtv.vn/wp-content/uploads/2019/03/tra-vinh-co-gi-nemtv-2.jpg', N'Cái tên “Ba Đông” bắt nguồn từ việc mỗi khi thủy triều rút xuống, bãi biển nổi lên 3 đụn cát, 2 đụn lớn và 1 đụn nhỏ nên người dân thích thú gọi là “BA ĐỘNG”.  Những triền cát nhấp nhô, những rặng phi lao xanh xanh đung đưa trước gió sẽ khiến bạn không thể quên được bãi biển độc đáo này.  Một ngày đẹp trời, đến với bãi biển, bạn không', CAST(0xB3430B00 AS Date), 14)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (18, N'Tháng 5 đi du lịch ở đâu? 5+ Địa điểm du lịch THÁNG 5 lý tưởng để “đưa nhau đi trốn”', N'Tháng 5 đi du lịch ở đâu? là câu hỏi được nhiều người đặt ra nhất khi kì n', N'https://nemtv.vn/wp-content/uploads/2019/03/thang-5-di-du-lich-nemtv.jpg', N'Tháng 5 được xem là khoảng thời gian lý tưởng để đi du lịch Mai Châu, vì khi đó ở đây có thời tiết ôn hòa, dễ chịu và ổn định nhất.  Đến Mai Châu vào thời điểm này, bạn không chỉ được tận hưởng bầu không khí trong lành, ngắm nhìn cảnh đẹp thiên nhiên xung quanh mà còn được tham gia lễ hội cầu mưa cực độc đáo và hấp dẫn của người Thái tại đây.   | Khám phá ngay: Du lịch ', CAST(0xB3430B00 AS Date), 14)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (19, N'Công viên 23/9 – Thiên đường vui chơi, mua sắm của mọi giới ở Sài Gòn', N'Thật khó để xác định chiều dài của công viên, chỉ biết rằng nó trải dài từ công trường Quách Thị Trang đến tận chợ Nguyễn Thái Bình – ở trên đường Nguyễn Trãi', N'https://nemtv.vn/wp-content/uploads/2019/03/cong-vien-23-9-nemtv-3.jpg', N'Tại sao có tên là “Công viên 23/9”? Để nói về lịch sử của cái tên thì là một câu chuyện khá dài. Người ta nói rằng: Trước đây, công viên là ga xe lửa của Sài Gòn do người Pháp xây dựng từ thế kỷ 19.  Sau ngày 30 tháng 4 năm 1975, ga xe lửa không còn lý do để tồn tại nên nó bị phá huỷ và dời đến được dời đến quận 3 của thành phố Hồ Chí Minh.', CAST(0xB3430B00 AS Date), 14)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (21, N'Huyền thoại Đồi Tức Dụp và màu xanh bình yên trở...', N'Đồi Tức Dụp thuộc thị trấn Tri Tôn của tỉnh An Giang. Nơi đây là một căn cứ địa vững chắc của quân dân An Giang trong kháng chiến chống Mỹ một thời khói lửa.', N'https://nemtv.vn/wp-content/uploads/2019/03/doi-tuc-dup-nemtv-1.jpg', N'Đồi Tức Dụp – Ngọn đồi của huyền thoại xa xưa kỳ bí Nhắc đến Tức Dụp người ta hay nhớ đến núi Cô Tô – bởi ngọn núi này có một huyền tích để xây dựng nên ngọn đồi ngày nay.  Chuyện kể rằng, từ cái thuở ban của đất trời, tiên nữ thường đến đỉnh núi Cô Tô để dạo chơi, tắm mát.', CAST(0xB5430B00 AS Date), 20)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (22, N'Miếu Bà Chúa Xứ linh thiêng ở vùng Châu Đốc An Giang', N'Miếu Bà Chúa Xứ tọa lạc ngay dưới chân của ngọn núi Sam – ở Núi Sam – Châu Đốc – An Giang. Là một điểm đến linh thiêng, hấp dẫn không chỉ du khách trong nước mà còn nước ngoài.', N'https://nemtv.vn/wp-content/uploads/2019/03/mieu-ba-chua-xu-nemtv-1.jpg', N'Miếu Bà Chúa Xứ được hình thành hoàn toàn dựa trên truyền thuyết được truyền miệng cách đây 200 năm.  Chuyện kể là, trên đỉnh núi Sam ngày ấy bỗng nhiên xuất hiện tượng Bà nên mới bàn nhau đưa bà xuống nhờ sức trẻ của những chàng trai cường tráng trong vùng.', CAST(0xB5430B00 AS Date), 20)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (23, N'Bến Nhà Rồng – “Từ di tích lịch sử đến công trình vĩ đại”', N'Từ lâu, Bến Nhà Rồng đã trở thành biểu tượng của Thành phố Hồ Chí Minh. Nơi đây ghi dấu biết bao thăng trầm của lịch sử, đặc biệt đây còn là nơi Bác Hồ ra đi tìm đường cứu nước.', N'https://nemtv.vn/wp-content/uploads/2019/03/ben-nha-rong-nemv-1.jpg', N'Bến Nhà Rồng ở đâu? Bến nhà Rồng thực chất là một thương cảng, nằm trên dòng sông Sài Gòn và được xây dựng từ 1864.  Bến Nhà Rồng ở đâu? – Nằm gần cây cầu Khánh Hội, Số 1 đường Nguyễn Tất Thành, Phường 12, Quận 4, TP. Hồ Chí Minh.', CAST(0xB5430B00 AS Date), 20)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (24, N'Lạc lối ở Chợ Tịnh Biên – Chợ biên giới sầm uất ở An Giang', N'hợ Tịnh Biên – Chợ biên giới của Việt Nam và Campuchia, từ lâu đã được mệnh danh là trung tâm thương mại – dịch vụ, cửa ngõ quan trọng của biên giới phía Tây Nam.', N'https://nemtv.vn/wp-content/uploads/2019/03/cho-tinh-bien-nemtv-1.jpg', N'Chợ Tịnh Biên ở đâu? Chợ Tịnh Biên thuộc Thị trấn Tịnh Biên – một thị trấn biên giới giữa 2 nước Việt Nam và Campuchia.  Gần chợ là Cửa khẩu Quốc tế Tịnh Biên (theo tiếng Khmer là Ca Bao) là một cửa khẩu chính của 2 đất nước.', CAST(0xB5430B00 AS Date), 20)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (25, N'Đến Phan Thiết nhất định phải ghé qua Làng Chài Mũi Né', N'Làng chài Mũi Né không chỉ hấp dẫn bởi nhịp sống mưu sinh hối hả của những người dân miền biển mà còn cuốn hút du khách vì cảnh quan thiên nhiên hoang sơ của miền đất hứa.', N'https://nemtv.vn/wp-content/uploads/2019/03/lang-chai-mui-ne-nemtv-1-1.jpg', N'Địa chỉ Làng chài Mũi Né Làng Chài Mũi Né nằm dọc theo bờ biển Mũi Né. Làng chài dài khoảng 1km, đây là bãi biển có sóng yên biển lạnh, thích hợp cho tàu bè tránh trú ẩn trong những ngày giông bão.  Nép mình lặng lẽ bên con đường Huỳnh Thúc Kháng thơ mộng, nằm xen giữa nhiều hàng dừa cao cao rất riêng của những vùng xứ biển.', CAST(0xB5430B00 AS Date), 20)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (26, N'Tháp Bánh Ít – Độc đáo kiến trúc Champa ở Bình Định', N'Tháp Bánh Ít (tháp Bạc) thuộc xã Phước Hiệp, huyện Tuy Phước, tỉnh Bình Định. Đây là quần thể tháp lớn mang đậm dấu ấn văn hóa Chăm cổ đại trên đất Bình Định.', N'https://nemtv.vn/wp-content/uploads/2019/03/thap-banh-it-nemtv-1.jpg', N'Tòa tháp mang những giá trị văn hóa cổ đại. đậm nét của người Chăm trong từng nét chạm trổ nhỏ.  Tháp Bánh Ít nằm trên quả đồi tự nhiên, ngọn đồi này cao chừng 500m được ôm ấp bởi hai nhánh của sông Côn (còn được gọi là sông Kone).', CAST(0xB5430B00 AS Date), 20)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (27, N'BIỂN THẠCH HẢI – BÃI BIỂN HOANG SƠ BỊ LÃNG QUÊN Ở HÀ TĨNH', N'Bãi biển Thạch Hải trải dài 23km kéo dài từ Thiên Cầm đến Xuân Thành. Thuộc huyện Thạch Hà, tỉnh Hà Tĩnh. Với bãi biển phẳng lỳ, n', N'https://nemtv.vn/wp-content/uploads/2019/06/maxresdefault-2-768x432.jpg', N'hẳng lỳ, nước trong vắt, cát trắng óng ả, bờ biển thoai thoải lại có độ sâu khá nông gần bờ. Biển Thạch Hải Hà Tĩnh xứng đáng là nơi lý tưởng cho những gia đình có trẻ nhỏ và khách du lịch.', CAST(0xB5430B00 AS Date), 21)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (28, N'CHÙA HƯƠNG TÍCH – HÀ TĨNH CŨNG CÓ MỘT CHÙA HƯƠNG ĐẸP ĐẾN THẾ', N'Nhắc đến chùa Hương, nhiều người sẽ nghĩ ngay đến chùa Hương ở Hương Sơn, Mỹ Đức, Hà Nội. Tuy nhiên, ở mảnh đ', N'https://nemtv.vn/wp-content/uploads/2019/05/maxresdefault-2-768x432.jpg', N'Được mệnh danh là “Hoan châu đệ nhất danh lam”. Xếp vào hàng 21 thắng cảnh nước Nam xưa kia. Chùa Hương Tích hay còn gọi là Hương Tích Cổ Tự (có nghĩa là Chùa Thơm).  Nằm ở độ cao 650m so với mặt nước biển. Tọa lạc trên lưng chừng đỉnh Hương Tích, một trong những ngọn núi đẹp nhất của dãy núi Hồng Lĩnh. Thuộc xã Thiên Lộc, huyện Can Lộc, tỉnh ', CAST(0xB5430B00 AS Date), 21)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (29, N'ĐỊA ĐẠO VỊNH MỐC – NGÔI LÀNG KIÊN CƯỜNG 2000 NGÀY TRONG LÒNG ĐẤT', N'Với hàng trăm nghìn trận bom lớn nhỏ với hơn nửa triệu tấn bom đạn các loại. Không ai có thể ngờ vẫn có một địa đạo Vịnh Mốc – một thế giới sống và chiến đấu ở trong lòng đất, biệt lập hoàn toàn với thế giới bên ', N'https://nemtv.vn/wp-content/uploads/2019/03/kinh-nghiem-du-lich-yen-bai-1-nemtv.jpg', N'Tiềm năng du lịch Yên Bái là một tỉnh có phong cảnh thiên nhiên đa dạng, nhiều danh lam thắng cảnh nổi tiếng, nhiều di tích lị', CAST(0xB5430B00 AS Date), 21)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (30, N'TOP 12 ĐIỂM DU LỊCH MIỀN TÂY “KHÔNG THỂ BỎ LỠ”', N'Từ lâu miền Tây đã nổi tiếng là vùng sông nước tuyệt vời bậc nhất của Việt Nam. Cùng Nếm điểm qua 10 nơi mà khi đến du lịch miền Tây nhất định phải ghé nhé.', N'https://nemtv.vn/wp-content/uploads/2019/04/du-lich-mien-tay.jpg', N'Du lịch miền tây – qua AN GIANG ghé rừng tràm Trà Sư Đầu tiên, để đến được rừng tràm thì bạn phải đi qua con đường thơ mộng với những đồng lúa trải rộng ngút ngàn đến tận chân trời như không có điểm dừng.', CAST(0xB7430B00 AS Date), 17)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (31, N'Top 6 khách sạn Đà Nẵng đẹp mê ly – Chạy ngay đi không lỡ quên ngày về!', N'Bài viết “Top những khách sạn tốt nhất nên ghé qua khi đến Đà Nẵng”, do Nếm TV tổng hợp lại những khách sạn Đà Nẵng. Hy vọng sẽ là những thông tin cần thiết khi các bạn đến với thành phố xinh đẹp này.', N'https://nemtv.vn/wp-content/uploads/2019/04/khach-san-da-nang-nemtv-1.jpg', N'Nằm trong khu bãi biển Mỹ Khê, khách sạn Four Points by Sheraton Danang hiện oai vệ ở thành phố xinh đẹp này. Tiêu chuẩn của khách sạn sẽ là nơi mang lại cảm giác thoải mái tối đa cho du khách. Các dịch vụ nghỉ ngơi sẽ được cung cấp đầy đủ và tiện nghi nhất.', CAST(0xB7430B00 AS Date), 17)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (32, N'“Bạch Dinh” – Vẻ đẹp kiến trúc cổ kính đậm chất Âu', N'ũng Tàu đâu chỉ nổi tiếng với bãi biển đẹp với sóng xanh, cát trắng, nắng vàng nên thơ hay chốn “tiên cảnh” Mũi Nghinh Phong. Giữa phố biển rực rỡ ánh đèn, Bạch Dinh Vũng Tàu là công trình kiến trúc cổ xưa đẹp “hết nấc” mang đậm dấu ấn Pháp, nơi ghi dấu ấn lịch sử dân tộc thu hút mọi du khách đến tham quan và khám phá.', N'https://nemtv.vn/wp-content/uploads/2019/04/bach-dinh-vung-tau-nemtv-3.jpg', N'ũng Tàu đâu chỉ nổi tiếng với bãi biển đẹp với sóng xanh, cát trắng, nắng vàng nên thơ hay chốn “tiên cảnh” Mũi Nghinh Phong. Giữa phố biển rực rỡ ánh đèn, Bạch Dinh Vũng Tàu là công trình kiến trúc cổ xưa đẹp “hết nấc” mang đậm dấu ấn Pháp, nơi ghi dấu ấn lịch sử dân tộc thu hút mọi du khách đến tham quan và khám phá.', CAST(0xB7430B00 AS Date), 17)
INSERT [dbo].[post] ([post_id], [title], [short_new], [images], [content], [create_date], [category_id]) VALUES (34, N'dsadasdas', N'dsadsadasdsa', N'https://nemtv.vn/wp-content/uploads/2019/03/doi-tuc-dup-nemtv-1.jpg', N'dsadas', CAST(0xB7430B00 AS Date), 14)
SET IDENTITY_INSERT [dbo].[post] OFF
/****** Object:  ForeignKey [FK_post_category]    Script Date: 03/23/2022 13:07:30 ******/
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_post_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_post_category]
GO
