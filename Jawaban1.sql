-- Tampilkan fullname, region, umur dan gender setiap user

SELECT fullname,region,age,gender
FROM users;

-- tampilkan 5 user dengan salary tertinggi, urutkan berdasarkan age

SELECT salary
FROM users
ORDER BY age,salary DESC;

-- tampilkan fullname, anak, istri, tempat_tinggal

SELECT a.full_name,b.anak,b.istri,b.tempat_tinggal
FROM users a
LEFT JOIN keluarga b on b.user_id = a.id;

-- Tampilkan output terserah dari gabungan table user & keluarga 
dan istilah header baru dan gunakan aliases pada query

SELECT a.first_name as nama_depan,
a.region as daerah,
a.age as umur,
b.anak as beban,
b.istri as nyusahin,
b.tempat_tinggal as parung,
(b.anak + coalsce(b.istri,0)) as beban_hidup
FROM users a
LEFT JOIN keluarga b on b.user_id = a.id;



