SELECT
    kategori.nama_kategori,
    SUM(detail_transaksi.qty * detail_transaksi.harga) AS total_transaksi,
    DATE_TRUNC('month', detail_transaksi.tanggal) AS bulan
FROM detail_transaksi
JOIN produk 
    ON detail_transaksi.id_produk = produk.id_produk
JOIN kategori 
    ON produk.id_kategori = kategori.id_kategori
GROUP BY 
    kategori.nama_kategori,
    DATE_TRUNC('month', detail_transaksi.tanggal)
ORDER BY 
    bulan,
    nama_kategori;