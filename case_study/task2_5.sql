-- TASK 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các
-- ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự.
select*
from nhan_vien
where ho_ten like "h%" or ho_ten like "t%" or ho_ten like "k%" and length(ho_ten)<= 15;


        
-- TASK 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi
-- và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * from khach_hang
where (timestampdiff(year,ngay_sinh, now()) >= 18 or (timestampdiff(year,ngay_sinh, now()) <= 50)) and
		(dia_chi = 'Đà Nẵng' or dia_chi = 'Quảng Trị');
        
        
-- TASK 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần 
-- theo số lần đặt phòng của khách hàng.
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select khach_hang.ho_ten ,loai_khach.ten_loai_khach, count(*) as so_luong
from (khach_hang inner join loai_khach 
	on loai_khach.id_loai_khach = khach_hang.id_loai_khach)
inner join hop_dong 
on hop_dong.id_khach_hang = khach_hang.id_khach_hang
where ten_loai_khach = 'Diamond'
group by khach_hang.id_khach_hang
order by so_luong;


-- TASK 5. 	Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien
-- (Với TongTien được tính theo công thức như sau: ChiPhiThue + SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem)
-- cho tất cả các Khách hàng đã từng đặt phỏng.
-- (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

select kh.id_khach_hang,kh.ho_ten,lk.ten_loai_khach,hd.id_hop_dong,
dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,
sum(dv.chi_phi_thue + hdct.so_luong*dvdk.gia) as tong_tien
from khach_hang kh 
left join loai_khach lk on kh.id_loai_khach = lk.id_loai_khach
left join hop_dong hd  on kh.id_khach_hang = hd.id_khach_hang
left join dich_vu dv on hd.id_dich_vu = dv.id_dich_vu
left join hop_dong_chi_tiet hdct on hd.id_hop_dong = hdct.id_hop_dong
left join dich_vu_di_kem dvdk on hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
group by kh.id_khach_hang,hd.id_hop_dong;
