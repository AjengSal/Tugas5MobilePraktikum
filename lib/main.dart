import'package:flutter/material.dart';
import 'package:tugas5/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigasi Flutter",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products =[
      'LAPTOP',
      'MONITOR',
      'KULKAS CANGGIH',
      'IPHONE 17 PRO MAX',
      'SMARTWATCH APPLE (APPLE WATCH)',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Prodak"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder:(context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product),
            trailing: Icon(Icons.chevron_right),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder:(context) => DetailPage(itemTitle: product)
                  )
              );
            },
          );
        },
      ),
    );
  }
}