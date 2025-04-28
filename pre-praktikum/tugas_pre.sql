CREATE DATABASE IF NOT EXISTS toko;
USE toko;

-- ================================
-- CREATE TABLES
-- ================================

CREATE TABLE Barang (
  kode_barang INT PRIMARY KEY AUTO_INCREMENT,
  jenis_barang VARCHAR(255),
  nama_barang VARCHAR(255),
  harga INT,
  keterangan TEXT
);

CREATE TABLE Pelanggan (
  id_Pelanggan INT PRIMARY KEY AUTO_INCREMENT,
  nama VARCHAR(255),
  alamat VARCHAR(255),
  no_telp INT,
  jenis_barang VARCHAR(255),
  tgl_beli DATE
);

CREATE TABLE Karyawan (
  id_karyawan INT PRIMARY KEY AUTO_INCREMENT,
  no_telp_karyawan VARCHAR(255),
  tanggal_lahir DATE
);

CREATE TABLE Supplier (
  id_supplier INT PRIMARY KEY AUTO_INCREMENT,
  kode_barang INT,
  no_simpan INT,
  jumlah_stok INT,
  jenis_barang VARCHAR(255),
  FOREIGN KEY (kode_barang) REFERENCES Barang (kode_barang)
);

CREATE TABLE Jumlah_Stok (
  id_stok INT PRIMARY KEY AUTO_INCREMENT,
  id_supplier INT,
  kode_barang INT,
  nama_barang VARCHAR(255),
  FOREIGN KEY (id_supplier) REFERENCES Supplier (id_supplier),
  FOREIGN KEY (kode_barang) REFERENCES Barang (kode_barang)
);

CREATE TABLE Beli (
  id_Beli INT PRIMARY KEY AUTO_INCREMENT,
  id_pelanggan INT,
  id_karyawan INT,
  quantity INT,
  garansi TEXT,
  total INT,
  tanggal_beli DATETIME,
  FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan (id_Pelanggan),
  FOREIGN KEY (id_karyawan) REFERENCES Karyawan (id_karyawan)
);

-- ================================
-- INSERT DATA - PELANGGAN
-- ================================

INSERT INTO Pelanggan (nama, alamat, no_telp, jenis_barang, tgl_beli) VALUES
('Aldi Saputra', 'Jakarta', 812345678, 'Elektronik', '2025-04-01'),
('Rina Marlina', 'Bandung', 813123456, 'Perabot', '2025-04-05'),
('Budi Santoso', 'Surabaya', 814987654, 'Elektronik', '2025-04-10'),
('Dewi Lestari', 'Yogyakarta', 815678912, 'Alat Tulis', '2025-04-15'),
('Tono Haryanto', 'Medan', 816345789, 'Elektronik', '2025-04-20');

-- ================================
-- INSERT DATA - KARYAWAN
-- ================================

INSERT INTO Karyawan (no_telp_karyawan, tanggal_lahir) VALUES
('089611223344', '1990-01-15'),
('089622334455', '1985-06-20'),
('089633445566', '1992-03-10'),
('089644556677', '1998-09-12'),
('089655667788', '1995-12-25');

-- ================================
-- INSERT DATA - SUPPLIER
-- ================================

INSERT INTO Supplier (kode_barang, no_simpan, jumlah_stok, jenis_barang) VALUES
(101, 501, 20, 'Elektronik'),
(102, 502, 10, 'Perabot'),
(103, 503, 30, 'Elektronik'),
(104, 504, 50, 'Alat Tulis'),
(105, 505, 15, 'Elektronik');

-- ================================
-- INSERT DATA - BARANG
-- ================================

INSERT INTO Barang (jenis_barang, nama_barang, harga, keterangan) VALUES
('Elektronik', 'TV LED 32 Inch', 1500000, 'Garansi 1 tahun'),
('Perabot', 'Meja Belajar', 750000, 'Kayu jati'),
('Elektronik', 'Blender', 500000, '3 kecepatan'),
('Alat Tulis', 'Pulpen', 25000, 'Tinta hitam'),
('Elektronik', 'Kulkas 2 Pintu', 2500000, 'Low watt');

-- ================================
-- INSERT DATA - JUMLAH STOK
-- ================================

INSERT INTO Jumlah_Stok (id_supplier, kode_barang, nama_barang) VALUES
(1, 101, 'TV LED 32 Inch'),
(2, 102, 'Meja Belajar'),
(3, 103, 'Blender'),
(4, 104, 'Pulpen'),
(5, 105, 'Kulkas 2 Pintu');

-- ================================
-- INSERT DATA - BELI
-- ================================

INSERT INTO Beli (id_pelanggan, id_karyawan, quantity, garansi, total, tanggal_beli) VALUES
(1, 1, 2, '1 Tahun', 3000000, '2025-04-01 10:00:00'),
(2, 2, 1, '6 Bulan', 750000, '2025-04-05 12:30:00'),
(3, 3, 3, '3 Bulan', 1500000, '2025-04-10 14:00:00'),
(4, 4, 10, '-', 250000, '2025-04-15 16:45:00'),
(5, 5, 1, '2 Tahun', 2500000, '2025-04-20 09:15:00');

DESCRIBE supplier;
SELECT * FROM karyawan;