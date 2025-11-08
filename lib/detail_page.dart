import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemTitle;
  const DetailPage({super.key, required this.itemTitle});

  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, String>> productDetails = {
      'LAPTOP': {
        'image': 'aset/laptop.jpeg',
        'desc':
            'Laptop adalah perangkat komputer portabel yang dirancang untuk mendukung berbagai aktivitas seperti bekerja, belajar, hingga hiburan. Dilengkapi dengan prosesor cepat, baterai tahan lama, dan desain ringan yang mudah dibawa ke mana saja.',
        'harga':
        'RP. 30.000.000',
      },
      'MONITOR': {
        'image': 'aset/monitor.jpeg',
        'desc':
            'Monitor Apple menawarkan kualitas tampilan luar biasa dengan resolusi tinggi, akurasi warna profesional, dan desain minimalis khas Apple. Cocok untuk desainer, editor video, dan pengguna yang mengutamakan kejernihan visual.',
        'harga':
        'RP. 25.000.000',
      },
      'KULKAS CANGGIH': {
        'image': 'aset/kulkas.jpeg',
        'desc':
            'Kulkas canggih modern dilengkapi dengan fitur pintar seperti pengatur suhu otomatis, konektivitas Wi-Fi, dan sistem hemat energi. Beberapa model bahkan memiliki layar sentuh dan kamera internal untuk memantau isi kulkas tanpa perlu membukanya.',
        'harga':
        'RP. 35.000.000',
      },
      // Produk baru
      'IPHONE 17 PRO MAX': {
        'image': 'aset/hp.jpeg',
        'desc':
            'iPhone 17 Pro Max hadir dengan performa super cepat berkat chip terbaru Apple, kamera profesional dengan kemampuan fotografi luar biasa, serta layar ProMotion yang jernih dan responsif. Desain elegan dan daya tahan baterai tinggi menjadikannya smartphone premium terbaik.',
        'harga':
        'RP. 20.000.000',
      },
      'SMARTWATCH APPLE (APPLE WATCH)': {
        'image': 'aset/jam.jpeg',
        'desc':
            'Apple Watch adalah jam tangan pintar yang memadukan gaya dan teknologi. Dilengkapi fitur kesehatan, notifikasi real-time, pelacak aktivitas, dan integrasi sempurna dengan iPhone untuk pengalaman digital yang praktis dan personal.',
        'harga':
        'RP. 15.000.000',
      },
    };

    // Ambil data produk berdasarkan judul
    final product = productDetails[itemTitle];

    return Scaffold(
      appBar: AppBar(
        title: Text(itemTitle),
      ),
      body: product == null
          ? Center(
              child: Text('Produk tidak ditemukan'),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    product['image']!,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    itemTitle,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    product['desc']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    product['harga']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
    );
  }
}
