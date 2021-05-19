use database_furama_resort;
-- TASK13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select 	dich_vu_di_kem.id_dich_vu_di_kem,
		dich_vu_di_kem.ten_dich_vu_di_kem,
        dich_vu_di_kem.gia,
        count(hop_dong_chi_tiet.id_dich_vu_di_kem) as SoLanSuDung
from dich_vu_di_kem
inner join hop_dong_chi_tiet on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
group by hop_dong_chi_tiet.id_dich_vu_di_kem
having count(hop_dong_chi_tiet.id_dich_vu_di_kem) = (select max(SoLanSuDung)
    from 
		(select count(id_dich_vu_di_kem) as SoLanSuDung
        from hop_dong_chi_tiet
        group by id_dich_vu_di_kem) as SoLanSuDungDichVuDiKem
        );
        
        
-- TASK14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm IDHopDong, TenLoaiDichVu, TenDichVuDiKem, SoLanSuDung.
select 	hop_dong_chi_tiet.id_hop_dong,
		loai_dich_vu.ten_loai_dich_vu,
        dich_vu_di_kem.ten_dich_vu_di_kem,
        hop_dong_chi_tiet.so_luong
from hop_dong_chi_tiet
inner join hop_dong on hop_dong.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
inner join dich_vu on dich_vu.id_dich_vu = hop_dong.id_dich_vu
inner join loai_dich_vu on loai_dich_vu.id_loai_dich_vu = dich_vu.id_loai_dich_vu
inner join dich_vu_di_kem on dich_vu_di_kem.id_dich_vu_di_kem = hop_dong_chi_tiet.id_dich_vu_di_kem
group by hop_dong_chi_tiet.id_dich_vu_di_kem
having count(hop_dong_chi_tiet.id_dich_vu_di_kem) = 1;

-- TASK15.	Hiển thi thông tin của tất cả nhân viên bao gồm IDNhanVien, HoTen, TrinhDo, TenBoPhan, SoDienThoai, DiaChi 
-- mới chỉ lập được tối đa 3 hợp đồng từ năm 2018 đến 2019.
select 	nhan_vien.id_nhan_vien,
		nhan_vien.ho_ten,
        trinh_do.trinh_do,
		bo_phan.ten_bo_phan,
        nhan_vien.sdt,
        nhan_vien.dia_chi
from nhan_vien
inner join trinh_do on trinh_do.id_trinh_do = nhan_vien.id_trinh_do
inner join bo_phan on bo_phan.id_bo_phan = nhan_vien.id_bo_phan
inner join hop_dong on hop_dong.id_nhan_vien = nhan_vien.id_nhan_vien
where (year(hop_dong.ngay_lam_hop_dong) >= 2018 and year(hop_dong.ngay_lam_hop_dong) <= 2019)
group by hop_dong.id_nhan_vien
having (count(hop_dong.id_nhan_vien) <= 3);


-- TASK16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019
SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;
delete from nhan_vien
 where  id_nhan_vien not in (
						 select id_nhan_vien
						 from hop_dong 
						 where year(hop_dong.ngay_lam_hop_dong) between 2017 and 2019
                         );
SET FOREIGN_KEY_CHECKS=1;

