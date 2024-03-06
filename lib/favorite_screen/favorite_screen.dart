import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/profile_screen/profile_screen.dart';
import 'package:projek_akhir_dicoding/search_screen/search_screen.dart';
import 'package:projek_akhir_dicoding/utama_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key, required String UtamaScreen});

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
                  color: Color.fromARGB(255, 151, 80, 32),
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.account_circle_outlined),
                  iconSize: 30,
                  color: Color.fromARGB(255, 8, 8, 8),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                                UtamaScreen: '',
                              )),
                    );
                  },
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
