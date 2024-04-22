import 'package:flutter/material.dart';
import 'package:ambw_uts_c14210125/allcard.dart';
import 'package:ambw_uts_c14210125/app.dart';

class Cards extends StatelessWidget {
  Cards({super.key});

  // int pilihMenu = 0;

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 5'
    
  ];

  final List _image = [
    'kkado.jpg',
    'boncafe.jpg',
    'kayanna.jpg',
    'sushiro.jpg',
    'tobys.jpg',
    'union.jpeg',
    'locaahands.jpg'
  ];

  final List _namaResto = [
    'Kkado Chicken',
    'Boncafe ',
    'Kayanna',
    'Sushi Hiro',
    'Toby`s Estate',
    'Union',
    'Locaahands'
  ];

  final List _alamatResto = [
      'RA 16 Ruko North Junction',
      '2 Pregolan Street ',
      '50 Dr.Soetomo Street',
      '71 Manyar Kertoarjo',
      '115 Imam Bonjol Street',
      'LG Pakuwon Mall',
      '39 Tunjungan Street'
    ];

  final List _deskripsiResto = [
    'Fried Chicken, Korea',
    'Steak, America',
    'Grill, Indonesia',
    'Sushi, Japan',
    'Coffee Roaster, Australia',
    'Bakery, America',
    'Pasta, Italy'
  ];

  // @override
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,

     home:Builder(
       builder: (context) {
         return Scaffold(
           appBar: AppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                     Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const MainApp()),
                              );
                    },
                  ),
                  title: const Text(
                    'Sydney CBD',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Align title text to the center
                  ),
                  centerTitle: true, // Center the title
                ),
                      backgroundColor: const Color.fromARGB(255, 233, 233, 233),

          body: ListView.builder(
            
           padding: const EdgeInsets.all(1.0),
                  itemCount: _posts.length,
                  itemBuilder: (context, index){
                    return Rectangle(nama: _namaResto[index], image: _image[index], alamat: _alamatResto[index], deskripsi: _deskripsiResto[index]);
                  }
          )
             );
       }
     ));
  }
}