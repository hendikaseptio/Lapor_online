import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormLogin(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('images/logo.png', width: 200, height: 200),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        hintText: 'Masukkan Alamat Email',
                        labelText: 'Email',
                        // border: OutlineInputBorder(),
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@'))
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        hintText: 'Masukkan Password',
                        labelText: 'Password',
                        // border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@'))
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ),
                  ),
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
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        icon: Icon(Icons.login_outlined, size: 18),
                        label: Text("Login"),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.purpleAccent; //<-- SEE HERE
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
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Respond to button press
                        },
                        icon: Icon(Icons.mail_outline, size: 18),
                        label: Text("Login Dengan Gmail"),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.purpleAccent; //<-- SEE HERE
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
      )),
    ));
  }
}
