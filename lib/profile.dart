import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Akun(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person_outline),
          title: Text('Profil Saya'),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
          ],
          backgroundColor: Colors.deepPurple,
        ),
        body: SafeArea(
            minimum: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 100,
                  ),
                  Text("Hendika Septio"),
                  Text("hendikaseptio@gmail.com"),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Respond to button press
                      },
                      icon: Icon(Icons.logout_outlined, size: 18),
                      label: Text("Logout"),
                    ),
                  ),
                ],
              ),
              // crossAxisAlignment: CrossAxisAlignment.center,
            )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // backgroundColor: Color.fromARGB(255, 124, 41, 241),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'Realisasi',
              icon: Icon(Icons.fact_check_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Laporan',
              icon: Icon(Icons.chat_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Profil',
              icon: Icon(Icons.person_outline),
            ),
          ],
        ));
  }
}

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}