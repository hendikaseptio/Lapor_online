import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaporanSaya(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class LaporanSaya extends StatelessWidget {
  const LaporanSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.chat_outlined),
          title: Text('Laporan'),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
          ],
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/sample/jalan.jpg'),
                      ListTile(
                        title: const Text('Jalan di perbatasan rusak'),
                        subtitle: Text(
                          '12-12-2022',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Mohon kepada kepala desa untuk segera menindak lanjuti laporan pengaduan ini karena pada lokasi tersebut sering terjadi kecelakaan',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(Icons.edit_outlined, size: 18),
                            label: Text("Edit"),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(Icons.delete_outline_outlined, size: 18),
                            label: Text("Hapus"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.asset('assets/sample/sampah.jpg'),
                      ListTile(
                        title: const Text('Sampah berserakan di sekitar lapangan'),
                        subtitle: Text(
                          '12-12-2022',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Mohon kepada kepala desa untuk segera menindak lanjuti laporan pengaduan ini karena pada lokasi tersebut sering terjadi kecelakaan',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(Icons.edit_outlined, size: 18),
                            label: Text("Edit"),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              // Perform some action
                            },
                            icon: Icon(Icons.delete_outline_outlined, size: 18),
                            label: Text('Hapus'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          mini: true,
          onPressed: () {
            // Respond to button press
          },
          child: Icon(Icons.add),
        ),
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
