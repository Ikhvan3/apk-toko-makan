import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/model/daftar_minuman.dart';

class DetailMinuman extends StatelessWidget {
  final DaftarMinuman minuman;

  const DetailMinuman({super.key, required this.minuman});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    //borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      minuman.imageAsset,
                    ),
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
                minuman.name,
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
                minuman.description,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 323,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: minuman.imageAssets.length,
                itemBuilder: (BuildContext context, int index) {
                  String nameminuman = minuman.nameminuman[index];
                  String imageUrl = minuman.imageAssets[index];

                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imageUrl),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                nameminuman,
                                style: TextStyle(
                                  fontFamily: 'Staatliches',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 70),
                              Column(
                                children: <Widget>[
                                  const Icon(Icons.monetization_on),
                                  const SizedBox(height: 2.0),
                                  Text(
                                    minuman.price,
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Staatliches',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
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
