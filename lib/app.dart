import 'package:flutter/material.dart';
import 'package:ambw_uts_c14210125/card.dart';
import 'package:ambw_uts_c14210125/list.dart';
import 'package:ambw_uts_c14210125/settings.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int pilihMenu = 0;

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
            appBar: AppBar(
              // leading: IconButton(
              //   icon: const Icon(Icons.arrow_back),
              //   onPressed: () {
              //     // Add your back navigation logic here
              //   },
              // ),
              title: const Text(
                'Sydney CBD',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                // Align title text to the center
              ),
              // actions: [
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 156, 156, 156),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Add your navigation logic here
                            },
                            icon: const Icon(Icons.search),
                            color: const Color.fromARGB(255, 90, 90, 90),
                          ),
                          const Text(
                            'Search for a restaurants...',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 90, 90, 90),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),

              centerTitle: true, // Center the title
            ),
            backgroundColor: Color.fromARGB(255, 212, 212, 212),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      //carousel
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),

                      child: Stack(
                        //overlay
                        children: [
                          Image.asset(
                            'lib/images/tomyum-cover.jpg',
                            width: double.infinity,
                            height: 220,
                            fit: BoxFit.cover,
                          ),
                          // Overlay
                          Container(
                            width: double.infinity,
                            height: 220,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black.withOpacity(
                                      0.85), // Warna hitam transparan di bagian bawah
                                  Colors
                                      .transparent, // Warna transparan di bagian atas
                                ],
                              ),
                            ),
                            // color: Colors.black.withOpacity(0.2),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Thai Style',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),

                                    // margin: const EdgeInsets.only(left: 15.0, top: 15.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '12 Places',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Column(children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.white,
                                                size: 10,
                                              ),
                                              SizedBox(
                                                  width:
                                                      5), // Jarak antara lingkaran

                                              Icon(
                                                Icons.circle,
                                                color: Color.fromARGB(
                                                    255, 189, 189, 189),
                                                size: 10,
                                              ),
                                              SizedBox(
                                                  width:
                                                      5), // Jarak antara lingkaran

                                              Icon(
                                                Icons.circle,
                                                color: Color.fromARGB(
                                                    255, 189, 189, 189),
                                                size: 10,
                                              ),
                                              SizedBox(
                                                  width:
                                                      5), // Jarak antara lingkaran

                                              Icon(
                                                Icons.circle,
                                                color: Color.fromARGB(
                                                    255, 189, 189, 189),
                                                size: 10,
                                              ),
                                            ],
                                          ),
                                        ]),
                                      ],
                                    ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //most popular
                      margin: const EdgeInsets.only(left: 15.0, top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Most Popular",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Cards()),
                              );
                            },
                            child: const Text('See all',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 237, 89, 36))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        //card
                        height: 220,
                        child: ListView.builder(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 7.0),
                            itemCount: _namaResto.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return MyCard(
                                  nama: _namaResto[index],
                                  image: _image[index],
                                  alamat: _alamatResto[index],
                                  deskripsi: _deskripsiResto[index]);
                            })),
                    Container(
                      //most popular
                      margin: const EdgeInsets.only(left: 15.0, top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Meal Deals",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Cards()),
                              );
                            },
                            child: const Text('See all',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 237, 89, 36))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        //card
                        height: 220,
                        child: ListView.builder(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 7.0),
                            itemCount: _namaResto.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return MyCard(
                                  nama: _namaResto[index],
                                  image: _image[index],
                                  alamat: _alamatResto[index],
                                  deskripsi: _deskripsiResto[index]);
                            })),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: Color.fromARGB(255, 237, 89, 36),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.place_outlined), label: "Discovery"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_outline_rounded),
                    label: "Bookmark"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star), label: "Top Foodie"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: "Profile"),
              ],
              currentIndex: pilihMenu,
              onTap: (int index) {
                setState(() {
                  //ganti warna sesuai index
                  pilihMenu = index;
                  if (index == 0) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainApp()),
                    );
                  }
                  if (index == 1) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SettingsPage(
                                page: 'Discovery',
                                menu: 1,
                              )),
                    );
                  }
                  if (index == 2) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SettingsPage(
                                page: 'Bookmark',
                                menu: 2,
                              )),
                    );
                  }
                  if (index == 3) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SettingsPage(
                                page: 'Top Foodie',
                                menu: 3,
                              )),
                    );
                  }
                  if (index == 4) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => SettingsPage(
                                page: 'Profile',
                                menu: 4,
                              )),
                    );
                  }
                });
                debugPrint(index.toString());
              },
            ));
      }),
    );
  }
}
