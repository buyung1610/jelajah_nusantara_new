import 'dart:convert';

import '../models/artikel_model.dart';
import '../services/artikel_sevice.dart';

class ArtikelController {
  static Future<List<Artikel>> getArtikel() async {
    final result = await ArtikelService.getArtikel();

    if (result.statusCode == 200) {
      final data = jsonDecode(result.body)['data'] as List<dynamic>?;
      return data?.map((item) => Artikel.fromJson(item)).toList() ?? [];
    } else {
      throw Exception('Gagal memuat data artikel');
    }
  }
}
