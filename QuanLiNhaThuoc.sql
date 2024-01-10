IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'QuanLyNhaThuoc')
BEGIN
    -- Nếu CSDL tồn tại, thì xóa CSDL
    EXEC ('DROP DATABASE QuanLyNhaThuoc')
END

CREATE DATABASE QuanLyNhaThuoc
GO 
USE QuanLyNhaThuoc
GO


--tạo bảng Thuoc ok
CREATE TABLE Thuoc(
	MaThuoc varchar(20) NOT NULL,
	TenThuoc nvarchar(200) NOT NULL,
           ThanhPhan varchar(200) NOT NULL,
	CONSTRAINT PK_Thuoc PRIMARY KEY (MaThuoc)
)
--chèn dữ liệu vào bảng thuốc
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T001', 'Paracetamol', 'Acetaminophen');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T002', 'Ibuprofen', 'Ibuprofen');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T003', 'abc', 'xyz');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T004', 'Omeprazole', 'Omeprazole Magnesium');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T005', 'Atorvastatin', 'Atorvastatin Calcium');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T006', 'Cetirizine', 'Cetirizine Dihydrochloride');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T007', 'Lisinopril', 'Lisinopril Dihydrate');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T008', 'Metformin', 'Metformin Hydrochloride');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T009', 'Simvastatin', 'Simvastatin Sodium');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T010', 'Warfarin', 'Warfarin Sodium');
GO
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T011', 'Naproxen', 'Naproxen Sodium');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T012', 'Diazepam', 'Diazepam');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T013', 'Amoxicillin', 'Amoxicillin Trihydrate');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T014', 'Cephalexin', 'Cephalexin');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T015', 'Losartan', 'Losartan Potassium');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T016', 'Alprazolam', 'Alprazolam');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T017', 'Hydrochlorothiazide', 'Hydrochlorothiazide');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T018', 'Ciprofloxacin', 'Ciprofloxacin');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T019', 'Pantoprazole', 'Pantoprazole Sodium');
INSERT INTO Thuoc (MaThuoc, TenThuoc, ThanhPhan)
VALUES ('T020', 'Prednisone', 'Prednisone');



--tạo bảng DanhMuc ok
CREATE TABLE DanhMucThuoc(
	MaDanhMuc varchar(20) NOT NULL,
	TenDanhMuc nvarchar(100) NOT NULL,
	CONSTRAINT PK_DanhMuc PRIMARY KEY(MaDanhMuc)
)
--chèn dữ liệu vào bảng DanhMuc
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM001', N'Thuốc hạ sốt');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM002', N'Thuốc dị ứng');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM003', N'Thuốc tiêu hóa');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM004', N'Thuốc tim mạch');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM005', N'Thuốc đau đầu');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM006', N'Thuốc đau bao tử');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM007', N'Thuốc kháng khuẩn');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM008', N'Thuốc điều trị tiểu đường');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM009', N'Thuốc kháng viêm');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM010', N'Thuốc chống co giật');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM011', N'Thuốc hạ mỡ máu');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM012', N'Thuốc chống tiểu đường');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM013', N'Thuốc chống táo bón');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM014', N'Thuốc chống dị ứng');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM015', N'Thuốc chống co giật');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM016', N'Thuốc chống viêm nhiễm');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM017', N'Thuốc trị ho');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM018', N'Thuốc chống trầm cảm');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM019', N'Thuốc chống đau cơ xương');
INSERT INTO DanhMucThuoc (MaDanhMuc, TenDanhMuc)
VALUES ('DM020', N'Thuốc chống tê thần kinh');
GO



--tạo bảng KhachHang ok
CREATE TABLE KhachHang(
	MaKhachHang varchar(20) NOT NULL,
	TenKhachHang nvarchar(100) NOT NULL,
	DiaChiKhachHang nvarchar(200) NOT NULL,
	CONSTRAINT PK_KhachHang PRIMARY KEY(MaKhachHang)
)
--chèn dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH001', 'John Doe', '123 Main St, City');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH002', 'Jane Smith', '456 Elm St, Town');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH003', 'Alice Johnson', '789 Oak St, Village');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH004', 'Robert Wilson', '101 Pine St, Suburb');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH005', 'Mary Brown', '202 Cedar St, County');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH006', 'David Lee', '303 Maple St, Riverside');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH007', 'Jennifer Davis', '404 Birch St, Lakeside');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH008', 'Michael Miller', '505 Redwood St, Hilltop');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH009', 'Linda Wilson', '606 Spruce St, Oceanview');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH010', 'William Johnson', '707 Fir St, Beachside');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH011', 'Sarah Harris', '808 Chestnut St, Bayshore');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH012', 'Daniel Anderson', '909 Willow St, Lakeshore');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH013', 'Emily Taylor', '1010 Birch St, Seaside');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH014', 'Joseph Moore', '1111 Pine St, Hillcrest');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH015', 'Olivia Clark', '1212 Oak St, Riverbank');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH016', 'James Lewis', '1313 Elm St, Parkside');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH017', 'Emma White', '1414 Cedar St, Downtown');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH018', 'William Hall', '1515 Redwood St, Uptown');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH019', 'Sophia Scott', '1616 Maple St, Lakeside');
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChiKhachHang)
VALUES ('KH020', 'Michael Brown', '1717 Spruce St, Oceanview');

GO



--tạo bảng NhaCungCap ok
CREATE TABLE NhaCungCap(
	MaNCC varchar(20) NOT NULL,
	TenNCC nvarchar(50) NOT NULL,
	DiaChiNCC nvarchar(200) NOT NULL
	CONSTRAINT PK_NCC PRIMARY KEY(MaNCC)
)
--chèn dữ liệu vào bảng NhaCungCap
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC001', 'Supplier A', '789 Oak St, Village');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC002', 'Supplier B', '101 Pine St, Suburb');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC003', 'Pharma Company X', '123 Elm St, Industrial Park');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC004', 'Medicine Corp Y', '456 Cedar St, Business District');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC005', 'Healthcare Solutions Inc.', '789 Maple St, Medical Plaza');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC006', 'Pharmaceuticals Ltd.', '101 Oak St, Research Center');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC007', 'Wholesaler Z', '202 Birch St, Warehouse District');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC008', 'Med Supplies Group', '303 Redwood St, Commercial Zone');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC009', 'Health Products Co.', '404 Pine St, Distribution Center');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC010', 'Pharma Distributors', '505 Spruce St, Industrial Estate');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC011', 'Supplier C', '606 Elm St, Business Park');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC012', 'Pharma Company Z', '707 Cedar St, Technology Center');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC013', 'Medicine Corp W', '808 Oak St, Medical Campus');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC014', 'Healthcare Ltd.', '909 Pine St, Research Park');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC015', 'Pharmaceuticals Inc.', '1010 Birch St, Science Center');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC016', 'Wholesaler Y', '1111 Redwood St, Business Hub');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC017', 'Med Supplies Co.', '1212 Elm St, Distribution Zone');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC018', 'Health Products Ltd.', '1313 Maple St, Industrial Park');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC019', 'Pharma Distributors Inc.', '1414 Oak St, Commercial Center');
INSERT INTO NhaCungCap (MaNCC, TenNCC, DiaChiNCC)
VALUES ('NCC020', 'Supplier D', '1515 Cedar St, Business Square');
go 



--tạo bảng NhanVien ok
CREATE TABLE NhanVien(
	MaNV varchar(20) NOT NULL,
	TenNV nvarchar(100) NOT NULL,
	CONSTRAINT PK_NhanVien PRIMARY KEY(MaNV)
)
--chèn dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV001', 'Employee 1');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV002', 'Employee 2');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS001', 'Pharmacist 1');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS002', 'Pharmacist 2');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK001', 'QLK 1');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK002', 'QLK 2');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV003', 'Pharmacist 3');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV004', 'Salesperson 2');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS003', 'Pharmacist 4');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS004', 'Pharmacist 5');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK003', 'QLK 3');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK004', 'QLK 4');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV005', 'Employee 3');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV006', 'Employee 4');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS005', 'Pharmacist 6');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS006', 'Pharmacist 7');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK005', 'QLK 5');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK006', 'QLK 6');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV007', 'Employee 5');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV008', 'Employee 6');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS007', 'Pharmacist 8');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS008', 'Pharmacist 9');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK007', 'QLK 7');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK008', 'QLK 8');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV009', 'Employee 7');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV010', 'Employee 8');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS009', 'Pharmacist 10');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS010', 'Pharmacist 11');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV011', 'Employee 9');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV012', 'Employee 10');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS011', 'Pharmacist 12');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS012', 'Pharmacist 13');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK009', 'QLK 9');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('QLK010', 'QLK 10');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV013', 'Employee 11');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('NV014', 'Employee 12');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS013', 'Pharmacist 14');
INSERT INTO NhanVien (MaNV, TenNV)
VALUES ('DS014', 'Pharmacist 15');
GO



--tạo bảng KhoThuoc ok
CREATE TABLE Kho(
	MaKho varchar(20) NOT NULL,
	TenKho nvarchar(100) NOT NULL,
	DiaChiKho nvarchar(200) NOT NULL,
	CONSTRAINT PK_KhoThuoc PRIMARY KEY(MaKho)
)
--chèn dữ liệu vào bảng KhoThuoc
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K001', 'Kho 1', '789 Oak St, Village');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K002', 'Kho 2', '101 Pine St, Suburb');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K003', 'Storage Warehouse A', '123 Elm St, Industrial Park');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K004', 'Main Distribution Center', '456 Cedar St, Business District');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K005', 'Regional Storage Facility', '789 Maple St, Medical Plaza');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K006', 'Central Pharmacy Store', '101 Oak St, Research Center');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K007', 'Metro Pharmaceuticals', '202 Birch St, Warehouse District');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K008', 'Healthcare Supplies Warehouse', '303 Redwood St, Commercial Zone');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K009', 'Medicine Distribution Hub', '404 Pine St, Distribution Center');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K010', 'Regional Medicine Depot', '505 Spruce St, Industrial Estate');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K011', 'Storage Facility X', '606 Elm St, Business Park');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K012', 'Central Distribution Warehouse', '707 Cedar St, Technology Center');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K013', 'Healthcare Depot', '808 Oak St, Medical Campus');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K014', 'Pharmaceutical Warehouse', '909 Pine St, Research Park');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K015', 'Medicine Storage Center', '1010 Birch St, Science Center');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K016', 'Supplies Hub', '1111 Redwood St, Business Hub');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K017', 'Medicine Warehouse', '1212 Elm St, Distribution Zone');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K018', 'Pharma Storage Facility', '1313 Maple St, Industrial Park');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K019', 'Medical Supplies Depot', '1414 Oak St, Commercial Center');
INSERT INTO Kho (MaKho, TenKho, DiaChiKho)
VALUES ('K020', 'Regional Pharmacy Store', '1515 Cedar St, Business Square');

GO



--tạo bảng DanhMuc_Thuoc ok
CREATE TABLE DanhMucThuoc_Thuoc(
	MaThuoc varchar(20) NOT NULL,
	MaDanhMuc varchar(20) NOT NULL,
	CONSTRAINT FK_DanhMuc_Thuoc_MaDanhMuc FOREIGN KEY (MaDanhMuc) REFERENCES DanhMucThuoc(MaDanhMuc) ON DELETE CASCADE,
	CONSTRAINT FK_DanhMuc_Thuoc_MaThuoc FOREIGN KEY(MaThuoc) REFERENCES Thuoc(MaThuoc) ON DELETE CASCADE,
	CONSTRAINT PK_DanhMuc_Thuoc PRIMARY KEY(MaThuoc, MaDanhMuc)
)
--chèn dữ liệu vào bảng DanhMuc_Thuoc
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T001', 'DM001');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T002', 'DM002');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T003', 'DM001');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T004', 'DM002');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T005', 'DM001');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T006', 'DM003');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T007', 'DM004');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T008', 'DM005');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T009', 'DM005');

INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T010', 'DM006');
GO
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T011', 'DM007');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T012', 'DM008');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T013', 'DM009');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T014', 'DM010');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T015', 'DM007');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T016', 'DM008');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T017', 'DM009');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T018', 'DM010');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T019', 'DM007');
INSERT INTO DanhMucThuoc_Thuoc (MaThuoc, MaDanhMuc)
VALUES ('T020', 'DM008');



--tạo bảng ThongTinGia ok
CREATE TABLE ThongTinGia(
	MaThuoc varchar(20) NOT NULL,
	GiaNhap money NOT NULL,
	GiaBan money NOT NULL,
	CONSTRAINT FK_MaThuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc) ON DELETE CASCADE,
	CONSTRAINT PK_Ma_Thuoc PRIMARY KEY(MaThuoc)
)
--chèn dữ liệu vào ThongTinGia
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T001', 5.99, 9.99);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T002', 4.49, 7.99);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T003', 4.49, 11);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T004', 6.99, 12.49);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T005', 3.99, 8.99);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T006', 7.49, 14.99);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T007', 5.49, 9.99);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T008', 8.99, 15.49);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T009', 2.99, 6.99);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T010', 6.49, 11.99);

INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T011', 3.49, 7.99);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T012', 6.99, 12.99);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T013', 4.99, 9.99);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T014', 7.49, 14.99);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T015', 5.99, 10.99);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T016', 3.99, 8.49);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T017', 6.49, 13.49);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T018', 4.49, 9.49);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T019', 5.49, 11.49);
INSERT INTO ThongTinGia (MaThuoc, GiaNhap, GiaBan)
VALUES ('T020', 4.99, 10.99);
go 


--tạo bảng KhachHangSDT ok
CREATE TABLE KhachHangSDT(
	MaKhachHang varchar(20) NOT NULL,
	SDT varchar(20) NOT NULL,
	CONSTRAINT FK_KhachHang_SDT_MaKH FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang) ON DELETE CASCADE,
	CONSTRAINT KhachHang_SDT PRIMARY KEY(MaKhachHang, SDT)
)

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH001', '123-456-7890');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH002', '987-654-3210');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH003', '555-123-4567');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH004', '222-987-6543');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH005', '333-789-0123');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH006', '444-456-7890');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH007', '777-333-6666');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH008', '111-222-3333');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH009', '888-555-4444');

INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH010', '999-000-1111');
-- Thêm 10 bản ghi tiếp theo vào bảng KhachHangSDT
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH011', '123-123-1234');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH012', '987-987-9870');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH013', '555-555-5555');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH014', '222-222-2222');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH015', '333-333-3333');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH016', '444-444-4444');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH017', '777-777-7777');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH018', '111-111-1111');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH019', '888-888-8888');
INSERT INTO KhachHangSDT (MaKhachHang, SDT)
VALUES ('KH020', '999-999-9999');
go 



--tạo bảng NhaCungCap_SDT ok
CREATE TABLE NhaCungCap_SDT(
	MaNCC varchar(20) NOT NULL,
	SDT varchar(20) NOT NULL,
	CONSTRAINT FP_NCC_SDT_MaNCC FOREIGN KEY(MaNCC) REFERENCES NhaCungCap(MaNCC) ON DELETE CASCADE,
	CONSTRAINT PK_NCC_SDT PRIMARY KEY(MaNCC, SDT)
)

INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC001', '555-555-5555');

INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC002', '777-777-7777');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC003', '888-888-8888');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC004', '999-999-9999');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC005', '111-111-1111');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC006', '333-333-3333');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC007', '444-444-4444');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC008', '666-666-6666');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC009', '222-222-2222');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC010', '777-555-9999');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC011', '333-444-5555');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC012', '555-666-7777');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC013', '777-888-9999');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC014', '888-999-1111');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC015', '222-333-4444');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC016', '555-111-6666');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC017', '111-666-3333');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC018', '666-444-9999');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC019', '333-222-5555');
INSERT INTO NhaCungCap_SDT (MaNCC, SDT)
VALUES ('NCC020', '777-111-9999');
go 


--tạo bảng NhanVien_SDT ok
CREATE TABLE NhanVien_SDT(
	MaNV varchar(20) NOT NULL,
	SDT varchar(20) NOT NULL,
	CONSTRAINT FK_NhanVien_SDT_MaNV FOREIGN KEY(MaNV) REFERENCES     NhanVien(MaNV) ON DELETE CASCADE,
	CONSTRAINT PK_NhanVien_SDT PRIMARY KEY(MaNV, SDT)
)

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV001', '111-111-1111');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV001', '111-111-1112');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV001', '111-111-1113');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV002', '222-222-2222');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV003', '333-111-1111');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV004', '444-222-2222');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('DS001', '555-333-3333');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('DS002', '666-444-4444');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('QLK001', '777-555-5555');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('QLK002', '888-666-6666');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV005', '999-777-7777');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV006', '111-888-8888');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('DS003', '222-999-9999');

INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('DS004', '333-000-0000');
GO
-- Thêm 10 bản ghi tiếp theo vào bảng NhanVien_SDT
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV001', '111-111-1114');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV002', '222-222-2223');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV003', '333-111-1112');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV004', '444-222-2223');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('DS001', '555-333-3334');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('DS002', '666-444-4445');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('QLK001', '777-555-5556');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('QLK002', '888-666-6667');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV005', '999-777-7778');
INSERT INTO NhanVien_SDT (MaNV, SDT)
VALUES ('NV006', '111-888-8889');
go 


--tạo bảng DuocSi ok
CREATE TABLE DuocSi(
	MaDS varchar(20) NOT NULL,
	CONSTRAINT FL_DuocSi_MaDS FOREIGN KEY (MaDS) REFERENCES NhanVien(MaNV) ON DELETE CASCADE,
	CONSTRAINT PK_DuocSi PRIMARY KEY(MaDS)
)

INSERT INTO DuocSi (MaDS)
VALUES ('DS001');
INSERT INTO DuocSi (MaDS)
VALUES ('DS002');
INSERT INTO DuocSi (MaDS)
VALUES ('DS003');
INSERT INTO DuocSi (MaDS)
VALUES ('DS004');


--tạo bảng QuanLyKho ok
CREATE TABLE QuanLyKho(
	MaQLK varchar(20) NOT NULL,
	MaKho varchar(20) NOT NULL,
	CONSTRAINT FK_QuanLyKho_MaKho FOREIGN KEY (MaKho) REFERENCES Kho(MaKho),
	CONSTRAINT FK_QuanLyKho_MaQLK FOREIGN KEY (MaQLK) REFERENCES NhanVien(MaNV) ON DELETE CASCADE,
	CONSTRAINT PK_QuanLyKho PRIMARY KEY(MaQLK, MaKho)
)

INSERT INTO QuanLyKho (MaQLK, MaKho)
VALUES ('QLK001', 'K001');

INSERT INTO QuanLyKho (MaQLK, MaKho)
VALUES ('QLK002', 'K002');
INSERT INTO QuanLyKho (MaQLK, MaKho)
VALUES ('QLK003', 'K003');

INSERT INTO QuanLyKho (MaQLK, MaKho)
VALUES ('QLK004', 'K004');

INSERT INTO QuanLyKho (MaQLK, MaKho)
VALUES ('QLK005', 'K005');

INSERT INTO QuanLyKho (MaQLK, MaKho)
VALUES ('QLK006', 'K006');
go 


--tạo bảng Thuoc_KhoThuoc ok
CREATE TABLE Kho_Thuoc(
	MaThuoc varchar(20) NOT NULL,
	MaKho varchar(20) NOT NULL,
	CONSTRAINT FK_Thuoc_KhoThuoc_MaThuoc FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc) ON DELETE CASCADE,
	CONSTRAINT FK_Thuoc_KhoThuoc_MaKho FOREIGN KEY (MaKho) REFERENCES Kho(MaKho) ON DELETE CASCADE,
	CONSTRAINT PK_Thuoc_KhoThuoc PRIMARY KEY(MaThuoc, MaKho)
)

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T001', 'K001');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T002', 'K002');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T003', 'K003');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T004', 'K004');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T005', 'K005');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T006', 'K006');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T007', 'K007');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T008', 'K008');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T009', 'K009');

INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T010', 'K010');
GO
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T011', 'K001');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T012', 'K002');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T013', 'K003');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T014', 'K004');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T015', 'K005');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T016', 'K006');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T017', 'K007');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T018', 'K008');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T019', 'K009');
INSERT INTO Kho_Thuoc (MaThuoc, MaKho)
VALUES ('T020', 'K010');



--tạo bảng HoaDonNhap
CREATE TABLE HoaDonNhap(
	MaHDN varchar(20) NOT NULL,
	NgayNhap date DEFAULT CONVERT (DATE, SYSDATETIME()) NOT NULL,
	CONSTRAINT PK_HDN PRIMARY KEY(MaHDN) 
)

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN001', '2023-10-15');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN002', '2023-10-20');
INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN003', '2023-10-25');
INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN004', '2023-10-30');
INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN005', '2023-11-05');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN006', '2023-11-10');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN007', '2023-11-15');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN008', '2023-11-20');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN009', '2023-11-25');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN010', '2023-11-30');
INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN011', '2023-12-15');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN012', '2023-12-20');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN013', '2023-12-25');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN014', '2023-12-30');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN015', '2024-01-05');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN016', '2024-01-10');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN017', '2024-01-15');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN018', '2024-01-20');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN019', '2024-01-25');

INSERT INTO HoaDonNhap (MaHDN, NgayNhap)
VALUES ('HDN020', '2024-01-30');
go 



--tạo bảng NhapThuoc
CREATE TABLE NhapThuoc(
	MaThuoc varchar(20) NOT NULL,
	MaHDN varchar(20) NOT NULL,
	MaQLK varchar(20) NOT NULL,
	MaKho varchar(20) NOT NULL,
	MaNCC varchar(20) NOT NULL,
	SoLuongNhap int NOT NULL,
	CONSTRAINT FK_CT_HDN_MaThuoc FOREIGN KEY(MaThuoc) REFERENCES Thuoc(MaThuoc),
	CONSTRAINT FK_CT_HDN_MaHDN FOREIGN KEY(MaHDN) REFERENCES HoaDonNhap(MaHDN) ON DELETE CASCADE,
	CONSTRAINT FK_CT_HDN_MaQLK_Kho FOREIGN KEY(MaQLK,MaKho) REFERENCES QuanLyKho(MaQLK,MaKho),
	CONSTRAINT FK_CT_HDN_MaNCC FOREIGN KEY(MaNCC) REFERENCES NhaCungCap(MaNCC),
	CONSTRAINT PK_CT_HDN PRIMARY KEY(MaThuoc, MaHDN,MaQLK,MaNCC,MaKho)
)

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T001', 'HDN001', 'QLK001', 'K001', 'NCC001', 500);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T002', 'HDN002', 'QLK002', 'K002', 'NCC002', 750);
INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T003', 'HDN003', 'QLK003', 'K003', 'NCC003', 600);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T004', 'HDN004', 'QLK004', 'K004', 'NCC004', 450);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T005', 'HDN005', 'QLK005', 'K005', 'NCC005', 700);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T006', 'HDN006', 'QLK006', 'K006', 'NCC006', 550);

GO
-- Bổ sung dữ liệu vào bảng NhapThuoc
INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T011', 'HDN011', 'QLK001', 'K001', 'NCC001', 600);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T012', 'HDN012', 'QLK002', 'K002', 'NCC002', 800);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T013', 'HDN013', 'QLK003', 'K003', 'NCC003', 700);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T014', 'HDN014', 'QLK004', 'K004', 'NCC004', 750);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T015', 'HDN015', 'QLK005', 'K005', 'NCC005', 900);

INSERT INTO NhapThuoc (MaThuoc, MaHDN, MaQLK, MaKho, MaNCC, SoLuongNhap)
VALUES ('T016', 'HDN016', 'QLK006', 'K006', 'NCC006', 650);
go 


--tạo bảng HoaDonBan
CREATE TABLE HoaDonBan(
	MaHDB varchar(20) NOT NULL,
	NgayBan DATE  DEFAULT CONVERT (DATE, SYSDATETIME()) NOT NULL,
	CONSTRAINT PK_HDB PRIMARY KEY(MaHDB)
)

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB001', '2023-10-25');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB002', '2023-10-30');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB003', '2023-11-05');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB004', '2023-11-10');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB005', '2023-11-15');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB006', '2023-11-20');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB007', '2023-11-25');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB008', '2023-11-30');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB009', '2023-12-05');
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB010', '2023-12-10');-- Bổ sung dữ liệu vào bảng HoaDonBan
INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB011', '2023-12-25');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB012', '2023-12-30');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB013', '2024-01-05');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB014', '2024-01-10');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB015', '2024-01-15');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB016', '2024-01-20');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB017', '2024-01-25');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB018', '2024-01-30');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB019', '2024-02-05');

INSERT INTO HoaDonBan (MaHDB, NgayBan)
VALUES ('HDB020', '2024-02-10');

go 



--tạo bảng BanThuoc
CREATE TABLE BanThuoc(
	MaThuoc varchar(20) NOT NULL,
	MaDS varchar(20) NOT NULL,
	MaKhachHang  varchar(20) NOT NULL,
	MaHDB varchar(20) NOT NULL,
	SoLuongXuat int NOT NULL,
	CONSTRAINT FK_CT_HDB_MaThuoc FOREIGN KEY(MaThuoc) REFERENCES Thuoc(MaThuoc),
	CONSTRAINT FK_HDB_MaTN FOREIGN KEY(MaDS) REFERENCES DuocSi(MaDS),
	CONSTRAINT FK_HDB_MaKH FOREIGN KEY(MaKhachHang) REFERENCES KhachHang(MaKhachHang),
	CONSTRAINT FK_CT_HDB_MaHDB FOREIGN KEY(MaHDB) REFERENCES HoaDonBan(MaHDB) ON DELETE CASCADE,
	CONSTRAINT PK_CT_HDB PRIMARY KEY(MaThuoc, MaHDB,MaKhachHang,MaDS)
)

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T001', 'DS001', 'KH001', 'HDB001', 50);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T002', 'DS002', 'KH002', 'HDB002', 75);
INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T003', 'DS001', 'KH001', 'HDB003', 60);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T004', 'DS002', 'KH002', 'HDB004', 80);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T005', 'DS001', 'KH001', 'HDB005', 70);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T006', 'DS002', 'KH002', 'HDB006', 90);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T007', 'DS001', 'KH001', 'HDB007', 65);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T008', 'DS002', 'KH002', 'HDB008', 75);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T009', 'DS001', 'KH001', 'HDB009', 55);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T010', 'DS002', 'KH002', 'HDB010', 70);
INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T011', 'DS001', 'KH001', 'HDB011', 70);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T012', 'DS002', 'KH002', 'HDB012', 90);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T013', 'DS001', 'KH001', 'HDB013', 80);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T014', 'DS002', 'KH002', 'HDB014', 100);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T015', 'DS001', 'KH001', 'HDB015', 85);

INSERT INTO BanThuoc (MaThuoc, MaDS, MaKhachHang, MaHDB, SoLuongXuat)
VALUES ('T016', 'DS002', 'KH002', 'HDB016', 110);
GO


SELECT SUM(BT.SoLuongXuat*TTG.GiaBan) AS DanhThu
FROM (BanThuoc as BT
LEFT JOIN HoaDonBan as HDB ON BT.MaHDB=HDB.MaHDB
LEFT JOIN ThongTinGia as TTG ON BT.MaThuoc=TTG.MaThuoc)
WHERE  HDB.NgayBan between '2023/10/05' AND '2023/10/15'
GO
SELECT SUM(BT.SoLuongXuat*TTG.GiaBan) AS DanhThu
FROM (BanThuoc as BT
LEFT JOIN HoaDonBan as HDB ON BT.MaHDB=HDB.MaHDB
LEFT JOIN ThongTinGia as TTG ON BT.MaThuoc=TTG.MaThuoc)
GO
WITH DoanhSoTheoThang AS (
    SELECT
        MONTH(HoaDonBan.NgayBan) AS Thang,
        SUM(ThongTinGia.GiaBan * BanThuoc.SoLuongXuat) AS DoanhSo
    FROM
        HoaDonBan
    JOIN BanThuoc ON HoaDonBan.MaHDB = BanThuoc.MaHDB
    JOIN ThongTinGia ON BanThuoc.MaThuoc = ThongTinGia.MaThuoc
    WHERE
        YEAR(HoaDonBan.NgayBan) = 2023
    GROUP BY
        MONTH(HoaDonBan.NgayBan)
)
SELECT
    Thang,
    DoanhSo
FROM
    DoanhSoTheoThang
WHERE
    DoanhSo = (SELECT MAX(DoanhSo) FROM DoanhSoTheoThang);
GO
WITH SoLuongHangTheoNCC AS (
    SELECT
        NhaCungCap.MaNCC,
        NhaCungCap.TenNCC,
        SUM(NhapThuoc.SoLuongNhap) AS TongSoLuong
    FROM
        NhaCungCap
    JOIN NhapThuoc ON NhaCungCap.MaNCC = NhapThuoc.MaNCC
    JOIN HoaDonNhap ON NhapThuoc.MaHDN = HoaDonNhap.MaHDN
    WHERE
        YEAR(HoaDonNhap.ngayNhap) = 2023 AND NhaCungCap.DiaChiNCC LIKE N'%TP.HCM%'
    GROUP BY
        NhaCungCap.MaNCC, NhaCungCap.TenNCC
)
SELECT
    MaNCC,
    TenNCC,
    TongSoLuong
FROM
    SoLuongHangTheoNCC
WHERE
    TongSoLuong = (SELECT MAX(TongSoLuong) FROM SoLuongHangTheoNCC)
GO
WITH SoLuongMuaTheoLoaiThuoc AS (
    SELECT
        Thuoc.maThuoc,
        Thuoc.tenThuoc,
        SUM(BanThuoc.SoLuongXuat) AS TongSoLuong
    FROM
        Thuoc
    JOIN BanThuoc ON Thuoc.maThuoc = BanThuoc.MaThuoc
    JOIN HoaDonBan ON BanThuoc.MaHDB = HoaDonBan.MaHDB
    JOIN KhachHang ON BanThuoc.MaKhachHang = KhachHang.MaKhachHang
    WHERE
        KhachHang.DiaChiKhachHang LIKE N'%Hà Nội%'
        AND HoaDonBan.NgayBan >= '2023-08-01'
        AND HoaDonBan.NgayBan <= '2023-10-31'
    GROUP BY
        Thuoc.maThuoc, Thuoc.tenThuoc
)
SELECT
    maThuoc,
    tenThuoc,
	TongSoLuong
FROM
    SoLuongMuaTheoLoaiThuoc
WHERE
    TongSoLuong = (SELECT MAX(TongSoLuong) FROM SoLuongMuaTheoLoaiThuoc);
GO
WITH DoanhThuTheoNhanVien AS (
    SELECT
        DuocSi.MaDS,

        SUM(ThongTinGia.GiaBan * BanThuoc.SoLuongXuat) AS DoanhThu
    FROM
        DuocSi
    JOIN BanThuoc ON DuocSi.MaDS = BanThuoc.MaDS
    JOIN ThongTinGia ON BanThuoc.MaThuoc = ThongTinGia.MaThuoc
    JOIN HoaDonBan ON BanThuoc.MaHDB = HoaDonBan.MaHDB
    WHERE
       YEAR(HoaDonBan.NgayBan) = 2023
    GROUP BY
        DuocSi.MaDS
)
SELECT
    MaDS,
    SUM(DoanhThu) AS TongDoanhThu
FROM
    DoanhThuTheoNhanVien
GROUP BY
    MaDS
ORDER BY
    TongDoanhThu DESC;
