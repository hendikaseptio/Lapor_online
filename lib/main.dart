import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
import 'profile.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pages(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int _selectedIndex = 0;
  static const List<Widget> appbartitle = <Widget>[
    Text('Realisasi'),
    Text('Laporan'),
    Text('Profil'),
  ];
  static const List<Widget> appbaricon = <Widget>[
    Icon(Icons.fact_check_outlined),
    Icon(Icons.chat_outlined),
    Icon(Icons.person_outline),
  ];
  final List<Widget> _children = [
    Home(),
    Home(),
    Profil(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: appbaricon[_selectedIndex],
          title: appbartitle[_selectedIndex],
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.red,
        ),
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined),
              label: 'Realisasi',
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
