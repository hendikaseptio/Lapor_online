import 'package:flutter/material.dart';
import 'profile.dart';
import 'opencamera.dart';

class Add_aduan extends StatefulWidget {
  const Add_aduan({super.key});

  @override
  State<Add_aduan> createState() => _Add_aduanState();
}

class _Add_aduanState extends State<Add_aduan> {
  List<String> ListJenis = [
    "Lingkungan",
    "Konstruksi",
    "Keyamanan",
    "Solok",
    "Sawah Lunto",
    "Padang Panjang"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "BUAT PENGADUAN BARU",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                // icon: Icon(Icons.email_outlined),
                                hintText: 'Masukkan Judul Aduan',
                                labelText: 'Judul Aduan',
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Detail Aduan',
                                labelText: 'Detail Aduan',
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Lokasi',
                                labelText: 'Lokasi',
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "Tambahkan Foto",
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: OutlinedButton.icon(
                                    onPressed: () {
                                      // Respond to button press
                                    },
                                    icon: Icon(Icons.image_outlined, size: 18),
                                    label: Text("Ambil di Galeri"),
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Colors
                                                .purpleAccent; //<-- SEE HERE
                                          return null; // Defer to the widget's default.
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: OutlinedButton.icon(
                                    onPressed: () {
                                      
                                    },
                                    icon: Icon(Icons.photo_camera_outlined,
                                        size: 18),
                                    label: Text("Buka Kamera"),
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Colors
                                                .purpleAccent; //<-- SEE HERE
                                          return null; // Defer to the widget's default.
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  // Respond to button press
                                },
                                icon: Icon(Icons.cancel_outlined, size: 18),
                                label: Text("Batal"),
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.pressed))
                                        return Colors
                                            .purpleAccent; //<-- SEE HERE
                                      return null; // Defer to the widget's default.
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.send_outlined, size: 18),
                                label: Text("Kirim"),
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.pressed))
                                        return Colors
                                            .purpleAccent; //<-- SEE HERE
                                      return null; // Defer to the widget's default.
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            )));
  }
}
