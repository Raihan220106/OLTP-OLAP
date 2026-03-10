CREATE TABLE detail_transaksi (
    id_detail SERIAL PRIMARY KEY,
    id_produk INT,
    qty INT,
    harga INT,
    
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);