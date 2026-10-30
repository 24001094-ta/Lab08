USE QLSinhVien;
GO

-- Bài 5: Stored Procedure tìm sinh viên theo khoa
CREATE OR ALTER PROCEDURE sp_SinhVien_TheoKhoa
    @MaKhoa VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT MaSV, HoTen, NgaySinh, GioiTinh,
           MaKhoa, DiemTB, Email
    FROM SinhVien
    WHERE MaKhoa = @MaKhoa
    ORDER BY HoTen;
END;
GO

-- Bài 9: Stored Procedure thêm sinh viên
CREATE OR ALTER PROCEDURE sp_ThemSinhVien
    @MaSV VARCHAR(15),
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @GioiTinh BIT,
    @MaKhoa VARCHAR(10),
    @DiemTB DECIMAL(4,2),
    @Email VARCHAR(100) = NULL,
    @TongSinhVien INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO SinhVien
    (
        MaSV, HoTen, NgaySinh, GioiTinh,
        MaKhoa, DiemTB, Email
    )
    VALUES
    (
        @MaSV, @HoTen, @NgaySinh, @GioiTinh,
        @MaKhoa, @DiemTB, @Email
    );

    SELECT @TongSinhVien = COUNT(*)
    FROM SinhVien;
END;
GO




USE QLSinhVien;
GO

-- =====================================================
-- BÀI 5: TÌM SINH VIÊN THEO KHOA
-- =====================================================
CREATE OR ALTER PROCEDURE sp_SinhVien_TheoKhoa
    @MaKhoa VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT MaSV, HoTen, NgaySinh, GioiTinh,
           MaKhoa, DiemTB, Email
    FROM SinhVien
    WHERE MaKhoa = @MaKhoa
    ORDER BY HoTen;
END;
GO

-- =====================================================
-- BÀI 9: THÊM SINH VIÊN VÀ TRẢ VỀ TỔNG SỐ SINH VIÊN
-- =====================================================
CREATE OR ALTER PROCEDURE sp_ThemSinhVien
    @MaSV VARCHAR(15),
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @GioiTinh BIT,
    @MaKhoa VARCHAR(10),
    @DiemTB DECIMAL(4,2),
    @Email VARCHAR(100) = NULL,
    @TongSinhVien INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO SinhVien
    (
        MaSV, HoTen, NgaySinh, GioiTinh,
        MaKhoa, DiemTB, Email
    )
    VALUES
    (
        @MaSV, @HoTen, @NgaySinh, @GioiTinh,
        @MaKhoa, @DiemTB, @Email
    );

    SELECT @TongSinhVien = COUNT(*)
    FROM SinhVien;
END;
GO