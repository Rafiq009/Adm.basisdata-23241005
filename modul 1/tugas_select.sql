-- Barang - Mengambil 1 kolom (kode_barang)
SELECT b.kode_barang AS kode FROM Barang b;

-- Pelanggan - Mengambil 1 kolom (nama)
SELECT p.nama AS pelanggan FROM Pelanggan p;

-- Karyawan - Mengambil 1 kolom (id_karyawan)
SELECT k.id_karyawan AS id_karyawan FROM Karyawan k;

-- Supplier - Mengambil 1 kolom (id_supplier)
SELECT s.id_supplier AS supplier_id FROM Supplier s;

-- Jumlah_Stok - Mengambil 1 kolom (nama_barang)
SELECT js.nama_barang AS stok_barang FROM Jumlah_Stok js;

-- Beli - Mengambil 1 kolom (total)
SELECT b.total AS harga_total FROM Beli b;

-- Barang - Mengambil 2 kolom (kode_barang, nama_barang)
SELECT b.kode_barang AS kode, b.nama_barang AS nama_barang FROM Barang b;

-- Pelanggan - Mengambil 2 kolom (nama, alamat)
SELECT p.nama AS pelanggan, p.alamat AS alamat_pelanggan FROM Pelanggan p;

-- Karyawan - Mengambil 2 kolom (id_karyawan, no_telp_karyawan)
SELECT k.id_karyawan AS id_karyawan, k.no_telp_karyawan AS telp_karyawan FROM Karyawan k;

-- Supplier - Mengambil 2 kolom (id_supplier, jenis_barang)
SELECT s.id_supplier AS supplier_id, s.jenis_barang AS jenis_barang FROM Supplier s;




-- Beli - Mengambil 1 kolom (quantity)
SELECT b.quantity AS qty FROM Beli b;

-- Barang - Mengambil 2 kolom (nama_barang, harga)
SELECT b.nama_barang AS barang, b.harga AS harga_barang FROM Barang b;

-- Pelanggan - Mengambil 1 kolom (tgl_beli)
SELECT p.tgl_beli AS tanggal_beli FROM Pelanggan p;

-- Karyawan - Mengambil 2 kolom (id_karyawan, tanggal_lahir)
SELECT k.id_karyawan AS id_karyawan, k.tanggal_lahir AS tgl_lahir FROM Karyawan k;

-- Supplier - Mengambil 1 kolom (no_simpan)
SELECT s.no_simpan AS no_simpan FROM Supplier s;

-- Jumlah_Stok - Mengambil 2 kolom (id_supplier, kode_barang)
SELECT js.id_supplier AS id_supplier, js.kode_barang AS kode_barang FROM Jumlah_Stok js;

-- Beli - Mengambil 1 kolom (garansi)
SELECT b.garansi AS garansi FROM Beli b;

-- Supplier - Mengambil 2 kolom (kode_barang, jumlah_stok)
SELECT s.kode_barang AS kode_barang, s.jumlah_stok AS jumlah_stok FROM Supplier s;

-- Pelanggan - Mengambil 2 kolom (nama, jenis_barang)
SELECT p.nama AS pelanggan, p.jenis_barang AS barang_dibeli FROM Pelanggan p;

-- Karyawan - Mengambil 2 kolom (no_telp_karyawan, tanggal_lahir)
SELECT k.no_telp_karyawan AS telp_karyawan, k.tanggal_lahir AS tgl_lahir FROM Karyawan k;
