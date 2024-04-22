import 'package:flutter/material.dart';
import 'package:ambw_uts_c14210125/app.dart';

class SettingsPage extends StatefulWidget {
  final String page;
  final int menu;
  const SettingsPage({required this.page, required this.menu, super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int pilihMenu = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MainApp()),
                );
              },
            ),
            title: Text(
              widget.page,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Align title text to the center
            ),
            centerTitle: true, // Center the title
          ),
          // backgroundColor: Colors.green,
          body: Center(
            child: Text(
              widget.page,
              style: TextStyle(
                  color: Color.fromARGB(255, 237, 89, 36),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
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
            currentIndex: widget.menu,
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
                        builder: (context) =>
                            SettingsPage(page: 'Discovery', menu: 1)),
                  );
                }
                if (index == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            SettingsPage(page: 'Bookmark', menu: 2)),
                  );
                }
                if (index == 3) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            SettingsPage(page: 'Top Foodie', menu: 3)),
                  );
                }
                if (index == 4) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            SettingsPage(page: 'Profile', menu: 4)),
                  );
                }
              });
              debugPrint(index.toString());
            },
          )),
    );
  }
}
