import 'package:flutter/material.dart';
import 'login.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  icon: Icon(Icons.logout_outlined, size: 18),
                  label: Text("Logout"),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}