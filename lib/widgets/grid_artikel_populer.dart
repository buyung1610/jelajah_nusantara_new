import 'package:flutter/material.dart';

class GridArtikelPopuler extends StatelessWidget {
  const GridArtikelPopuler({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // biar bisa di dalam Column
      physics: NeverScrollableScrollPhysics(), // scroll pakai parent
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 kolom
        crossAxisSpacing: 20, // jarak horizontal
        mainAxisSpacing: 20, // jarak vertical
        childAspectRatio: 0.8, // rasio lebar : tinggi
      ),
      itemCount: 4, // jumlah item
      itemBuilder: (context, index) {
        
      },
    );
  }
}
