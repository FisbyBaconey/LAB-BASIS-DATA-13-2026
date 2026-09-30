SELECT * FROM mahasiswa

INSERT INTO prodi (nama_prodi)
VALUES 
	('Sastra Mesin'),
	('Seni Rupa dan'),
	('Ilmu Tafsir Mistik')

SELECT * FROM prodi

INSERT INTO mahasiswa (nim, nama, email, id_prodi)
VALUES 
	('H071271001','Rahmat Toyota', 'rahmatomato@gmail.com',1),
	('H071271002','Riski Pajero',NULL, 2),
	('H071271003','Wawan Matic',' wawantwothree@gmail.com',3);

INSERT INTO mahasiswa (nim, nama, email, id_prodi)
VALUES 
	('H071271002','Riski Pajero',NULL, 2)
	
UPDATE mahasiswa
SET ipk = 3.75
WHERE ipk = 0.00;

DELETE FROM mahasiswa
WHERE email IS NULL;

SELECT * FROM mahasiswa;

set search_path TO classicmodels;

SELECT 
	customernumber AS "Nomor Pelanggan",
	customername AS "Nama Pelanggan",
	phone AS "Telepon",
	country AS "Negara"
FROM customers;

-- products productcode name buyprice > 50 
-- buyprice tertinggi ke terkecil (7 produk)

SELECT productcode, productname, buyprice FROM products
WHERE buyprice > 50
ORDER BY buyprice DESC
LIMIT 7;

SELECT DISTINCT country AS "Negara Pelanggan" FROM customers
ORDER BY country ASC
LIMIT 5 OFFSET 5;



SELECT checknumber, paymentdate, amount, customernumber FROM payments
ORDER BY amount DESC
LIMIT 5;


