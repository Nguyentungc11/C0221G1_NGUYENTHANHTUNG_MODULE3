use database_furama_resort;
-- TASK 10.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu 
-- Dịch vụ đi kèm. Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem
-- (được tính dựa trên việc count các IDHopDongChiTiet).
select 	hd.id_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tien_dat_coc,
        count(hdct.id_dich_vu_di_kem) as SoLuongDichVuDiKem
from hop_dong hd 
inner join hop_dong_chi_tiet hdct on  hd.id_hop_dong = hdct.id_hop_dong
group by hd.id_hop_dong;


-- TASK 11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có
-- TenLoaiKhachHang là “Diamond” và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.

select dvdk.id_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem,dvdk.gia,dvdk.don_vi,dvdk.trang_thai_kha_dung,kh.dia_chi
from dich_vu_di_kem dvdk inner join hop_dong_chi_tiet hdct on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
inner join hop_dong hd on hd.id_hop_dong = hdct.id_hop_dong
inner join khach_hang kh on kh.id_khach_hang = hd.id_khach_hang
inner join loai_khach lk on kh.id_loai_khach = lk.id_loai_khach
where lk.ten_loai_khach = "diamond" and (kh.dia_chi = "Quảng Ngãi" or kh.dia_chi = "Vinh");


-- TASK 12.	Hiển thị IDHopDong, TenNhanVien, TenKhachHang, SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem
-- (được tính dựa trên tổng Hợp đồng chi tiết),
-- TienDatCoc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2019
-- nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2019.

select  hd.id_hop_dong,nv.ho_ten as ten_nv,kh.ho_ten as ten_kh,kh.sdt,
dv.ten_dich_vu,count(hdct.id_hop_dong_chi_tiet) as 'so_luong_dvdk',hd.tien_dat_coc,hd.ngay_lam_hop_dong
from hop_dong hd
inner join nhan_vien nv on hd.id_nhan_vien = nv.id_nhan_vien
inner join khach_hang kh on hd.id_khach_hang = kh.id_khach_hang
inner join dich_vu dv on hd.id_dich_vu = dv.id_dich_vu
inner join hop_dong_chi_tiet hdct on hd.id_hop_dong = hdct.id_hop_dong
where ( (month(hd.ngay_lam_hop_dong) in (10,11,12)) and  year(hd.ngay_lam_hop_dong) = 2019 ) 
		and not exists  (select hd.id_hop_dong
						from hop_dong hd
                        where (month(ngay_lam_hop_dong) between 1 and 6)  
                        and year(hd.ngay_lam_hop_dong) = 2019)
group by hd.id_hop_dong;