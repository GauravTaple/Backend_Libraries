//package com.batch.example.mapper;
//
//import org.springframework.batch.extensions.excel.RowMapper;
//import org.springframework.batch.extensions.excel.support.rowset.RowSet;
//
//import com.batch.example.entity.BookEntity1;
//
//public class CustomBookEntityRowMapper implements RowMapper<BookEntity1> {
//
//    @Override
//    public BookEntity1 mapRow(RowSet rs) throws Exception {
//        BookEntity1 book = new BookEntity1();
//        book.setNoAkun(rs.getColumnValue(0));
//        book.setNamaPelanggan(rs.getColumnValue(1));
//        book.setAlamat1(rs.getColumnValue(2));
//        book.setAlamat2(rs.getColumnValue(3));
//        book.setAlamat3(rs.getColumnValue(4));
//        book.setAlamat4(rs.getColumnValue(5));
//        book.setAlamat5(rs.getColumnValue(6));
//        book.setAlamat6(rs.getColumnValue(7));
//        book.setJenisPembiayaan(rs.getColumnValue(8));
//        book.setJumlahBaki(rs.getColumnValue(9));
//        book.setSetakat(rs.getColumnValue(10));
//        book.setNamaPenjamin1(rs.getColumnValue(11));
//        book.setAlamatPenjamin1(rs.getColumnValue(12));
//        book.setDecName(rs.getColumnValue(13));
//        return book;
//    }
//}
