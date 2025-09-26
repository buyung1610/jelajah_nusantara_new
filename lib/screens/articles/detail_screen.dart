import 'package:flutter/material.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/nusa-penida.png"),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Color(0XFFD1A824),
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text("Gunung Bromo", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  "Indonesia, negara kepulauan yang kaya akan keindahan alamnya, memiliki sejumlah gunung berapi yang menakjubkan, salah satunya adalah Gunung Bromo. Terletak di Taman Nasional Bromo Tengger Semeru, Jawa Timur, Gunung Bromo telah menjadi daya tarik utama bagi wisatawan domestik dan mancanegara. Dengan ketinggian sekitar 2.329 meter di atas permukaan laut, Gunung Bromo adalah salah satu gunung berapi paling aktif di Indonesia. Pemandangan kawah yang luas dengan latar belakang langit biru dan awan putih telah menjadi pemandangan ikonik yang memikat banyak pengunjung. Tidak hanya terbatas pada kawahnya, kawasan sekitarnya juga menawarkan panorama alam yang memukau, termasuk lautan pasir serta dikelilingi oleh pegunungan hijau yang menjulang.\n\n"
                  "Taman Nasional Bromo Tengger Semeru juga dikenal karena keberadaan masyarakat Tengger yang menjalankan tradisi dan ritual unik. Salah satunya adalah upacara Kasada yang dilakukan setiap tahun pada bulan purnama di tengah-tengah kawah Gunung Bromo. Dalam upacara ini, masyarakat Tengger memberikan persembahan kepada Sang Hyang Widhi (Tuhan Yang Maha Esa) sebagai tanda syukur atas panen yang melimpah. Ritual ini menarik perhatian banyak wisatawan yang ingin menyaksikan keunikan budaya lokal.\n\n"
                  "Selain pendakian, terdapat beragam kegiatan wisata lain yang dapat dinikmati di sekitar Gunung Bromo. Wisatawan dapat menikmati perjalanan menunggang kuda melintasi lautan pasir, mengunjungi Pura Luhur Poten yang berada di kaki Gunung Bromo, atau sekedar menikmati matahari terbit yang memukau dari puncak Penanjakan. Tidak ketinggalan untuk Anda yang gemar berswafoto, Gunung Bromo memiliki berbagai tempat dan pemandangan menakjubkan yang layak untuk diabadikan.\n\n",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}