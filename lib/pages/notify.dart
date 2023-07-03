import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Notifikasi',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: DoubleBackToCloseApp(
            snackBar: const SnackBar(
              content: Text('Tekan Lagi Untuk Keluar'),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Hari ini',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: HexColor('#F4F3F4'),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/icons/lonceng.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengiriman Berhasil',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'ke Bengkel Utomo',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '10 menit yang lalu',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: HexColor('#F4F3F4'),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/icons/lonceng.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ada orderan masuk',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'dari Bengkel Utomo',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '1 jam yang lalu',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '2 hari yang lalu',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: HexColor('#F4F3F4'),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/icons/lonceng.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ada permintaan retur',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'dari Bengkel Utomo',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '2 hari yang lalu',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '3 hari yang lalu',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: HexColor('#F4F3F4'),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/icons/lonceng.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stok barang diperbarui',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Stok barang telah ditambah',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '2 hari yang lalu',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: HexColor('#F4F3F4'),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/icons/lonceng.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat datang',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '3 hari yang lalu',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ));
  }
}
