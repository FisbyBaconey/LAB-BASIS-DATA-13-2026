CREATE TABLE prodi (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nama_prodi VARCHAR(100) NOT NULL
);

CREATE TABLE mahasiswa (
	nim VARCHAR(10) PRIMARY KEY,
	nama VARCHAR(100) NOT NULL,
	ipk NUMERIC(3, 2) DEFAULT 0.00,
	email VARCHAR(150) UNIQUE,
	id_prodi INT,
	CONSTRAINT fk_mahasiswa_prodi
		FOREIGN KEY (id_prodi)
		REFERENCES prodi(id)
);

SELECT * FROM mahasiswa;

--1
INSERT INTO prodi(nama_prodi) VALUES ('Sistem Informasi');

INSERT INTO mahasiswa(nim, nama, email, id_prodi)
VALUES 
	('H071251019', 'Fadhiyah Syafikah Firman', 'fadhiyahsf@unhas.ac.id', 1),
	('H071251011', 'Diva Puspita', NULL, 1),
	('H071251007', 'Nurhayu Fiantika Gafar', 'nurhayufg@unhas.ac.id', 1)
RETURNING*;

--2
UPDATE mahasiswa
SET ipk = 3.75 
WHERE ipk = 0.00
RETURNING*;

DELETE FROM mahasiswa
WHERE email IS NULL
RETURNING*;

SELECT * FROM mahasiswa;


	