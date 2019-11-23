SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE diemsv;

--Nhap Du Lieu Cho Bang He Dao Tao --
insert into HeDT values ('A01','Dai Hoc'), ('B01','Cao Dang'),('C01','Trung Cap'),('D01','Cong Nhan');

-- Nhap Du Lieu Bang Ma Khoa Hoc --
insert into KhoaHoc values('K1','Dai Hoc khoa 1');
insert into KhoaHoc values('K2','Dai Hoc khoa 2');
insert into KhoaHoc values('K3','Dai Hoc khoa 3');
insert into KhoaHoc values('K9','Dai Hoc khoa 4');
insert into KhoaHoc values('K10','Dai Hoc khoa 5');
insert into KhoaHoc values('K11','Dai Hoc khoa 6');

-- Nhap Du Lieu bang Khoa --
insert into Khoa values('CNTT','Cong nghe thong tin','Tang 4 nha B','043768888');
insert into Khoa values('CK','Co Khi','Tang 5 nha B','043768888');
insert into Khoa values('DT','Dien tu','Tang 6 nha B','043768888');
insert into Khoa values('KT','Kinh te','Tang 2 nha C','043768888');

-- Nhap Du Lieu Cho Bang Lop --
insert into Lop values('MT1','May tinh 1','CNTT','A01','K2');
insert into Lop values('MT2','May tinh 2','CNTT','A01','K2');
insert into Lop values('MT3','May tinh 3','CNTT','A01','K2');
insert into Lop values('MT4','May tinh 4','CNTT','A01','K2');
insert into Lop values('KT1','Kinh te 1','KT','A01','K2');

-- Nhap Du Lieu Bang Sinh Vien --
insert into SinhVien values('0241060218','Nguyen Minh Mot',1,'1989-08-27','Hai Duong','MT3'),('0241060318','Nguyen Minh Hai',1,'1989-08-02','Nam Dinh','MT1'),('0241060418','Nguyen Minh Ba',1,'1989-04-07','Ninh Binh','MT2'),('0241060518','Nguyen Minh Bon',1,'1989-08-07','Ninh Binh','MT1'),('0241060618','Nguyen Minh Nam',0,'1989-08-07','Nam Dinh','MT3'),('0241060718','Nguyen Minh Sau',1,'1989-04-07','Ha Noi','MT3'),('0241060818','Nguyen Minh Bay',1,'1998-08-07','Ha Noi','MT3'),('0241060918','Nguyen Minh Tam',1,'1998-08-07','Hai Duong','MT2'),('0241060128','Nguyen Minh Chin',1,'1998-08-07','Hai Duong','MT2'),('0241060138','Nguyen Minh Muoi',1,'1998-08-07','Ha Nam','MT2'),('0241060148','Nguyen Minh Muoi Mot',0,'1998-08-07','Bac Giang','MT4'),('0241060158','Nguyen Minh Muoi Hai',0,'1998-08-07','Ha Noi','MT4'),('0241060168','Nguyen Minh Muoi Ba',1,'1998-08-07','Hai Duong','MT4'),('0241060178','Nguyen Minh Muoi Bon',1,'1998-08-07','Nam Dinh','MT1'),('0241060978','Nguyen Minh Muoi Nam',1,'1998-08-07','Nam Dinh','KT1');


-- Nhap Du Lieu Bang Mon Hoc --
insert into mon values('SQL','SQL',5);
insert into mon values('JV','Java',6);
insert into mon values('CNPM','Cong nghe phan mem',4);
insert into mon values('PTHT','Phan tich he thong',4);
insert into mon values('Mang','Mang may tinh',5);

-- Nhap Du Lieu Bang Diem --
insert into Diem(MaSV,MaMH,HocKy,DiemLan1) values('0241060218','SQL',5,7);
insert into Diem(MaSV,MaMH,HocKy,DiemLan1) values('0241060418','SQL',5,6);
insert into Diem(MaSV,MaMH,HocKy,DiemLan1) values('0241060218','CNPM',5,8);
insert into Diem values('0241060518','SQL',5,4,6);
insert into Diem values('0241060218','Mang',5,4,5);
insert into Diem values('0241060218','JV',5,4,4);
insert into Diem values('0241060518','JV',5,4,6);
insert into Diem values('0241060218','PTHT',4,2,5);
insert into Diem(MaSV,MaMH,HocKy,DiemLan1) values('0241060318','SQL',4,9);
insert into Diem(MaSV,MaMH,HocKy,DiemLan1) values('0241060618','SQL',4,8);
insert into Diem values('0241060318','Mang',5,3,4);
insert into Diem values('0241060418','Mang',5,4,4);
insert into Diem(MaSV,MaMH,HocKy,DiemLan1) values('0241060518','Mang',5,8);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
