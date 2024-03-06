import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/login_screen/login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Column(
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 180,
                    child: Image.asset("images/logo_startscreen.png"),
                  ),
                  //SizedBox(height: 7),
                  Text(
                    'Waroeng Noesantara',
                    style: TextStyle(
                      color: Color.fromARGB(255, 177, 108, 43),
                      fontSize: 24,
                      fontFamily: 'Staatliches',
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
