import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/detail_menu_makanan.dart';
import 'package:projek_akhir_dicoding/model/daftar_makanan.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 155, 115, 56),
        title: const Text('MENU MAKAN'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DaftarMakanan makanan = daftarMakanan[index];

          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMenu(makanan: makanan);
              }));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Color.fromARGB(255, 253, 253, 253),
              elevation: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: Color.fromARGB(255, 131, 85, 32),
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                makanan.name,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 254, 254),
                                  fontSize: 20.0,
                                  fontFamily: 'Staatliches',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            makanan.singkat_desc,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 131, 85, 32),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            makanan.price,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 131, 85, 32),
                              fontSize: 14.0,
                              fontFamily: 'Oxygen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 102, 67, 27),
                              blurRadius: 5.0,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(makanan.imageAsset),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: daftarMakanan.length,
      ),
    );
  }
}
