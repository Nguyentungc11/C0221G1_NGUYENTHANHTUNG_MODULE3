use database_furama_resort;
-- TASK 17.	Cập nhật thông tin những khách hàng có TenLoaiKhachHang từ  Platinium lên Diamond,
--  chỉ cập nhật những khách hàng đã từng đặt phòng với tổng Tiền thanh toán
--  trong năm 2019 là lớn hơn 10.000.000 VNĐ. 
update khach_hang 
set id_loai_khach = 1
where (id_loai_khach = 2)
and id_khach_hang in (select bang_tam.id_khach_hang from (select hd.id_khach_hang,
		sum(dv.chi_phi_thue + hdct.so_luong*dvdk.gia) as tong_tien
        from hop_dong hd
        join dich_vu dv on hd.id_dich_vu = dv.id_dich_vu
        join hop_dong_chi_tiet hdct on hd.id_hop_dong = hdct.id_hop_dong
        join dich_vu_di_kem dvdk on hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
        where year(hd.ngay_lam_hop_dong)=2019
        group by id_khach_hang
        having tong_tien > 10000000 ) as bang_tam	);  
        
	
-- task 18  Xóa những khách hàng có hợp đồng trước năm 2016 (chú ý ràngbuộc giữa các bảng).
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS=1;
delete from khach_hang 
where id_khach_hang in (select id_khach_hang
		from hop_dong 
        where year(ngay_lam_hop_dong)<2016 );
        
        
-- task 19
-- 19.	Cập nhật giá cho các Dịch vụ đi kèm được sử dụng trên 10 lần
--  trong năm 2019 lên gấp đôi.


update dich_vu_di_kem
set gia = gia *2
where id_dich_vu_di_kem in (select bang_tam.id from 
			( select dvdk.id_dich_vu_di_kem as id , sum(hdct.so_luong) as so_lan_su_dung
            from dich_vu_di_kem dvdk
            join hop_dong_chi_tiet hdct on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
            group by dvdk.id_dich_vu_di_kem 
            having so_lan_su_dung > 10) as bang_tam );


-- 20.	Hiển thị thông tin của tất cả các Nhân viên và Khách hàng có trong hệ thống,
--  thông tin hiển thị bao gồm
--  ID (IDNhanVien, IDKhachHang), HoTen, Email, SoDienThoai, NgaySinh, DiaChi.
select 	khach_hang.id_khach_hang as ID,
		khach_hang.ho_ten,
        khach_hang.email,
        khach_hang.sdt,
        khach_hang.ngay_sinh,
        khach_hang.dia_chi,
        'nhân viên' as ViTri
from khach_hang
union all
select 	nhan_vien.id_nhan_vien as ID,
		nhan_vien.ho_ten,
        nhan_vien.email,
        nhan_vien.sdt,
        nhan_vien.ngay_sinh,
        nhan_vien.dia_chi,
        'khách hàng' as ViTri
from nhan_vien;