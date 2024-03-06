import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/favorite_screen/favorite_screen.dart';
import 'package:projek_akhir_dicoding/search_screen/search_screen.dart';
import 'package:projek_akhir_dicoding/utama_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required String UtamaScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.10),
          ),
          color: Color.fromARGB(255, 252, 251, 250),
          elevation: 20,
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_outlined),
                  iconSize: 30,
                  color: Color.fromARGB(255, 7, 7, 7),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UtamaScreen(
                                UtamaScreen: '',
                                StartScreen: '',
                              )),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30,
                  color: Color.fromARGB(255, 7, 7, 7),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchScreen(
                                UtamaScreen: '',
                              )),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Color.fromARGB(255, 10, 10, 10),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavoriteScreen(
                                UtamaScreen: '',
                              )),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.account_circle_outlined),
                  iconSize: 30,
                  color: Color.fromARGB(255, 151, 80, 32),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
