import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/model/daftar_makanan.dart';

class DetailMenu extends StatelessWidget {
  final DaftarMakanan makanan;
  const DetailMenu({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 102, 67, 27),
                          blurRadius: 10.0,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(makanan.imageAsset),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 253, 251, 251),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 7, 7, 7),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(30.0),
              child: Text(
                makanan.name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                makanan.description,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(children: <Widget>[
                            const Icon(Icons.monetization_on),
                            const SizedBox(height: 7.0),
                            Text(
                              makanan.price,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Oxygen',
                              ),
                            ),
                          ]),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Color.fromARGB(255, 253, 1, 1),
      ),
      iconSize: 45,
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
