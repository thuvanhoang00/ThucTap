import Felgo 3.0
import QtQuick 2.12

JsonListModel {
    id: root

    property var dataSource: [
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/i/m/img060.u5505.d20170806.t231255.628303.jpg",
            "mainPrice": "99200",
            "originalPrice": "124000",
            "rating": "4.7",
            "ratingCount": "6",
            "tags": "CNTT",
            "title": "Doanh Nghiệp Và Điện Toán Đám Mây",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/w/o/word.u2469.d20170110.t155740.521285.png",
            "mainPrice": "41200",
            "originalPrice": "53000",
            "rating": "4",
            "ratingCount": "6",
            "tags": "CNTT",
            "title": "Học Nhanh Word 2003 & 2007 Dành Cho Mọi Người",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/d2/c6/e8/f5badbc58316182dce1debe1f0d1fea0.jpg",
            "mainPrice": "123900",
            "originalPrice": "150000",
            "rating": "4",
            "ratingCount": "5",
            "tags": "CNTT",
            "title": "Lập Trình Điều Khiển Xa Với ESP8266, ESP32 Và Arduino",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/s/o/so-tay-tin-hoc-van-phong-danh-cho-nhan-vien-thu-ky.jpeg",
            "mainPrice": "41200",
            "originalPrice": "53000",
            "rating": "4.6",
            "ratingCount": "5",
            "tags": "CNTT",
            "title": "Sổ Tay Tin Học Dành Cho Nhân Viên Thư Ký",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/45/fb/11/ccb50561b06205e790f3fd2272a8a7e6.jpg",
            "mainPrice": "124800",
            "originalPrice": "156000",
            "rating": "4.8",
            "ratingCount": "5",
            "tags": "CNTT",
            "title": "Tự Học Nhanh,Microsoft Office (Word - Excel)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/95/29/0b/dca7d5985fcc5ad4fe0144079383ae5d.png",
            "mainPrice": "540000",
            "originalPrice": "600000",
            "rating": "5",
            "ratingCount": "4",
            "tags": "CNTT",
            "title": "Combo bộ sách học lập trình Scratch 3.0 và luyện thi hội thi tin học trẻ",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/3d/91/8c/41c3aa84eec5328463bf97e5bc12a2ae.jpg",
            "mainPrice": "113500",
            "originalPrice": "142000",
            "rating": "4.3",
            "ratingCount": "4",
            "tags": "CNTT",
            "title": "Thiết Kế Với Solidworks: Lý Thuyết-Thực Hành",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/6b/83/d3/54e439a85c1f941fda4d58d34f0a89c1.jpg",
            "mainPrice": "89000",
            "originalPrice": "98000",
            "rating": "4",
            "ratingCount": "4",
            "tags": "CNTT",
            "title": "Thiết Kế Kết Cấu Bê Tông Cốt Thép Dùng Sap2000 V15",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/4c/2d/76/dc2370bf88252653aa4542de8ab0c5f5.jpg",
            "mainPrice": "120000",
            "originalPrice": "150000",
            "rating": "4.5",
            "ratingCount": "4",
            "tags": "CNTT",
            "title": "Lập Trình Và Giám Sát Mạng Truyền Thông Công Nghiệp Scada",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/i/m/img688_4.jpg",
            "mainPrice": "42800",
            "originalPrice": "53000",
            "rating": "3.3",
            "ratingCount": "4",
            "tags": "CNTT",
            "title": "Tự Học Adobe InDesign CS5",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/i/m/img683_9.jpg",
            "mainPrice": "34200",
            "originalPrice": "44000",
            "rating": "4.5",
            "ratingCount": "4",
            "tags": "CNTT",
            "title": "Tự Học Nhanh Word 2007",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/c2/79/96/60839df7e50e0209eb01c14f8d64309d.jpg",
            "mainPrice": "113600",
            "originalPrice": "142000",
            "rating": "5",
            "ratingCount": "4",
            "tags": "CNTT",
            "title": "Giáo Trình Thực Hành CorelDraw X7, X8, X9 Và 2020",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/76/06/fc/12d9918e9e364aa505c04d91128cf2bd.jpg",
            "mainPrice": "137500",
            "originalPrice": "172000",
            "rating": "5",
            "ratingCount": "3",
            "tags": "CNTT",
            "title": "Arduino Và Thiết Bị Bay",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/09/8e/42/951e1fc21b98376f48418e2fe800bb38.jpg",
            "mainPrice": "132900",
            "originalPrice": "175000",
            "rating": "3.7",
            "ratingCount": "3",
            "tags": "CNTT",
            "title": "Revit Toàn Tập (Lý Thuyết-Thực Hành)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/a6/74/a5/2a1f40aef489fc92489c73c4a943609d.jpg",
            "mainPrice": "112900",
            "originalPrice": "155000",
            "rating": "5",
            "ratingCount": "3",
            "tags": "CNTT",
            "title": "Lập Trình Với PLC S7 1500 Và RSLOGIX",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/6f/bf/fa/9f003975f38f087215253e0636425b33.jpg",
            "mainPrice": "121500",
            "originalPrice": "152000",
            "rating": "4.3",
            "ratingCount": "3",
            "tags": "CNTT",
            "title": "Mạng Truyền Thông Công Nghiệp Scada Lý Thuyết - Thực Hành",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/bd/18/be/21abf970e001c61ea523ad30a5c66aac.jpg",
            "mainPrice": "370500",
            "originalPrice": "434000",
            "rating": "5",
            "ratingCount": "3",
            "tags": "CNTT",
            "title": "Combo Kinh Điển Về Công Nghệ và Thông Tin: Giáo Trình Kỹ Thuật Lập Trình C Căn Bản Và Nâng Cao + Hacker Lược Sử / top những cuốn sách hay xuất sắc",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/e3/e7/ba/afd69447b2de588e2ff3aa46ad631ecf.jpg",
            "mainPrice": "113100",
            "originalPrice": "169000",
            "rating": "4.6",
            "ratingCount": "55",
            "tags": "Kinhte",
            "title": "Forex 101",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/653fae67b553651693b63e098389673c",
            "mainPrice": "56000",
            "originalPrice": "80000",
            "rating": "4.8",
            "ratingCount": "54",
            "tags": "Kinhte",
            "title": "Sổ Tay Khởi Nghiệp",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/b4160ebbe78d2056637f816d41346b72",
            "mainPrice": "135000",
            "originalPrice": "299000",
            "rating": "5",
            "ratingCount": "53",
            "tags": "Kinhte",
            "title": "Donald Trump - Màn Trình Diễn Vĩ Đại",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/4c3a6260b3067fff644c9f5898326055",
            "mainPrice": "104250",
            "originalPrice": "139000",
            "rating": "5",
            "ratingCount": "53",
            "tags": "Kinhte",
            "title": "Tỷ Phú Bán Giày (Tái Bản 2021)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/e2d5f2eee82ffb1fa6d472f020dffa1a",
            "mainPrice": "58000",
            "originalPrice": "129000",
            "rating": "4.8",
            "ratingCount": "53",
            "tags": "Kinhte",
            "title": "Xây Dựng Mối Quan Hệ Bền Vững Trong Kinh Doanh",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/ee/d2/80/3d36d427335acff1e1b648601c15fa41.jpg",
            "mainPrice": "55800",
            "originalPrice": "90000",
            "rating": "4.4",
            "ratingCount": "52",
            "tags": "Kinhte",
            "title": "Tạo Lập Kế Hoạch Kinh Doanh Hoàn Hảo",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/3c/a2/05/7c62a62944b6ff3ceb7b6ad9a3b4d70e.jpg",
            "mainPrice": "157400",
            "originalPrice": "210000",
            "rating": "4.7",
            "ratingCount": "51",
            "tags": "Kinhte",
            "title": "Tương Lai Thuộc Về Châu Á",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/73/ad/18/d263a7cca8d5f2440ca705d3fb729580.jpg",
            "mainPrice": "90400",
            "originalPrice": "135000",
            "rating": "4.7",
            "ratingCount": "51",
            "tags": "Kinhte",
            "title": "Bản Sắc - Nhu Cầu Phẩm Giá Và Chính Trị Phẫn Nộ",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/b3fd1b76d3c20f0fb57e8dd1e2e1c253",
            "mainPrice": "179250",
            "originalPrice": "239000",
            "rating": "5",
            "ratingCount": "50",
            "tags": "Kinhte",
            "title": "Khởi nghiệp công nghệ – Máu bẩn",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/bedbc80af9c4be3ac45e4d641c1fcd7f",
            "mainPrice": "47000",
            "originalPrice": "75000",
            "rating": "5",
            "ratingCount": "22",
            "tags": "Kinhte",
            "title": "Thay Đổi Tư Duy Trong Bán Lẻ",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/4cfb5dfdcdf1fbe19f9ce93c3ffcc635",
            "mainPrice": "100000",
            "originalPrice": "159000",
            "rating": "4.7",
            "ratingCount": "22",
            "tags": "Kinhte",
            "title": "Sốc - Sự Trỗi Dậy Của Chủ Nghĩa Tư Bản Thảm Họa",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/97a060da30ac5be6a311e72476495955",
            "mainPrice": "59000",
            "originalPrice": "98000",
            "rating": "4.8",
            "ratingCount": "22",
            "tags": "Kinhte",
            "title": "Kích Hoạt Tài Năng Bán Hàng",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://vn-test-11.slatic.net/p/235edac6c4322acb583bb2e788364b2b.jpg",
            "mainPrice": "188999",
            "originalPrice": "200000",
            "rating": "4.8",
            "ratingCount": "22",
            "tags": "Kinhte",
            "title": "Tài Chính Cá Nhân Dành Cho Người Việt Nam - Tặng Kèm Khóa Học Online Về Tài Chính Cá Nhân (In Lần 2)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/ab/fa/cd/3220b4dac1f50035b534f7b5a907b62e.jpg",
            "mainPrice": "143900",
            "originalPrice": "235000",
            "rating": "4.8",
            "ratingCount": "619",
            "tags": "Lichsu",
            "title": "Đại Việt Sử Ký Toàn Thư Trọn Bộ (Tái Bản 2020)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/f6/c4/c1/37cc7da534a3a25e39e4b5e32bf5f6ba.jpg",
            "mainPrice": "122850",
            "originalPrice": "189000",
            "rating": "4.5",
            "ratingCount": "595",
            "tags": "Lichsu",
            "title": "Homo Deus: Lược Sử Tương Lai",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/e0/6b/b5/b35ac1a77b072f06916d62902c061040.jpg",
            "mainPrice": "536400",
            "originalPrice": "789000",
            "rating": "4.7",
            "ratingCount": "361",
            "tags": "Lichsu",
            "title": "Leonardo Da Vinci",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/v/i/viet-nam-su-luoc_ban-dac-biet_bia_16x24_bia-ao_bia-cung-1.u2751.d20170310.t114104.442232.jpg",
            "mainPrice": "158400",
            "originalPrice": "198000",
            "rating": "4.8",
            "ratingCount": "315",
            "tags": "Lichsu",
            "title": "Việt Nam Sử Lược (Bản Đặc Biệt - Ấn Bản Kỉ Niệm 60 Năm NXB Kim Đồng)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/b/i/bia-1---lich-su-the-gioi_bia-trong.u547.d20170221.t120651.51421.jpg",
            "mainPrice": "442500",
            "originalPrice": "590000",
            "rating": "4.8",
            "ratingCount": "284",
            "tags": "Lichsu",
            "title": "Lịch Sử Thế Giới: Chân Dung Nhân Loại Theo Dòng Sự Kiện",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/c0/c8/32/14f94f1200ad18d84d865dd1a93a2dcf.jpg",
            "mainPrice": "250900",
            "originalPrice": "419000",
            "rating": "4.6",
            "ratingCount": "235",
            "tags": "Lichsu",
            "title": "Lịch Sử Do Thái",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/d0/da/87/3e561eb622f6a27699c06b4438fb8060.jpg",
            "mainPrice": "255900",
            "originalPrice": "345000",
            "rating": "4.7",
            "ratingCount": "217",
            "tags": "Lichsu",
            "title": "Sự Trỗi Dậy Và Suy Tàn Của Đế Chế Thứ Ba - Lịch Sử Đức Quốc Xã",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/92/95/7c/7e7f9fc427f3b3195e10b8fb34fc2bff.jpg",
            "mainPrice": "227100",
            "originalPrice": "299000",
            "rating": "4.6",
            "ratingCount": "52",
            "tags": "Lichsu",
            "title": "Việt Nam Thời Dựng Nước",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/96/f9/46/2bb3f3bc91ba71e9a7c9954260104469.jpg",
            "mainPrice": "375000",
            "originalPrice": "500000",
            "rating": "4.7",
            "ratingCount": "51",
            "tags": "Lichsu",
            "title": "Danh Tướng - Các Nhà Cầm Quân Vĩ Đại Nhất Trong Lịch Sử",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/5c/2e/21/0450b62483aaaac45e968d1dcc677777.jpg",
            "mainPrice": "287900",
            "originalPrice": "480000",
            "rating": "4.5",
            "ratingCount": "51",
            "tags": "Lichsu",
            "title": "Margaret Thatcher - Hồi Ký Bà Đầm Thép",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/4f/a1/29/5da3f42f8707656bace49ddb7f2edb9d.jpg",
            "mainPrice": "69900",
            "originalPrice": "100000",
            "rating": "4.8",
            "ratingCount": "48",
            "tags": "Lichsu",
            "title": "Nam Phương - Hoàng Hậu Cuối Cùng (Tái Bản 2020)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/63/a5/c5/38b6f6e1d5681ab071da44c939a04769.jpg",
            "mainPrice": "541800",
            "originalPrice": "785000",
            "rating": "4.6",
            "ratingCount": "48",
            "tags": "Lichsu",
            "title": "Bộ Tám Triều Vua Lý (4 Tập)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/0045c9782f0aa1e6f63abd0d919744e3",
            "mainPrice": "395000",
            "originalPrice": "590000",
            "rating": "5",
            "ratingCount": "45",
            "tags": "Lichsu",
            "title": "Lịch Sử Thế Giới: Chân Dung Nhân Loại Theo Dòng Sự Kiện",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/a8/65/89/525d2dc4851ba5b6d7bd86d6385cd79e.jpg",
            "mainPrice": "178900",
            "originalPrice": "299000",
            "rating": "4.6",
            "ratingCount": "44",
            "tags": "Lichsu",
            "title": "Chính Trường Hoa Kỳ: Lịch Sử Đảng Phái",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/97a0311eb2268d5f81956b7094494e0e",
            "mainPrice": "43000",
            "originalPrice": "68000",
            "rating": "4.9",
            "ratingCount": "43",
            "tags": "Lichsu",
            "title": "Sơ Học Luân Lý",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/d5/47/ff/8769e06399d637781e7e64e6d3e3ef22.jpg",
            "mainPrice": "147000",
            "originalPrice": "195000",
            "rating": "4.7",
            "ratingCount": "42",
            "tags": "Lichsu",
            "title": "Lịch Sử Thế Giới Tái Bản",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/62/44/50/85a305a8d4c979db866947956ce95386.jpg",
            "mainPrice": "69200",
            "originalPrice": "99000",
            "rating": "4.7",
            "ratingCount": "39",
            "tags": "Lichsu",
            "title": "Xứ Đàng Trong",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/bd/08/33/a9ab9f654a3512d8a99ec4a4f9c11731.jpg",
            "mainPrice": "175700",
            "originalPrice": "220000",
            "rating": "4.6",
            "ratingCount": "38",
            "tags": "Lichsu",
            "title": "Đệ Nhị Thế Chiến",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/20/bd/7c/5b5dedda1087c1acb8ab9048e8fa00b7.jpg",
            "mainPrice": "323900",
            "originalPrice": "499000",
            "rating": "4.7",
            "ratingCount": "38",
            "tags": "Lichsu",
            "title": "Một Chiến Dịch Ở Bắc Kỳ",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/c5/94/5a/9c041a3c9c88980d8cae4c567bf95807.jpg",
            "mainPrice": "108000",
            "originalPrice": "177000",
            "rating": "4.5",
            "ratingCount": "33",
            "tags": "Lichsu",
            "title": "Lịch Sử Văn Minh Ả Rập",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/90/e5/46/8876fc8f7f7c1198b5698d04dcadcf21.jpg",
            "mainPrice": "139800",
            "originalPrice": "185000",
            "rating": "4.9",
            "ratingCount": "32",
            "tags": "Lichsu",
            "title": "Lịch Sử Văn Minh Thế Giới - Phần 1: Di Sản Phương Đông (Tập 2: Văn Minh Ấn Độ Và Các Nước Láng Giềng)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/l/i/lich-su-chien-tranh--1-.u5464.d20170715.t140308.991799.jpg",
            "mainPrice": "167900",
            "originalPrice": "259000",
            "rating": "4.5",
            "ratingCount": "32",
            "tags": "Lichsu",
            "title": "Lịch Sử Chiến Tranh Peloponnese",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/f1d8f460de9a02c0edd3600082e349f4",
            "mainPrice": "65000",
            "originalPrice": "109000",
            "rating": "4.8",
            "ratingCount": "32",
            "tags": "Lichsu",
            "title": "Cận Hiện Đại – Muốn Học Giỏi Lịch Sử Không? Tớ Cho Cậu Mượn Vở - Tập 3",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/4a/7d/34/a4dc9fa093357ab7846d2c2877378cec.jpg",
            "mainPrice": "192700",
            "originalPrice": "255000",
            "rating": "4.9",
            "ratingCount": "31",
            "tags": "Lichsu",
            "title": "Lịch Sử Văn Minh Thế Giới - Phần 1: Di Sản Phương Đông (Tập 1: Thiết Lập Nền Văn Minh Và Văn Minh Vùng Cận Đông)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/38/89/1e/8d568cfef0ce802870bcae85988bc739.jpg",
            "mainPrice": "64100",
            "originalPrice": "105000",
            "rating": "4.5",
            "ratingCount": "31",
            "tags": "Lichsu",
            "title": "Nguồn Gốc Văn Minh",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/dec08e8b40716139d786ab1b41921dbe",
            "mainPrice": "407000",
            "originalPrice": "690000",
            "rating": "4.9",
            "ratingCount": "31",
            "tags": "Lichsu",
            "title": "Lịch Sử Tự Nhiên",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/09/3e/ff/357baad764d6e98cb0da12eb8453c822.jpg",
            "mainPrice": "79200",
            "originalPrice": "99000",
            "rating": "4.7",
            "ratingCount": "30",
            "tags": "Lichsu",
            "title": "Sử Việt – 12 Khúc Tráng Ca (Tái Bản Bổ Sung Bản Đồ Minh Họa)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/4f/27/c8/63e580ef479a5aa05a47cd8d2cdb3955.jpg",
            "mainPrice": "59500",
            "originalPrice": "70000",
            "rating": "5",
            "ratingCount": "30",
            "tags": "Lichsu",
            "title": "Ngày Xưa Có Một Con Bò (Tái Bản 2019)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/dbe627d60057ec1c66295b6e518c491c",
            "mainPrice": "158000",
            "originalPrice": "250000",
            "rating": "4.8",
            "ratingCount": "30",
            "tags": "Lichsu",
            "title": "Từ Điển Chức Quan Việt Nam",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/00c4d3101ff108c326a8ad8241febe82",
            "mainPrice": "248400",
            "originalPrice": "345000",
            "rating": "5",
            "ratingCount": "30",
            "tags": "Lichsu",
            "title": "Sự trỗi dậy và suy tàn của đế chế thứ 3 - Tái bản 2018",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/840457c2bbf327af778be326c1f88b80",
            "mainPrice": "179000",
            "originalPrice": "299000",
            "rating": "4.9",
            "ratingCount": "30",
            "tags": "Lichsu",
            "title": "Lịch Sử Thượng Đế",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/d4/e7/d4/792712d7ed6727a601b40b6a182f65b4.jpg",
            "mainPrice": "225000",
            "originalPrice": "300000",
            "rating": "4.9",
            "ratingCount": "27",
            "tags": "Lichsu",
            "title": "Thiên Hoàng Minh Trị ( Bìa Mềm )",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/c9861dd6a2565ca8bdc66673e1277fe9",
            "mainPrice": "12600",
            "originalPrice": "18000",
            "rating": "5",
            "ratingCount": "73",
            "tags": "Phapluat",
            "title": "Luật Trọng Tài Thương Mại",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/dcc16430e44e3f16f30bff600a6a22b6",
            "mainPrice": "16250",
            "originalPrice": "25000",
            "rating": "5",
            "ratingCount": "69",
            "tags": "Phapluat",
            "title": "Luật Ngân Sách Nhà Nước",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/444c306ab514f11e3b46fffbf274db98",
            "mainPrice": "13000",
            "originalPrice": "20000",
            "rating": "4.9",
            "ratingCount": "69",
            "tags": "Phapluat",
            "title": "Sách luật đầu tư nhà xuất bản lao động",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/3b/a0/e9/79882dc8cfe85f26445537fef95cbdae.jpg",
            "mainPrice": "89000",
            "originalPrice": "98000",
            "rating": "5",
            "ratingCount": "66",
            "tags": "Phapluat",
            "title": "Hệ Thống Văn Bản Quy Phạm Pháp Luật Tài Liệu Phục Vụ Môn Học Luật Hiến Pháp Việt Nam",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/686be4e2260bb603b1a20886a67da8a4",
            "mainPrice": "58500",
            "originalPrice": "90000",
            "rating": "4.9",
            "ratingCount": "54",
            "tags": "Phapluat",
            "title": "Sách hướng dẫn môn học công pháp quốc tế",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/dc/bc/3a/ab272b53a720a835450de6b67e5c6e50.jpg",
            "mainPrice": "81100",
            "originalPrice": "116000",
            "rating": "4.8",
            "ratingCount": "53",
            "tags": "Phapluat",
            "title": "Pháp Lý M & A",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/8f1a98508af5812c153b11452c3c0989",
            "mainPrice": "29250",
            "originalPrice": "45000",
            "rating": "5",
            "ratingCount": "50",
            "tags": "Phapluat",
            "title": "Cuốn sách Luật Tố Tụng Hành Chính",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/18fd58e207a1423e4f04cdb6d49a29fe",
            "mainPrice": "13000",
            "originalPrice": "20000",
            "rating": "5",
            "ratingCount": "49",
            "tags": "Phapluat",
            "title": "Luật Ngân Hàng Nhà Nước Việt Nam",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/70/bd/62/3b03569f390438a149e0041cbb4ac49d.jpg",
            "mainPrice": "160900",
            "originalPrice": "269000",
            "rating": "4.9",
            "ratingCount": "48",
            "tags": "Phapluat",
            "title": "Chính Trị Đảng Phái Tại Hoa Kỳ",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/0c979b4fd14fa070c2778ce9dd6f368c",
            "mainPrice": "19500",
            "originalPrice": "30000",
            "rating": "5",
            "ratingCount": "46",
            "tags": "Phapluat",
            "title": "luật quản lý thuế (năm 2019)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/bee7747818cf2737a45e3d706e44881f",
            "mainPrice": "11700",
            "originalPrice": "18000",
            "rating": "5",
            "ratingCount": "46",
            "tags": "Phapluat",
            "title": "Sách luật tổ chức tòa án nhân dân",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/b0564642eaf9d4234cef2caa71ef48ea",
            "mainPrice": "29250",
            "originalPrice": "45000",
            "rating": "5",
            "ratingCount": "44",
            "tags": "Phapluat",
            "title": "Luật Ban Hành Văn Bản Quy Phạm Pháp Luật (Tái bản 2020)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/fcef4905cf5d76170e95b16ffe830445",
            "mainPrice": "70000",
            "originalPrice": "74000",
            "rating": "5",
            "ratingCount": "44",
            "tags": "Phapluat",
            "title": "Bộ luật dân sự (hiện hành)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/da50c7a854464a92d70f5d2858c9c4f4",
            "mainPrice": "19500",
            "originalPrice": "30000",
            "rating": "5",
            "ratingCount": "41",
            "tags": "Phapluat",
            "title": "Luật Cán Bộ, Công Chức, Viên Chức",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/9b29ece7e663b3703e3dc5d6f5ffbc81",
            "mainPrice": "42250",
            "originalPrice": "65000",
            "rating": "5",
            "ratingCount": "41",
            "tags": "Phapluat",
            "title": "luật khiếu nại và các văn bản hướng dẫn thi hành",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/7a33bf7ce873f70416630e77f6f52b84",
            "mainPrice": "13000",
            "originalPrice": "20000",
            "rating": "5",
            "ratingCount": "38",
            "tags": "Phapluat",
            "title": "Sách luật tố cáo nhà xuất bản lao động",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/c1c8116a277cb93212be0338f6401551",
            "mainPrice": "44100",
            "originalPrice": "70000",
            "rating": "4.9",
            "ratingCount": "38",
            "tags": "Phapluat",
            "title": "Bộ Luật Tố Tụng Dân Sự",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/941b29d690679783b53766795ab4a6be",
            "mainPrice": "19500",
            "originalPrice": "30000",
            "rating": "4.9",
            "ratingCount": "36",
            "tags": "Phapluat",
            "title": "Sách luật thi hành án dân sự",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/1eff9d195ce6bf2989ca7164e9535718",
            "mainPrice": "48750",
            "originalPrice": "75000",
            "rating": "4.8",
            "ratingCount": "30",
            "tags": "Phapluat",
            "title": "Giáo trình luật thương mại Việt Nam tập 1",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/cea60eca053a955ebfae0abddd726ddb",
            "mainPrice": "650000",
            "originalPrice": "1000000",
            "rating": "4.9",
            "ratingCount": "29",
            "tags": "Phapluat",
            "title": " Combo bình luận khoa học bộ luật hình sự năm 2015 được sửa đổi bổ sung năm 20",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/7e186a840138085e0ba563cc08ae7e7a",
            "mainPrice": "13000",
            "originalPrice": "20000",
            "rating": "5",
            "ratingCount": "29",
            "tags": "Phapluat",
            "title": "Luật Bảo Hiểm Xã Hội",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/687c0f0f56b733791b695c11d8c4a8ea",
            "mainPrice": "16250",
            "originalPrice": "25000",
            "rating": "5",
            "ratingCount": "29",
            "tags": "Phapluat",
            "title": "Luật Hợp Tác Xã",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/211d7ee9864f8393da93bca7a6fb40d8",
            "mainPrice": "112500",
            "originalPrice": "125000",
            "rating": "5",
            "ratingCount": "29",
            "tags": "Phapluat",
            "title": " Bộ Tập Quán Quốc Tế Về L/C Của ICC",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/406f7fd58bed3774bf363dde4da87030",
            "mainPrice": "16250",
            "originalPrice": "25000",
            "rating": "5",
            "ratingCount": "28",
            "tags": "Phapluat",
            "title": " LUẬT ĐẤU THẦU",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/5a0325ab80f29546c1171bc4fab62944",
            "mainPrice": "100000",
            "originalPrice": "102000",
            "rating": "5",
            "ratingCount": "28",
            "tags": "Phapluat",
            "title": "Bộ luật tố tụng dân sự (hiện hành)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/a/i/aivan-tutruyen1.u319.d20160430.t140636.jpg",
            "mainPrice": "142700",
            "originalPrice": "168000",
            "rating": "4.6",
            "ratingCount": "26",
            "tags": "Phapluat",
            "title": "Để Gió Cuốn Đi (Tự Truyện Của Nghệ Sĩ Ái Vân)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/4d/53/0f/535b408917eea369a99762344796328a.jpg",
            "mainPrice": "88800",
            "originalPrice": "111000",
            "rating": "5",
            "ratingCount": "26",
            "tags": "Phapluat",
            "title": "Bộ Luật Hình Sự Hiện Hành (Bộ Luật Năm 2015, Sửa Đổi, Bổ Sung Năm 2017)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/a5/46/11/35ffaff32ccaf554ec33c5014bbd1bd7.jpg",
            "mainPrice": "109600",
            "originalPrice": "159000",
            "rating": "4.6",
            "ratingCount": "269",
            "tags": "Suckhoe",
            "title": "Ung Thư - Sự Thật, Hư Cấu, Gian Lận Và Những Phương Pháp Chữa Lành Không Độc Hại",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/f5a84f001c91f0bba7a1952a487a6095",
            "mainPrice": "97000",
            "originalPrice": "149000",
            "rating": "5",
            "ratingCount": "248",
            "tags": "Suckhoe",
            "title": "Ung Thư - Tin Đồn Và Sự Thật",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/25/11/b7/e906e86b054bd91598be429f6409b31e.jpg",
            "mainPrice": "114200",
            "originalPrice": "165000",
            "rating": "4.6",
            "ratingCount": "243",
            "tags": "Suckhoe",
            "title": "Combo Ăn Ít Để Khỏe + Ngủ Ít Vẫn Khỏe",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/b8/86/71/1b9a82a388df9bc882240b71c6521721.jpg",
            "mainPrice": "185900",
            "originalPrice": "295000",
            "rating": "4.7",
            "ratingCount": "204",
            "tags": "Suckhoe",
            "title": "Ăn Gì Không Chết - Sức Mạnh Chữa Lành Của Thực Phẩm",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/dac559c6aa1915d2dd16779a6479e650",
            "mainPrice": "205200",
            "originalPrice": "216000",
            "rating": "5",
            "ratingCount": "24",
            "tags": "Suckhoe",
            "title": "Tập 1 Triệu chứng học Nội Khoa",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/5fe452dae7c656d9a1910a881b8911a0",
            "mainPrice": "191900",
            "originalPrice": "202000",
            "rating": "5",
            "ratingCount": "24",
            "tags": "Suckhoe",
            "title": "Nội soi tai mũi họng 2020",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/bcd84e89b082f9918704641df2aca505",
            "mainPrice": "85500",
            "originalPrice": "90000",
            "rating": "5",
            "ratingCount": "24",
            "tags": "Suckhoe",
            "title": "Bài giảng triệu chứng học Ngoại khoa 2020",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/330f681e0d3cba55a08921a5a9c051aa",
            "mainPrice": "157000",
            "originalPrice": "249000",
            "rating": "5",
            "ratingCount": "23",
            "tags": "Suckhoe",
            "title": "AI Bước Tiến Đột Phá Trong Chăm Sóc Sức Khỏe",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/b266bb6b4fe92518131f2674b2678a0a",
            "mainPrice": "117000",
            "originalPrice": "189000",
            "rating": "5",
            "ratingCount": "23",
            "tags": "Suckhoe",
            "title": "Ăn Uống Lành Mạnh Để Bảo Vệ Môi Trường -Greenprint Diet",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/93c3e0a958e1370a220cc8d1e1a0384c",
            "mainPrice": "56250",
            "originalPrice": "75000",
            "rating": "4.9",
            "ratingCount": "23",
            "tags": "Suckhoe",
            "title": "Làm Sạch Mạch Và Máu",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/i/m/img967_2.jpg",
            "mainPrice": "41900",
            "originalPrice": "52000",
            "rating": "3.8",
            "ratingCount": "22",
            "tags": "Suckhoe",
            "title": "Thức Ăn Quyết Định Số Phận Của Bạn",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/3f/fa/e7/5185affce4862f1c25209df379a17d03.jpg",
            "mainPrice": "116700",
            "originalPrice": "160000",
            "rating": "4.7",
            "ratingCount": "22",
            "tags": "Suckhoe",
            "title": "Điều Trị Tạng Phủ Theo Đông Y",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/8a/52/d8/62381fd230134f309364e707764b2780.jpg",
            "mainPrice": "330000",
            "originalPrice": "350000",
            "rating": "4.9",
            "ratingCount": "22",
            "tags": "Suckhoe",
            "title": "Phác đồ điều trị dành cho bác sỹ trực cấp cứu",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/46/64/9d/46999c7df645030f1ccba1fb7f197158.jpg",
            "mainPrice": "221900",
            "originalPrice": "300000",
            "rating": "5",
            "ratingCount": "22",
            "tags": "Suckhoe",
            "title": "Đông Y Thiệt Chuẩn",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/ae379641f94181cd6b4a585541200673",
            "mainPrice": "125800",
            "originalPrice": "170000",
            "rating": "4.9",
            "ratingCount": "22",
            "tags": "Suckhoe",
            "title": "Combo Sống Lành Để Trẻ + Ăn Xanh Để Khỏe (Bộ 2 Cuốn)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/0cf71a1ccbd29ca66f85d412c35bbb8b",
            "mainPrice": "123000",
            "originalPrice": "164000",
            "rating": "5",
            "ratingCount": "22",
            "tags": "Suckhoe",
            "title": "Combo 2 Cuốn Sức Khỏe Trong Tay Bạn ( Tặng Tedbook Nghe Theo Cái Bụng + Postcard bốn mùa ngẫu nhiên )",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/24ef0e88b3a390026d21db97d15eb5f6",
            "mainPrice": "259500",
            "originalPrice": "346000",
            "rating": "5",
            "ratingCount": "22",
            "tags": "Suckhoe",
            "title": "Nhân Tố Enzyme (Trọn Bộ 4 Cuốn)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/40/86/5b/e1bc49b1174e94789bd89013d5e94366.jpg",
            "mainPrice": "204300",
            "originalPrice": "280000",
            "rating": "4.8",
            "ratingCount": "21",
            "tags": "Suckhoe",
            "title": "Mạch Học Giảng Nghĩa (Bìa Cứng)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/fd/50/9c/8c54e736eba77eeb1684280300232404.jpg",
            "mainPrice": "160000",
            "originalPrice": "200000",
            "rating": "4.7",
            "ratingCount": "20",
            "tags": "Suckhoe",
            "title": "Ngoại Khoa Ống Tiêu Hóa",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/e852caf193505fbf573656c1b94fb73c",
            "mainPrice": "85500",
            "originalPrice": "90000",
            "rating": "5",
            "ratingCount": "20",
            "tags": "Suckhoe",
            "title": "Bài Giảng Gây Mê Hồi Sức Cơ Sở 2020",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/87/b0/4d/5297b317b3d2270ea1a994914fefc66a.jpg",
            "mainPrice": "143600",
            "originalPrice": "179000",
            "rating": "4.7",
            "ratingCount": "19",
            "tags": "Suckhoe",
            "title": "Bẻ Khóa Sinh Học Trong 90 Ngày",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/de/3a/c2/87f230750bb8103fc9852befaab05c83.jpg",
            "mainPrice": "84900",
            "originalPrice": "120000",
            "rating": "4.7",
            "ratingCount": "19",
            "tags": "Suckhoe",
            "title": "Xoa Bóp Huyệt Vị - Phương Pháp Trị Liệu Đặc Sắc Của Y Học Trung Quốc (Tái Bản 2020)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/i/m/img176_6.jpg",
            "mainPrice": "39700",
            "originalPrice": "48000",
            "rating": "4.9",
            "ratingCount": "19",
            "tags": "Suckhoe",
            "title": "Những Bài Thuốc Bổ Đông Y Chọn Lọc",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/53652db5e0dfbb2025e91aa265c2f6ad",
            "mainPrice": "210000",
            "originalPrice": "350000",
            "rating": "5",
            "ratingCount": "19",
            "tags": "Suckhoe",
            "title": "Hoàng Đế Nội Kinh - Quyển 4",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/5506492af0ae920f6407b66824981a3b",
            "mainPrice": "39600",
            "originalPrice": "55000",
            "rating": "5",
            "ratingCount": "62",
            "tags": "Thieunhi",
            "title": "200 Miếng bóc dán thông minh 2-6 tuổi - Bé học tiếng anh[Tái bản 2018]",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/6e4e78668fde1d4096ca16c5e01d8831",
            "mainPrice": "135000",
            "originalPrice": "180000",
            "rating": "5",
            "ratingCount": "61",
            "tags": "Thieunhi",
            "title": " Sân Chơi Trí Tuệ Của Chim Đa Đa - Trọn bộ 6 cuốn",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/64be19923f63131f45f0a79b04f10b18",
            "mainPrice": "32000",
            "originalPrice": "50000",
            "rating": "5",
            "ratingCount": "61",
            "tags": "Thieunhi",
            "title": "100 Từ Mới - Hoa, Quả, Rau, Củ (Tái Bản 2019)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/8287039a4da896e12fe0d106d9e6f60a",
            "mainPrice": "83300",
            "originalPrice": "119000",
            "rating": "4.9",
            "ratingCount": "61",
            "tags": "Thieunhi",
            "title": "Chuyển động thông minh First stories",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/88b9e816457de849a43b52860df3c379",
            "mainPrice": "42000",
            "originalPrice": "60000",
            "rating": "5",
            "ratingCount": "60",
            "tags": "Thieunhi",
            "title": "365 Truyện kể hằng đêm ( Combo 4 quyển, lẻ tùy chọn )",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/ad4627ce3efd423c64f8c31d32381077",
            "mainPrice": "25000",
            "originalPrice": "30000",
            "rating": "5",
            "ratingCount": "60",
            "tags": "Thieunhi",
            "title": "Nhất Quỷ Nhì Ma, Thứ Ba Takagi - Tập 7",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/14eec4b354b3d85280fc465611740691",
            "mainPrice": "31500",
            "originalPrice": "42000",
            "rating": "5",
            "ratingCount": "59",
            "tags": "Thieunhi",
            "title": "Bóc dán hình thông minh IQ-EQ-CQ 150 miếng dán hình thông minh - Phương tiện giao thông",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/09abef8fb014fc8ff60fbd9c9acad9f5",
            "mainPrice": "17500",
            "originalPrice": "35000",
            "rating": "5",
            "ratingCount": "59",
            "tags": "Thieunhi",
            "title": "Nhật ký quan sát Poyo Poyo tập 10 (truyện tranh)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/4b915343e47964aaddeb3abc6d0f22ed",
            "mainPrice": "20300",
            "originalPrice": "29000",
            "rating": "5",
            "ratingCount": "59",
            "tags": "Thieunhi",
            "title": "Truyện tranh ngụ ngôn dành cho thiếu nhi song ngữ anh việt, sói và sóc",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/3e/f9/9a/74706c27021034f74743313298420a73.jpg",
            "mainPrice": "48900",
            "originalPrice": "69000",
            "rating": "4.9",
            "ratingCount": "58",
            "tags": "Thieunhi",
            "title": "Kính Vạn Hoa - Tập 2 (Phiên Bản Mới) (Tái Bản 2018)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/0b9e7504ebbaebd7ba7252d930e22506",
            "mainPrice": "115200",
            "originalPrice": "160000",
            "rating": "5",
            "ratingCount": "58",
            "tags": "Thieunhi",
            "title": "Truyện kể cho bé trước giờ đi ngủ - Ngày xửa ngày xưa (10q)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/2d7114cc16aaa782bac8c3e497279b58",
            "mainPrice": "10000",
            "originalPrice": "16000",
            "rating": "5",
            "ratingCount": "58",
            "tags": "Thieunhi",
            "title": "Tủ  Truyện Tranh Cổ Tích Việt Nam - Sự Tích Cây Khế",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/c2b8884c19806e844b2ffec9d1eb679f",
            "mainPrice": "58500",
            "originalPrice": "78000",
            "rating": "5",
            "ratingCount": "58",
            "tags": "Thieunhi",
            "title": "Cổ Tích Việt Nam - Giấc Mơ Tuổi Thơ",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/eb6f3b6d6ab87af9b0ccc24b93ee445b",
            "mainPrice": "112320",
            "originalPrice": "156000",
            "rating": "5",
            "ratingCount": "58",
            "tags": "Thieunhi",
            "title": "COMBO 4 Cuốn Ehon Sắc Màu(Bữa Tiệc Sắc Màu Của Thú Trắng)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/c218e7c470e597bf4fbe71cbdcd6ffb1",
            "mainPrice": "17000",
            "originalPrice": "19500",
            "rating": "5",
            "ratingCount": "58",
            "tags": "Thieunhi",
            "title": "Dragon Ball - 7 Viên Ngọc Rồng Tập 42",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/de7c8090b6beda15dd5b8f19d56f5cec",
            "mainPrice": "94500",
            "originalPrice": "126000",
            "rating": "4.9",
            "ratingCount": "57",
            "tags": "Thieunhi",
            "title": "Mã Lẻ 10 Cuốn:  Chiếu Bóng - Bedtime Shadow - Truyện Kể Trên Tường",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/e90e53ecb5ec020fdd9c31ba9480dd2b",
            "mainPrice": "41250",
            "originalPrice": "55000",
            "rating": "5",
            "ratingCount": "57",
            "tags": "Thieunhi",
            "title": "200 miếng bóc dán thông minh - Rau củ quả",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/e41abb15ef19fe9c4bd71bdbf5283e80",
            "mainPrice": "25000",
            "originalPrice": "29000",
            "rating": "4.9",
            "ratingCount": "57",
            "tags": "Thieunhi",
            "title": "Ehon Nhật Bản - Cá Vàng Trốn Ở Đâu Rồi Nhỉ?",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/e2/92/b4/ce55b734c95dea2b71fda88cd216d595.jpg",
            "mainPrice": "53900",
            "originalPrice": "54000",
            "rating": "4.9",
            "ratingCount": "56",
            "tags": "Thieunhi",
            "title": "Lũ Trẻ Ở Làng Ồn Ào",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/2e7c51f923c18562be4e28cc8123fa11",
            "mainPrice": "21000",
            "originalPrice": "25000",
            "rating": "5",
            "ratingCount": "56",
            "tags": "Thieunhi",
            "title": "Doraemon Tuyển Tập Tranh Truyện Màu Kĩ Thuật Số - Tập 2 (Tái Bản 2018)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/f37cb4eaaba75e923ef6771d9ed145ad",
            "mainPrice": "15000",
            "originalPrice": "18000",
            "rating": "4.9",
            "ratingCount": "56",
            "tags": "Thieunhi",
            "title": "Đội Quân Doraemon Đặc Biệt Tập 10",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/744c769d9fabb506e907dc62f04140df",
            "mainPrice": "27000",
            "originalPrice": "45000",
            "rating": "5",
            "ratingCount": "55",
            "tags": "Thieunhi",
            "title": "Tô màu rèn trí thông minh Tập 4",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/07fdcabdf43a677091a38fb8b7ea8127",
            "mainPrice": "58480",
            "originalPrice": "86000",
            "rating": "4.9",
            "ratingCount": "55",
            "tags": "Thieunhi",
            "title": " Kích thích thị giác - Black and white (Lẻ tùy chọn)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/bb30a3da3f80e41a67504753b43dd12d",
            "mainPrice": "59040",
            "originalPrice": "82000",
            "rating": "4.9",
            "ratingCount": "55",
            "tags": "Thieunhi",
            "title": " Thiếu Nhi - Truyện Cổ Tích thế giới (Bản màu)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/33dfcadeb6badc32d86970dc96d26103",
            "mainPrice": "200100",
            "originalPrice": "290000",
            "rating": "4.9",
            "ratingCount": "55",
            "tags": "Thieunhi",
            "title": "Combo Ehon Trọn Bộ 10 Cuốn Tay Xinh Và Ai Sau Lưng",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/8655fd83e3dc3229febf02996e335fde",
            "mainPrice": "65000",
            "originalPrice": "108000",
            "rating": "5",
            "ratingCount": "55",
            "tags": "Thieunhi",
            "title": "52 Thí Nghiệm Vũ Trụ Siêu Thú Vị Kích Thích Trí Sáng Tạo",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/c/h/chuyen_xi_hoi-1.jpg",
            "mainPrice": "23100",
            "originalPrice": "29000",
            "rating": "4.3",
            "ratingCount": "54",
            "tags": "Thieunhi",
            "title": "Ehon Nhật Bản - Chuyện Xì Hơi",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/90/48/eb/59b644fe7f376a6a0dda29acde881a60.jpg",
            "mainPrice": "31300",
            "originalPrice": "36000",
            "rating": "4.8",
            "ratingCount": "54",
            "tags": "Thieunhi",
            "title": "Những Truyện Hay Viết Cho Thiếu Nhi - Xuân Quỳnh (Tái Bản 2019)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/c3a6aef2dbbb7c069bb05df306c0ac6f",
            "mainPrice": "78000",
            "originalPrice": "100000",
            "rating": "4.9",
            "ratingCount": "53",
            "tags": "Thieunhi",
            "title": "Combo Vì Sao Tớ Yêu Ông, Bà, Bố, Mẹ (Trọn Bộ 4 Cuốn)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/08ef2a718e2ce3a6c6094e04e0b551dd",
            "mainPrice": "21000",
            "originalPrice": "25000",
            "rating": "5",
            "ratingCount": "52",
            "tags": "Thieunhi",
            "title": "Doraemon Tuyển Tập Tranh Truyện Màu Kĩ Thuật Số - Tập 1 (Tái Bản 2018)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/n/h/nhung_nguoi_ban_o_hon_dao_phia_nam-1.jpg",
            "mainPrice": "23100",
            "originalPrice": "29000",
            "rating": "4.6",
            "ratingCount": "51",
            "tags": "Thieunhi",
            "title": "Truyện Ehon Nhật Bản: Ai Ở Sau Lưng Bạn Thế? - Những Người Bạn Ở Hòn Đảo Phía Nam Nhật Bản",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/840712fbb52dcd75a412c1e0225294b9",
            "mainPrice": "123200",
            "originalPrice": "176000",
            "rating": "5",
            "ratingCount": "51",
            "tags": "Thieunhi",
            "title": " Ngoại văn: Diary Of A Wimpy Kid - Vol 1 (Tập 1)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/44e27f16c3a732fdc5286057063aa518",
            "mainPrice": "115500",
            "originalPrice": "150000",
            "rating": "5",
            "ratingCount": "51",
            "tags": "Thieunhi",
            "title": "Thắc mắc về vi khuẩn ( Combo 6 cuốn)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/418716d332fa2338139826aa50d73609",
            "mainPrice": "36000",
            "originalPrice": "40000",
            "rating": "4.9",
            "ratingCount": "51",
            "tags": "Thieunhi",
            "title": "Truyện tranh Chú già nuôi mèo ú lẻ tập 1 2 3 4- NXB Kim Đồng",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/400268cd2ec8d79eaba6fa4df3969128",
            "mainPrice": "96720",
            "originalPrice": "156000",
            "rating": "4.9",
            "ratingCount": "50",
            "tags": "Thieunhi",
            "title": "Combo 4 cuốn Đồ vật - Ehon Nhật Bản dành cho bé từ 0 - 4 tuổi",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/12e33502a029416a24782f7bac221ccc",
            "mainPrice": "16000",
            "originalPrice": "19000",
            "rating": "5",
            "ratingCount": "49",
            "tags": "Thieunhi",
            "title": "Shin - Cậu Bé Bút Chì - Tập 11",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/5f4cbc9b3489603afa615d17d214e62e",
            "mainPrice": "23040",
            "originalPrice": "32000",
            "rating": "5",
            "ratingCount": "26",
            "tags": "Thieunhi",
            "title": "Ehon Cả nhà thương nhau (Lẻ Tùy Chọn )",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/k/v/kvh_18tap_12.jpg",
            "mainPrice": "54900",
            "originalPrice": "69000",
            "rating": "4.9",
            "ratingCount": "25",
            "tags": "Thieunhi",
            "title": "Kính Vạn Hoa (Phiên Bản 18 Tập) - Tập 12",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/22/70/6e/6804b2e28cceff43ef0931ab5771a3c7.jpg",
            "mainPrice": "70400",
            "originalPrice": "88000",
            "rating": "4.8",
            "ratingCount": "25",
            "tags": "Thieunhi",
            "title": "Hai Vạn Dặm Dưới Biển (Truyện Tranh)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/media/catalog/product/k/v/kvh_18tap_18.jpg",
            "mainPrice": "54900",
            "originalPrice": "69000",
            "rating": "4.9",
            "ratingCount": "25",
            "tags": "Thieunhi",
            "title": "Kính Vạn Hoa (Phiên Bản 18 Tập) - Tập 18",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/6f476798336ef1312e1a2bef8b5284bc",
            "mainPrice": "54000",
            "originalPrice": "86000",
            "rating": "5",
            "ratingCount": "2694",
            "tags": "Vanhoc",
            "title": "Bình Tĩnh Khi Ế, Mạnh Mẽ Khi Yêu",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/a9/e4/f9/9a0900b2352c6d7a608e003146ccda7e.jpg",
            "mainPrice": "36750",
            "originalPrice": "49000",
            "rating": "4.8",
            "ratingCount": "1211",
            "tags": "Vanhoc",
            "title": "Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2019)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/92/77/b0/ec0a4054a5e85ea308d35f643c884c98.jpg",
            "mainPrice": "92900",
            "originalPrice": "135000",
            "rating": "4.8",
            "ratingCount": "681",
            "tags": "Vanhoc",
            "title": "Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/5fab9a116f1b13db84f3d0e3ae62165e",
            "mainPrice": "79200",
            "originalPrice": "99000",
            "rating": "5",
            "ratingCount": "585",
            "tags": "Vanhoc",
            "title": " Bạn Đắt Giá Bao Nhiêu?",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/039656ca22289def7d0b74dd515c4101",
            "mainPrice": "76000",
            "originalPrice": "120000",
            "rating": "4.9",
            "ratingCount": "536",
            "tags": "Vanhoc",
            "title": "Hannibal",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/a9c345d5f702b118bad547ff420e1a48",
            "mainPrice": "49000",
            "originalPrice": "98000",
            "rating": "4.9",
            "ratingCount": "483",
            "tags": "Vanhoc",
            "title": "Hãy đi đi xanh biếc (light novel) tặng kèm phong thư Inakunare",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/f3/c4/85/f1a6e801e34e9b86888763ffc2dffa80.jpg",
            "mainPrice": "689200",
            "originalPrice": "999000",
            "rating": "4.7",
            "ratingCount": "436",
            "tags": "Vanhoc",
            "title": "The Story Of Art - Câu Chuyện Nghệ Thuật",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/39cbf38ce90a3d75229815768aa07939",
            "mainPrice": "45440",
            "originalPrice": "64000",
            "rating": "5",
            "ratingCount": "396",
            "tags": "Vanhoc",
            "title": "Tôi không thích ồn ào",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/ffb2f0754afbf2f2fb3d607c27ba14f8",
            "mainPrice": "62300",
            "originalPrice": "89000",
            "rating": "4.9",
            "ratingCount": "369",
            "tags": "Vanhoc",
            "title": "Latte Không Ngọt",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/50/da/68/b27178058ff57d5ff07809966d75b590.jpg",
            "mainPrice": "101900",
            "originalPrice": "150000",
            "rating": "4.5",
            "ratingCount": "368",
            "tags": "Vanhoc",
            "title": "Harry Potter Và Đứa Trẻ Bị Nguyền Rủa: Phần Một Và Hai",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://salt.tikicdn.com/cache/280x280/ts/product/47/54/8e/30bac752bcca2beb34a3522990805aa1.jpg",
            "mainPrice": "103900",
            "originalPrice": "150000",
            "rating": "5",
            "ratingCount": "367",
            "tags": "Vanhoc",
            "title": "Dế Mèn Phiêu Lưu Ký",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/ebcace9cb23e5b36db6bb87b55e618d2",
            "mainPrice": "180000",
            "originalPrice": "300000",
            "rating": "4.9",
            "ratingCount": "332",
            "tags": "Vanhoc",
            "title": "Sherlock Holmes Toàn Tập Trọn Bộ 3 Tập - Bìa cứng.",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/43af8c017655deee448f6b89a9c46004",
            "mainPrice": "87200",
            "originalPrice": "109000",
            "rating": "5",
            "ratingCount": "329",
            "tags": "Vanhoc",
            "title": " Tôi Có Một Chén Rượu , Có Thể Xoa Dịu Hồng Trần - Tặng Kèm Sổ Tay",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/4ec4fce4ced55759a55805a710dd2a4c",
            "mainPrice": "55180",
            "originalPrice": "89000",
            "rating": "4.9",
            "ratingCount": "239",
            "tags": "Vanhoc",
            "title": "Hành Trình Đến Gần Thần Tượng BTS",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/a73f707149f8f924525f086214673b41",
            "mainPrice": "62100",
            "originalPrice": "69000",
            "rating": "4.9",
            "ratingCount": "225",
            "tags": "Vanhoc",
            "title": "Nhà giả Kim ( cuốn sách bán chạy chỉ sau thánh kinh )",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/0abb91c29a2a4dd5069853b416a1ff35",
            "mainPrice": "41500",
            "originalPrice": "83000",
            "rating": "4.9",
            "ratingCount": "215",
            "tags": "Vanhoc",
            "title": "Mệnh Kỵ Sĩ - Tập5",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/7d9fa11c8721e588f68f5f58fad45139",
            "mainPrice": "41500",
            "originalPrice": "83000",
            "rating": "4.9",
            "ratingCount": "213",
            "tags": "Vanhoc",
            "title": "Mệnh Kỵ Sĩ - Tập 7 (Tặng kèm postcard)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/cf8a2d4c5b043db9bca2a3aaa277033a",
            "mainPrice": "49000",
            "originalPrice": "60000",
            "rating": "4.9",
            "ratingCount": "212",
            "tags": "Vanhoc",
            "title": "Quán ăn xuyên không ( tặng kèm 2bm bế hình món ăn)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/f80ae9643661f4253ad7995199872b75",
            "mainPrice": "88200",
            "originalPrice": "126000",
            "rating": "5",
            "ratingCount": "203",
            "tags": "Vanhoc",
            "title": "Hồ ly biết yêu - Diệp Lạc Vô Tâm",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/286b091c3e5f86999729fb1447d72129",
            "mainPrice": "70290",
            "originalPrice": "99000",
            "rating": "4.9",
            "ratingCount": "202",
            "tags": "Vanhoc",
            "title": "999 Lá Thư Gửi Cho Chính Mình (tập 1)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/79e70669d5847b2620ed5eebd5538c20",
            "mainPrice": "50000",
            "originalPrice": "80000",
            "rating": "4.9",
            "ratingCount": "198",
            "tags": "Vanhoc",
            "title": "Nơi Em Quay Về Có Tôi Đứng Đợi ( Tái Bản 2019)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/b742173ddf685b5c4f75af0eed652682",
            "mainPrice": "37500",
            "originalPrice": "75000",
            "rating": "4.9",
            "ratingCount": "194",
            "tags": "Vanhoc",
            "title": "Nếu nhặt được anh, hãy gửi cho tôi (tranh-chữ màu)",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/921c164ca4a1038acbc59cfebd0904a0",
            "mainPrice": "49000",
            "originalPrice": "98000",
            "rating": "4.9",
            "ratingCount": "171",
            "tags": "Vanhoc",
            "title": "Mệnh Kỵ Sĩ - Tập 8",
            "type": "Books"
        },
        {
            "author": "",
            "image": "https://cf.shopee.vn/file/26cab42f2f83758cd5f028f25b6cac45",
            "mainPrice": "59000",
            "originalPrice": "103000",
            "rating": "4.9",
            "ratingCount": "169",
            "tags": "Vanhoc",
            "title": "Bạn Đỡ Ngu Ngơ Rồi Đấy",
            "type": "Books"
        }
    ]

    fields: [
        "type",
        "title",
        "author",
        "tags",
        "image",
        "mainPrice",
        "originalPrice",
        "rating",
        "ratingCount"
    ]

    source: dataSource

    /*----------------------------------------------------------------------------------------*/
    function getCover(entry) {
        if (entry === undefined) {
            return ""
        }

        if (entry.type === "Books") {
            if (entry.image !== "" && entry.image !== undefined) {
                return Qt.resolvedUrl(entry.image)
            }

            //        return "" // put same placeholder here
        }

        return Qt.resolvedUrl(entry.image)
    }
    /*--------------------------------------------------------------------------------------------*/
    function removeVietnameseTones(str) {
        str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");
        str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");
        str = str.replace(/ì|í|ị|ỉ|ĩ/g,"i");
        str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");
        str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");
        str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");
        str = str.replace(/đ/g,"d");
        str = str.replace(/À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ/g, "A");
        str = str.replace(/È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ/g, "E");
        str = str.replace(/Ì|Í|Ị|Ỉ|Ĩ/g, "I");
        str = str.replace(/Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ/g, "O");
        str = str.replace(/Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ/g, "U");
        str = str.replace(/Ỳ|Ý|Ỵ|Ỷ|Ỹ/g, "Y");
        str = str.replace(/Đ/g, "D");
        // Some system encode vietnamese combining accent as individual utf-8 characters
        // Một vài bộ encode coi các dấu mũ, dấu chữ như một kí tự riêng biệt nên thêm hai dòng này
        str = str.replace(/\u0300|\u0301|\u0303|\u0309|\u0323/g, ""); // ̀ ́ ̃ ̉ ̣  huyền, sắc, ngã, hỏi, nặng
        str = str.replace(/\u02C6|\u0306|\u031B/g, ""); // ˆ ̆ ̛  Â, Ê, Ă, Ơ, Ư
        // Remove extra spaces
        // Bỏ các khoảng trắng liền nhau
        str = str.replace(/ + /g," ");
        str = str.trim();
        // Remove punctuations
        // Bỏ dấu câu, kí tự đặc biệt
        str = str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'|\"|\&|\#|\[|\]|~|\$|_|`|-|{|}|\||\\/g," ");
        return str;
    }
    /*--------------------------------------------------------------------------------------------*/
    function buildModelUponSearch(term="") {
        root.remove(0, root.count)
        console.log("dang tim: " +  term)

        if(term == ""){
            return
        }

        console.log("rootcount " + root.count)
        for (const entry of root.dataSource) {
            var title = entry.title
            title = removeVietnameseTones(title)
            var ret = title.search(term)
            if(ret !== -1){
                console.log("Tim thay: " + entry.title)
                root.append(entry)
            }
        }
    }
    /*-----------------------------------------------------------------------------------------------*/
    function addToFavorites(entry) {
        var favorites = storage.getValue("favorites")
        var totalPrice = storage.getValue("TongTien")

        if (favorites === undefined) {
            favorites = []
        }

        if(totalPrice === undefined){
            totalPrice = 0
        }

        if (!isFavorite(entry)) {
            favorites.push(entry["title"])
            storage.setValue(entry["title"], 0)
        }
        totalPrice += parseInt(entry["mainPrice"])
        console.log("tongtien: " + totalPrice)
        storage.clearValue("TongTien")
        storage.setValue("TongTien", totalPrice)

        var count = storage.getValue(entry["title"])
        storage.setValue(entry["title"], count+1)
        storage.setValue("favorites", favorites)
    }

    /*----------------------------------------------------------------*/
    function removeFromFavorites(title, mainPrice) {
        var favorites = storage.getValue("favorites")
        if (favorites === undefined) {
            favorites = []
        }

        var totalPrice = storage.getValue("TongTien")
        var count = parseInt(storage.getValue(title))
        totalPrice -= parseInt(mainPrice)*count
        console.log("tongtien: " + totalPrice)
        storage.clearValue("TongTien")
        storage.setValue("TongTien", totalPrice)

        var index = favorites.indexOf(title)
        favorites.splice(index, 1);
        storage.setValue(title, 0)
        storage.setValue("favorites", favorites)

        logic.favoritesChanged(title)
    }
    /*---------------------------------------------------------------*/
    function showFavorites() {
        root.remove(0, root.count)

        var favorites = storage.getValue("favorites")
        if (favorites === undefined) {
            console.log("Favorites are unspecified")
            return
        }
        for (const entry of root.dataSource) {
            if (isFavorite(entry)) {
                root.append(entry)
            }
        }
    }

    /*---------------------------------------------------------------*/

    function isFavorite(entry) {
        if (entry === undefined) {
            return false
        }

        var favorites = storage.getValue("favorites")
        if (favorites === undefined) {
            console.log("favorites are undefined")
            storage.setValue("favorites", [])
            return false
        }

        for (const f of favorites) {
            if (entry["title"] === f) {
                return true
            }
        }

        return false
    }
    /*-----------------------------------------------------------------------------------*/
}
