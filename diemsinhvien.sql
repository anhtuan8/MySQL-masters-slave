SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS diemsv;
CREATE SCHEMA diemsv;
USE diemsv;

-- Tao Bang Mon Hoc --
Create Table mon
(  MaMH VARCHAR(5) not null NOT NULL,
   TenMH VARCHAR(45) not null,
   TinChi int not null,
   PRIMARY KEY(MaMH)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Tao Bang He Dao Tao --
Create Table HeDT
 (
   MaHeDT varchar(5) not null,
   TenHeDT varchar(40) not null,
  PRIMARY KEY  (MaHeDT)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Tao Bang Khoa Hoc --
Create Table KhoaHoc
 (
   MaKhoaHoc varchar(5) not null,
   TenKhoaHoc varchar(20) not null,
  PRIMARY KEY  (MaKhoaHoc)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Tao Bang Khoa --
Create Table Khoa
 (
   MaKhoa varchar(5) NOT NULL,
   TenKhoa varchar(30) not null,
   DiaChi varchar(100) not null,
   DienThoai varchar(20) not null,
  PRIMARY KEY  (MaKhoa)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Tao Bang Lop --
Create Table Lop
 (
   MaLop varchar(5) not null,
   TenLop varchar(30) not null,
   MaKhoa varchar(5),
   MaHeDT varchar(5),
   MaKhoaHoc varchar(5),
   KEY idx_fk_makhoa (MaKhoa),
   KEY idx_fk_mahedt (MaHeDT),
   KEY idx_fk_makhoahoc (MaKhoaHoc),
   CONSTRAINT `fk_lop_khoa` FOREIGN KEY (MaKhoa) REFERENCES Khoa (MaKhoa) ON DELETE RESTRICT ON UPDATE CASCADE,
   CONSTRAINT `fk_lop_hedt` FOREIGN KEY (MaHeDT) REFERENCES HeDT (MaHeDT) ON DELETE RESTRICT ON UPDATE CASCADE,
   CONSTRAINT `fk_lop_khoahoc` FOREIGN KEY (MaKhoaHoc) REFERENCES KhoaHoc (MaKhoaHoc) ON DELETE RESTRICT ON UPDATE CASCADE,
   PRIMARY KEY  (MaLop)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Tao Bang Sinh Vien --
Create Table SinhVien
 (
   MaSV varchar(15) not null,
   TenSV varchar(20) ,
   GioiTinh BOOLEAN,
   NgaySinh date,
   QueQuan varchar(50) ,
   MaLop char(5),
   KEY idx_fk_malop (MaLop),
   CONSTRAINT `fk_sv_lop` FOREIGN KEY (MaLop) REFERENCES Lop(MaLop) ON DELETE RESTRICT ON UPDATE CASCADE,
  PRIMARY KEY  (MaSV)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Tao Bang Diem --
Create Table Diem
 (
   MaSV VARchar(15),
   MaMH varchar(5),
   HocKy int not null,
   DiemLan1 int ,
   DiemLan2 int ,
   KEY idx_fk_masv (MaSV),
   KEY idx_fk_mamh (MaMH),
   CONSTRAINT `fk_diem_sv` FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV) ON DELETE RESTRICT ON UPDATE CASCADE,
   CONSTRAINT `fk_diem_mon` FOREIGN KEY (MaMH) REFERENCES mon(MaMH) ON DELETE RESTRICT ON UPDATE CASCADE,
  PRIMARY KEY  (MaSV, MaMH)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
