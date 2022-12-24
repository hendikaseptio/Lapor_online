import 'package:flutter/material.dart';
import 'profile.dart';

class Realisasi extends StatelessWidget {
  const Realisasi({super.key});

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
                    Image.asset('assets/sample/fix_jalan.jpg'),
                    ListTile(
                      title: const Text('Perbaikan Jalan di perbatasan'),
                      subtitle: Text(
                        '12-1-2023',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Jalan di perbatasan desa kini sudah diperbaiki sengga tidak ada lagi korban kecelakan',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Image.asset('assets/sample/fix_sampah.jpg'),
                    ListTile(
                      title:
                          const Text('Pengangkutan sampah'),
                      subtitle: Text(
                        '20-12-2022',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Tim Kebersihan desa kini mulai aktif beroperasi untuk membrantas sampah yang berserakan',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
