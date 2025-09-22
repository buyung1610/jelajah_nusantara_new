// import 'package:flutter/material.dart';

// import '../models/artikel_model.dart';

// class GridArtikelPopuler extends StatelessWidget {
//   final List<Artikel> artikelList;
//   const GridArtikelPopuler({super.key, required this.artikelList});

//   @override
//   Widget build(BuildContext context) {
//     const baseUrl = 'https://api-pariwisata.rakryan.id';

//     return GridView.builder(
//       shrinkWrap: true, // biar bisa di dalam Column
//       physics: NeverScrollableScrollPhysics(), // scroll pakai parent
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2, // 2 kolom
//         crossAxisSpacing: 20, // jarak horizontal
//         mainAxisSpacing: 20, // jarak vertical
//         childAspectRatio: 0.8, // rasio lebar : tinggi
//       ),
//       itemCount: artikelList.length, // jumlah item
//       itemBuilder: (context, index) {
//         final blog = artikelList[index];
//         return GestureDetector(
//           onTap: () {},
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Stack(
//               children: [
//                 // Gambar background
//                 Image.network(
//                   '$baseUrl/${blog.image}',
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                   height: double.infinity,
//                   errorBuilder: (context, error, stackTrace) {
//                     print(error);
//                     return Center(
//                       child: Icon(Icons.broken_image, color: Colors.red),
//                     );
//                   },
//                 ),

//                 // Teks nama gunung
//                 Positioned(
//                   left: 10,
//                   bottom: 40,
//                   child: Container(
//                     height: 20,
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Text(
//                       blog.title,
//                       style: TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ),
//                 ),

//                 Positioned(
//                   left: 10,
//                   bottom: 10,
//                   child: Container(
//                     height: 20,
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.star, color: Colors.yellow, size: 15),
//                         SizedBox(width: 4),
//                         Text(
//                           "4.1",
//                           style: TextStyle(color: Colors.white, fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
            
//           ),
//         );
//       },
//     );
//   }
// }



// FutureBuilder(
//                   future: ArtikelController.getArtikel(), 
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return const CircularProgressIndicator();
//                     } else if (snapshot.hasError) {
//                       return Text('Error: ${snapshot.error}');
//                     } else {
//                       final artikelList = snapshot.data as List<Artikel> ?? [];
//                       final List<Artikel> artikelPopuler = artikelList.take(4).toList();

//                       return GridArtikelPopuler(artikelList: artikelPopuler);
//                     }
//                   }
//                 )



// import 'package:flutter/material.dart';

// class GridArtikelPopuler extends StatelessWidget {
//   const GridArtikelPopuler({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true, // biar bisa di dalam Column
//       physics: NeverScrollableScrollPhysics(), // scroll pakai parent
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2, // 2 kolom
//         crossAxisSpacing: 20, // jarak horizontal
//         mainAxisSpacing: 20, // jarak vertical
//         childAspectRatio: 0.8, // rasio lebar : tinggi
//       ),
//       itemCount: 4, // jumlah item
//       itemBuilder: (context, index) {
//         return GestureDetector(
//           onTap: () {},
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Stack(
//               children: [
//                 // Gambar background
//                 Image.network(
//                   'assets/images/bromo.png',
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                   height: double.infinity,
//                   errorBuilder: (context, error, stackTrace) {
//                     print(error);
//                     return Center(
//                       child: Icon(Icons.broken_image, color: Colors.red),
//                     );
//                   },
//                 ),

//                 // Teks nama gunung
//                 Positioned(
//                   left: 10,
//                   bottom: 40,
//                   child: Container(
//                     height: 20,
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Text(
//                       'Gunung Bromo',
//                       style: TextStyle(color: Colors.white, fontSize: 12),
//                     ),
//                   ),
//                 ),

//                 Positioned(
//                   left: 10,
//                   bottom: 10,
//                   child: Container(
//                     height: 20,
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.star, color: Colors.yellow, size: 15),
//                         SizedBox(width: 4),
//                         Text(
//                           "4.1",
//                           style: TextStyle(color: Colors.white, fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
