drop database loveservice;

create database loveservice;
use loveservice;

INSERT INTO Role (id, name_role, is_active)
VALUES
    (1, 'ROLE_ADMIN', true),
    (2, 'ROLE_USER', true),
    (3, 'ROLE_CCDV', true);
    
    INSERT INTO Status (id, name_status, is_active)
VALUES
    (1, 'active', true),
    (2, 'block', true),
    (3, 'register', true),
    (4, 'wait', true),
    (5, 'recevied', true),
    (6, 'complete', true),
(111, 'inActive', true),
(7, 'cancel from wait by user', true),
(8, 'cancel from wait by ccdv', true),
(9, 'cancel from recevied by user', true),
(10, 'cancel from recevied by ccdv', true),
(333, 'emailverify', true);

    INSERT INTO Zone (zone, is_active)
   VALUES
       ('Miền Bắc', true),
       ('Miền Trung', true),
       ('Miền Nam', true);


INSERT INTO Supply (name_supply, is_active,type)
VALUES
    ('Ra mắt người nhà', true,1),
    ('Ra mắt bạn bè', true,1),
    ('Du lịch chung cùng nhóm bạn', true,1),
    ('Đi chơi chung', true,1),
    ('Tham dự sinh nhật', true,1),
    ('Trò chuyện offline', true,1),
    ('Trò chuyện online', true,1),
    ('Đi chơi tết', true,1),
    ('Đi chơi ngày lễ', true,1);

INSERT INTO Supply (name_supply, is_active,type)
VALUES
    ('Nắm tay', true,2),
    ('Nói Yêu', true,2),
    ('Nhìn mắt', true,2),
    ('Nắm tay', true,3),
    ('Hôn tay', true,3),
    ('Ôm', true,3),
    ('Nhõng nhẽo', true,3),
    ('Cử chỉ thân mật', true,3),
    ('Nói lời yêu', true,3);


INSERT INTO Account (id,username, password, avatar, email, nickname, role_id, status_id, is_active)
VALUES
    (1,'male1', 'pass123', 'https://internetviettel.vn/wp-content/uploads/2017/05/1-2.jpg', 'male1@example.com', 'Người Nam 1', 3, 1, true),
    (2,'male2', 'pass123', 'https://image.vtc.vn/resize/th/upload/2021/12/20/940-12344105.jpg', 'male2@example.com', 'Người Nam 2', 3, 1, true),
    (3,'male3', 'pass123', 'https://kenh14cdn.com/thumb_w/660/2020/7/17/brvn-15950048783381206275371.jpg', 'male3@example.com', 'Người Nam 3', 3, 1, true),
    (4,'male4', 'pass123', 'https://thcs-thptlongphu.edu.vn/wp-content/uploads/2023/03/hinh-anh-dep-tren-mang2b252822529-1.jpg', 'male4@example.com', 'Người Nam 4', 3, 1, true),
    (5,'male5', 'pass123', 'https://itcafe.vn/wp-content/uploads/2021/01/hinh-anh-cuoc-song-2.jpg', 'male5@example.com', 'Người Nam 5', 3, 1, true),
    (6,'male6', 'pass123', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-WL6F5GEMJM9WcOZPx5KjwPTz1RIbH8eu_w&usqp=CAU', 'male6@example.com', 'Người Nam 6', 3, 1, true),
    (7,'male7', 'pass123', 'https://uploads.nguoidothi.net.vn/content/6d6e7114-749b-4adf-92e7-b9368eb7e231.jpg', 'male7@example.com', 'Người Nam 7', 3, 1, true),
    (8,'male8', 'pass123', 'https://uploads.nguoidothi.net.vn/content/6d6e7114-749b-4adf-92e7-b9368eb7e231.jpg', 'male8@example.com', 'Người Nam 8', 3, 1, true),
    (9,'male9', 'pass123', 'https://uploads.nguoidothi.net.vn/content/6d6e7114-749b-4adf-92e7-b9368eb7e231.jpg', 'male9@example.com', 'Người Nam 9', 3, 1, true),
    (10,'male10', 'pass123', 'https://uploads.nguoidothi.net.vn/content/6d6e7114-749b-4adf-92e7-b9368eb7e231.jpg', 'male10@example.com', 'Người Nam 10', 3, 1, true),
    (11,'female1', 'pass123', 'https://vn.blog.kkday.com/wp-content/uploads/chup-anh-dep-bang-dien-thoai-25.jpg', 'female1@example.com', 'Người Nữ 1', 3, 1, true),
    (12,'female2', 'pass123', 'https://i.9mobi.vn/cf/images/2015/03/nkk/hinh-dep-19.jpg', 'female2@example.com', 'Người Nữ 2', 3, 1, true),
    (13,'female3', 'pass123', 'https://static-images.vnncdn.net/files/publish/2022/9/3/bien-vo-cuc-thai-binh-346.jpeg', 'female3@example.com', 'Người Nữ 3', 3, 1, true),
    (14,'female4', 'pass123', 'https://static-images.vnncdn.net/files/publish/2022/9/3/bien-vo-cuc-thai-binh-344.jpg', 'female4@example.com', 'Người Nữ 4', 3, 1, true),
    (15,'female5', 'pass123', 'https://file.hstatic.net/1000054905/file/tao-dang-chup-anh-di-bien__1__a6fe48176cc945f79b7f15e51de049b4.jpg', 'female5@example.com', 'Người Nữ 5', 3, 1, true),
    (16,'female6', 'pass123', 'https://smilemedia.vn/wp-content/uploads/2023/05/tao-dang-chup-anh-o-bien-28.jpg', 'female6@example.com', 'Người Nữ 6', 3, 1, true),
    (17,'female7', 'pass123', 'https://anhhd.com/wp-content/uploads/2021/10/600-hinh-nen-dep-3d-tuyet-dep-nhat-dinh-phai-xem.jpg', 'female7@example.com', 'Người Nữ 7', 3, 1, true),
    (18,'female8', 'pass123', 'https://ik.imagekit.io/tvlk/blog/2018/06/dia-diem-chup-anh-dep-tai-Sai-Gon-6.jpg?tr=dpr-2,w-675', 'female8@example.com', 'Người Nữ 8', 3, 1, true),
    (19,'female9', 'pass123', 'https://1phutsaigon.vn/wp-content/uploads/2022/04/checkin-cung-landmark-tai-chang-vang-rooftop-2.jpg', 'female9@example.com', 'Người Nữ 9', 3, 1, true),
    (20,'grroup1', 'pass123', 'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/05013955/image-nhung-dia-diem-chup-anh-dep-o-sai-gon-67e8e05b2770ad98129170810a54ec9b.jpg', 'female10@example.com', 'Người Nữ 10', 2, 1, true),
    (21,'grroup2', 'pass123', 'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/05013955/image-nhung-dia-diem-chup-anh-dep-o-sai-gon-67e8e05b2770ad98129170810a54ec9b.jpg', 'female10@example.com', 'Hello ae', 2, 1, true),
    (22,'grroup3', 'pass123', 'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/05013955/image-nhung-dia-diem-chup-anh-dep-o-sai-gon-67e8e05b2770ad98129170810a54ec9b.jpg', 'female10@example.com', 'Hi ae', 2, 1, true),
    (23,'admin', 'admin', 'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/05013955/image-nhung-dia-diem-chup-anh-dep-o-sai-gon-67e8e05b2770ad98129170810a54ec9b.jpg', 'female10@example.com', 'ADMIN', 1, 1, true),
    (24,'long1', 'admin', 'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/05013955/image-nhung-dia-diem-chup-anh-dep-o-sai-gon-67e8e05b2770ad98129170810a54ec9b.jpg', 'female10@example.com', 'long1', 2, 3, true),
    (25,'long2', 'admin', 'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/05013955/image-nhung-dia-diem-chup-anh-dep-o-sai-gon-67e8e05b2770ad98129170810a54ec9b.jpg', 'female10@example.com', 'long2', 2, 2, true),
    (26,'long3', 'admin', 'https://cdn.vn.alongwalk.info/wp-content/uploads/2023/04/05013955/image-nhung-dia-diem-chup-anh-dep-o-sai-gon-67e8e05b2770ad98129170810a54ec9b.jpg', 'female10@example.com', 'long3', 3, 1, true);



INSERT INTO user_profile (last_name, first_name, birthday, country, address, balance, phone_number, price, id_card, gender, height, weight, basic_request, facebook_link, isvip, is_active, account_id, zone_id,views,date_create,describes)
VALUES
    ('Doe', 'John', '1990-05-15', 'Việt nam', '123 Tố Hữu', 1000, '555-1234', 500, '123456789', 'nam', '180 cm', '75 kg', 'Basic request', 'https://facebook.com/johndoe', true, true, 1, 1,10,'2023-03-04','mô tả 1'),
    ('Smith', 'Mike', '1988-02-20', 'Việt nam', '456 Phạm Văn Đồng', 750, '555-9876', 300, '987654321', 'nam', '175 cm', '70 kg', 'Intermediate request', 'https://facebook.com/mikesmith', false, true, 2, 2,30,'2023-03-05','mô tả 2'),
    ('Johnson', 'David', '1995-09-30', 'Việt nam', '789 Cô Lô Nhuê Home Stay', 1200.00, '555-5678', 600, '345678901', 'nam', '190 cm', '80 kg', 'Advanced request', 'https://facebook.com/davidjohnson', true, true, 3, 1,20,'2023-03-06','mô tả 1'),
    ('Brown', 'Christopher', '1992-08-10', 'Việt nam', '567 Thái Bình', 900.25, '555-2345', 400, '567890123', 'nam', '175 cm', '70 kg', 'Standard request', 'https://facebook.com/chrisbrown', false, true, 4, 2,54,'2023-03-07','mô tả 1'),
    ('Wilson', 'James', '1987-11-25', 'Việt nam', '890 Cầu Giấy', 1500, '555-8765', 700, '678901234', 'nam', '185 cm', '80 kg', 'Premium request', 'https://facebook.com/jameswilson', true, true, 5, 1,27,'2023-04-04','mô tả 1'),
    ('Martinez', 'Robert', '1993-04-05', 'Việt nam', '123 Phạm Ngọc Thạch', 1100.50, '555-6789', 550, '789012345', 'nam', '180 cm', '75 kg', 'Basic request', 'https://facebook.com/robertmartinez', false, true, 6, 2,30,'2023-04-06','mô tả 1'),
    ('Garcia', 'Daniel', '1985-06-18', 'Việt nam', '456 lô TT01 23', 800, '555-3456', 350, '890123456', 'nam', '170 cm', '65 kg', 'Intermediate request', 'https://facebook.com/danielgarcia', true, true, 7, 1,45,'2023-04-07','mô tả 1'),
    ('Brown', 'Joseph', '1991-09-03', 'Việt nam', '789 HD Mon', 1200.25, '555-9876', 600, '901234567', 'nam', '180 cm', '70 kg', 'Advanced request', 'https://facebook.com/josephbrown', true, true, 8, 2,44,'2023-05-05','mô tả 1'),
    ('Johnson', 'William', '1989-02-12', 'Việt nam', '890 Eco Park', 1400, '555-2345', 700, '012345678', 'nam', '188 cm', '85 kg', 'Premium request', 'https://facebook.com/williamjohnson', false, true, 9, 1,57,'2023-05-06','mô tả 1'),
    ('Davis', 'Charles', '1994-07-27', 'Việt nam', '567 Sài Gòn', 950, '555-8765', 450, '123456789', 'nam', '182 cm', '77 kg', 'Standard request', 'https://facebook.com/charlesdavis', true, true, 10, 2,90,'2023-05-07','mô tả 1'),
    ('Williams', 'Emma', '1995-05-15', 'Việt nam', '123 Đà Nẵng', 1050, '555-1234', 550, '123456789', 'nữ', '165 cm', '55 kg', 'Basic request', 'https://facebook.com/emmawilliams', true, true, 11, 2,22,'2023-06-07','mô tả 1'),
    ('Smith', 'Olivia', '1998-02-20', 'Việt nam', '456 Bình Định', 720, '555-9876', 290, '987654321', 'nữ', '170 cm', '60 kg', 'Intermediate request', 'https://facebook.com/oliviasmith', false, true, 12, 1,43,'2023-06-08','mô tả 1'),
    ('Johnson', 'Ava', '1994-09-30', 'Việt nam', '789 Phú Quốc', 1150, '555-5678', 590, '345678901', 'nữ', '160 cm', '50 kg', 'Advanced request', 'https://facebook.com/avajohnson', true, true, 13, 2,54,'2023-06-09','mô tả 1'),
    ('Brown', 'Sophia', '1992-08-10', 'Việt nam', '567 Hà Nội', 850, '555-2345', 390, '567890123', 'nữ', '162 cm', '55 kg', 'Standard request', 'https://facebook.com/sophiabrown', false, true, 14, 1,67,'2023-06-10','mô tả 1'),
    ('Martinez', 'Isabella', '1987-11-25', 'Việt nam', '890 Vũng Tàu', 1400, '555-8765', 690, '678901234', 'nữ', '168 cm', '58 kg', 'Premium request', 'https://facebook.com/isabellamartinez', true, true, 15, 2,90,'2023-07-04','mô tả 1'),
    ('Garcia', 'Mia', '1993-04-05', 'Việt nam', '123 Hưng Yên', 1050, '555-6789', 500, '789012345', 'nữ', '158 cm', '52 kg', 'Basic request', 'https://facebook.com/miagarcia', false, true, 16, 1,91,'2023-07-07','mô tả 1'),
    ('Rodriguez', 'Emily', '1985-06-18', 'Việt nam', '456 Thái Nguyên', 780, '555-3456', 310, '890123456', 'nữ', '163 cm', '54 kg', 'Intermediate request', 'https://facebook.com/emilyrodriguez', true, true, 17, 2,80,'2023-07-08','mô tả 1'),
    ('Wilson', 'Abigail', '1991-09-03', 'Việt nam', '789 Nam Định', 1150, '555-9876', 590, '901234567', 'nữ', '165 cm', '56 kg', 'Advanced request', 'https://facebook.com/abigailwilson', true, true, 18, 1,65,'2023-07-09','mô tả 1'),
    ('Anderson', 'Harper', '1989-02-12', 'Việt nam', '890 Hải Phòng', 1300, '555-2345', 670, '012345678', 'nữ', '170 cm', '58 kg', 'Premium request', 'https://facebook.com/harperanderson', false, true, 19, 2,22,'2023-08-05','mô tả 1'),
    ('Clark', 'Ella', '1994-07-27', 'Việt nam', '567 Nghện An', 910, '555-8765', 430, '123456789', 'nữ', '166 cm', '53 kg', 'Standard request', 'https://facebook.com/ellaclark', true, true, 20, 1,29,'2023-08-07','mô tả 1'),
    ('Clark', 'Ella', '1994-07-27', 'Việt nam', '567 Nghện An', 910, '555-8765', 430, '123456789', 'nữ', '166 cm', '53 kg', 'Standard request', 'https://facebook.com/ellaclark', true, true, 24, 1,29,'2023-08-07','mô tả 1'),
    ('Clark', 'Ella', '1994-07-27', 'Việt nam', '567 Nghện An', 910, '555-8765', 430, '123456789', 'nữ', '166 cm', '53 kg', 'Standard request', 'https://facebook.com/ellaclark', true, true, 25, 1,29,'2023-08-07','mô tả 1'),
    ('Clark', 'Ella', '1994-07-27', 'Việt nam', '567 Nghện An', 910, '555-8765', 430, '123456789', 'nữ', '166 cm', '53 kg', 'Standard request', 'https://facebook.com/ellaclark', true, true, 26, 1,29,'2023-08-07','mô tả 1');


-- bảng phụ

INSERT INTO user_profile_supplies(user_profile_id,supplies_id)
values
    (1,2),(1,7),(1,9),
    (2,2),(2,3),(2,5),(2,7),
    (3,1),(3,3),(3,6),(3,7),
    (4,1),(4,2),(4,6),(4,8),
    (5,1),(5,2),(5,6),(5,9),
    (6,1),(6,2),(6,5),(6,9),
    (7,1),(7,2),(7,5),(7,7),(7,9),
    (8,1),(8,2),(8,4),(8,8),
    (9,3),(9,5),(9,6),(9,7),(9,8),
    (10,1),(10,5),(10,7),(10,8),
    (11,2),(11,3),(11,7),(11,9),
    (12,1),(12,6),(12,7),(12,9),
    (13,1),(13,2),(13,4),(13,6),(13,8),
    (14,1),(14,2),(14,8),(14,9),
    (15,1),(15,2),(15,4),(15,9),
    (16,1),(16,2),(16,6),(16,7),(16,8),
    (17,2),(17,3),(17,5),(17,6),
    (18,2),(18,6),(18,7),(18,8),
    (19,2),(19,3),(19,6),(19,8),
    (20,1),(20,3),(20,5),(20,7),(20,9);

INSERT INTO review (content, date, is_active, rating, accountccdv_id, account_user_id)
VALUES
    ('Review 1', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 2', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 3', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 4', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3))),
    ('Review 5', NOW(), 1, FLOOR(1 + (RAND() * 5)), FLOOR(14 + (RAND() * 6)), FLOOR(20 + (RAND() * 3)));


INSERT INTO Bill (id,address, date_create,date_start, date_end, price, total, hour, accountccdv_id, account_user_id, status_id, is_active)
VALUES
    (1,'123 ngõ cửa thiên đường','2023-07-23','2023-08-01', '2023-08-02', 100, 500, 5, 1, 21, 6, true),
    (2,'Tại Gia','2023-07-17', '2023-08-03', '2023-08-05', 150, 400, 8, 2, 21, 6, true),
    (3,'Phú Quốc','2023-07-18', '2023-08-06', '2023-08-07', 80, 320, 4, 3, 21, 6, true),
    (4,'Hạ Long','2023-07-19', '2023-08-08', '2023-08-10', 200, 2000, 10, 4, 21, 6, true),
    (5,'Nha Trang','2023-07-20', '2023-08-11', '2023-08-12', 120, 720, 6, 5, 21, 6, true),
    (6,'Phong Nha Kẻ Bàng','2023-07-21', '2023-08-13', '2023-08-15', 180, 1620, 9, 6, 21, 6, true),
    (7,'Côn Sơn','2023-07-21', '2023-08-16', '2023-08-17', 90, 360, 4, 7, 21, 6, true),
    (8,'Côn Đảo','2023-07-22', '2023-08-18', '2023-08-20', 150, 1050, 7, 8, 21, 6, true),
    (9,'Cắm Trại','2023-07-22', '2023-08-21', '2023-08-23', 100, 500, 5, 9, 21, 6, true),
    (10,'45678agsvd','2023-07-22', '2023-08-24', '2023-08-25', 130, 780, 6, 10, 21, 6, true),
    (11,'địa ngục trần gian','2023-07-23', '2023-08-26', '2023-08-27', 110, 550, 5, 11, 21, 6, true),
    (12,'fghjkl','2023-07-23', '2023-08-28', '2023-08-30', 170, 1360, 8, 12, 21, 6, true),
    (13,'789 phố Wal','2023-07-23', '2023-08-31', '2023-09-02', 90, 360, 4, 13, 21, 6, true),
    (14,'567 dsadsad','2023-07-24', '2023-09-03', '2023-09-05', 220, 2200, 10, 14, 21, 6, true),
    (15,'890 Elm St','2023-07-25', '2023-09-06', '2023-09-07', 130, 780, 6, 15, 21, 6, true),
    (16,'Côn Sơn','2023-07-26', '2023-08-18', '2023-08-18', 90, 360, 4, 7, 21, 6, true),
    (17,'Côn Đảo','2023-07-27', '2023-08-19', '2023-08-19', 150, 1050, 7, 6, 21, 6, true),
    (18,'Cắm Trại','2023-07-28', '2023-08-21', '2023-08-23', 100, 500, 5, 7, 22, 6, true),
    (19,'45678agsvd','2023-07-28', '2023-08-24', '2023-08-25', 130, 780, 6, 15, 22, 6, true),
    (20,'địa ngục trần gian','2023-07-29', '2023-08-26', '2023-08-27', 110, 550, 5, 15, 22, 6, true),
    (21,'fghjkl','2023-07-29', '2023-08-28', '2023-08-30', 170, 1360, 8, 12, 22, 6, true),
    (22,'789 phố Wal','2023-07-30', '2023-08-31', '2023-09-02', 90, 360, 4, 12, 21, 6, true),
    (23,'567 dsadsad','2023-07-30', '2023-09-03', '2023-09-05', 220, 2200, 10, 14, 21, 6, true),
    (24,'890 Elm St','2023-07-30', '2023-09-06', '2023-09-07', 130, 780, 6, 15, 21, 6, true),
    (25,'địa ngục trần gian','2023-07-29', '2023-08-26', '2023-08-27', 110, 550, 5, 15, 22, 6, true),
    (26,'fghjkl','2023-07-29', '2023-08-28', '2023-08-30', 170, 1360, 8, 16, 22, 6, true),
    (27,'789 phố Wal','2023-08-02', '2023-08-31', '2023-09-02', 90, 360, 4, 17, 21, 6, true),
    (28,'567 dsadsad','2023-07-03', '2023-09-03', '2023-09-05', 220, 2200, 10, 18, 22, 6, true),
    (29,'890 Elm St','2023-07-03', '2023-09-06', '2023-09-07', 130, 780, 6, 19, 21, 6, true),
    (30,'890 Elm St','2023-07-04', '2023-09-06', '2023-09-07', 130, 780, 6, 20, 22, 6, true);

INSERT INTO Image (img,account_id, is_active) VALUES
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 1, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 1, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 1, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 2, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 2, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 2, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 3, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 3, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 3, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 4, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 4, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 4, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 5, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 5, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 5, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 6, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 6, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 6, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 7, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 7, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 7, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 8, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 8, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 8, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 9, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 9, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 9, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 10, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 10, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 10, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 11, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 11, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 11, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 12, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 12, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 12, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 13, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 13, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 13, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 14, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 14, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 14, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 15, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 15, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 15, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 16, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 16, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 16, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 17, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 17, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 17, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 18, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 18, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 18, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 19, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 19, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 19, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 20, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 20, true),
                                                  ('https://img.thuthuattinhoc.vn/uploads/2019/01/13/anh-dep-ve-tinh-ban_104522290.jpg', 20, true);
  



#
# SELECT u.*
# FROM user_profile u
# JOIN account a ON u.account_id = a.id
# JOIN role r ON a.role_id = r.id
# JOIN status s ON a.status_id = s.id
# JOIN bill b ON a.id = b.accountCCDV_id
# WHERE u.gender = 'nam' AND r.name_role = 'ROLE_CCDV';
#
# SELECT
#     u.last_name,
#     u.account_id,
#     u.basic_request,
#     u.price,
#     COUNT(b.id) AS billCount,
#     u.account_id
# FROM user_profile u
# JOIN Account a ON u.account_id = a.id
# JOIN Role r ON a.role_id = r.id
# JOIN Status s ON a.status_id = s.id
# JOIN Review rs ON a.id = rs.accountCCDV_id
# JOIN Bill b ON a.id = b.accountCCDV_id AND b.status_id = s.id
# WHERE u.gender = 'Nam' AND r.name_role = 'ROLE_CCDV' AND s.name_status = 'complete'
# GROUP BY u.account_id
# ORDER BY billCount DESC
# LIMIT 4;
#
#
# SELECT
#     u.last_name,
#     u.account_id,
#     u.basic_request,
#     u.price,
#     COUNT(b.id) AS billCount
# FROM
#     user_profile u
#     JOIN Account a ON u.account_id = a.id
#     JOIN Role r ON a.role_id = r.id
#     JOIN Status s ON a.status_id = s.id
#     JOIN Review rs ON a.id = rs.accountCCDV_id
#     JOIN Bill b ON a.id = b.accountCCDV_id AND b.status_id = s.id
# WHERE
#     u.gender = 'nam'
#     AND r.name_role = 'ROLE_CCDV'
#     AND s.name_status ='active'
#     AND s.name_status = 'complete'
# GROUP BY
#     u.last_name, u.account_id, u.basic_request, u.price
# ORDER BY
#     billCount DESC
# LIMIT 4;

#
# SELECT
#     account.username AS name,
#     account.avatar AS image,
#     account.description AS description,
#     GROUP_CONCAT(service.name ORDER BY RAND() LIMIT 3) AS services,
#     account.price_per_hour AS price
# FROM
#     account
#         JOIN
#     service ON account.id = service.provider_id
# GROUP BY
#     account.id
# ORDER BY
#     account.view_count DESC
#     LIMIT
#     6;

# select u.id, u.last_name, COUNT(bill.id) AS total_bill
#             from user_profile u
#             join account on account.id = u.account_id
#             join bill on bill.accountccdv_id = account.id
#             where (u.first_name like "a")
#             and (u.last_name like "bb")
#             and (year(u.birthday)= 1999)
#             and (u.gender= "Male")
#             and (u.address= "HN")
#             and (u.views= 100)
#             GROUP BY u.id, u.last_name;
#
SELECT DATE(date_start) AS day, SUM(total) AS daily_total
FROM Bill b
WHERE b.accountccdv_id = :idAccountCCDV
  AND date_start >= :startOfMonth
  AND date_start < DATE_ADD(:endOfMonth, INTERVAL 1 DAY)
GROUP BY day