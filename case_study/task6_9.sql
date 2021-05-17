use database_furama_resort;
-- 6.	Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue, TenLoaiDichVu của tất cả
-- các loại Dịch vụ chưa từng được Khách hàng thực hiện đặt từ quý 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).

Select 	dv.id_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from dich_vu dv inner join hop_dong hd 
on dv.id_dich_vu = hd.id_dich_vu
inner join loai_dich_vu ldv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu
where dv.id_dich_vu not in
	(select hop_dong.id_dich_vu 
	from hop_dong 
	where hop_dong.ngay_lam_hop_dong between '2019-01-01' and '2019-03-31');
    
    

-- TASK 7. Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu
-- của tất cả các loại dịch vụ đã từng được Khách hàng đặt phòng trong năm 2018
-- nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.

select 	dv.id_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,
ldv.ten_loai_dich_vu,hd.ngay_lam_hop_dong
from dich_vu dv
inner join loai_dich_vu ldv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu
inner join hop_dong hd
on hd.id_dich_vu = dv.id_dich_vu
where dv.id_dich_vu 
in (select id_dich_vu from hop_dong where year(ngay_lam_hop_dong) = 2018)
and dv.id_dich_vu not in
	(select id_dich_vu from hop_dong where year(ngay_lam_hop_dong) = 2019);
    

-- TASK 8.	Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên

-- Cách 1 :
select ho_ten from khach_hang
group by ho_ten;
-- Cách 2 :
select ho_ten from khach_hang
union
select ho_ten from khach_hang;
-- Cách 3 : sử dụng union
select distinct ho_ten from khach_hang;

-- TASK 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2019
-- thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.

select month(ngay_lam_hop_dong) as thang, count(id_khach_hang) as so_hop_dong
from hop_dong
where year(ngay_lam_hop_dong) = 2019
group by thang
order by thang;