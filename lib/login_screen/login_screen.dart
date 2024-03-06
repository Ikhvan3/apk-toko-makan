import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Image.asset('images/logo_startscreen.png', width: 170),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Card(
            color: Color.fromARGB(255, 151, 80, 32),
            child: Column(
              children: [
                Text('Username'),
                SizedBox(height: 5),
                TextField(),
                SizedBox(height: 10),
                Text('Password'),
                SizedBox(
                  height: 5,
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
