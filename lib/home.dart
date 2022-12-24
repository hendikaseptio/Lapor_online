import 'package:flutter/material.dart';
import 'profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Mohon kepada kepala desa untuk segera menindak lanjuti laporan pengaduan ini karena pada lokasi tersebut sering terjadi kecelakaan',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                      title:
                          const Text('Sampah berserakan di sekitar lapangan'),
                      subtitle: Text(
                        '12-12-2022',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Mohon kerahkan tim kebersihan untuk menjaga kebersihan lapangan',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        mini: true,
        onPressed: () {
          // Respond to button press
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
