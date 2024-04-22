import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String nama;
  final String image;
  final String alamat;
  final String deskripsi;
  const MyCard({required this.nama, required this.image, required this.alamat, required this.deskripsi, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Container(
        height: 210,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
                child: Image.asset(
                  'lib/images/$image',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                nama,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                // margin: const EdgeInsets.only(top: -2.0),
                child:  Text(
                  alamat,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 119, 75, 75),
                    fontSize: 12,
                    height: 0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                // margin: const EdgeInsets.only(top: -2.0),
                child:  Text(
                  deskripsi,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 119, 75, 75),
                    fontSize: 12,
                    height: 2.3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
