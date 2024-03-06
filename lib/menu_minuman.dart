import 'package:flutter/material.dart';
import 'package:projek_akhir_dicoding/detail_menu_minuman.dart';
import 'package:projek_akhir_dicoding/model/daftar_minuman.dart';

class MenuMinuman extends StatelessWidget {
  const MenuMinuman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 155, 115, 56),
        title: const Text('MENU MINUM'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DaftarMinuman minuman = daftarMinuman[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMinuman(minuman: minuman);
              }));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white,
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
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  minuman.name,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 254, 254),
                                    fontSize: 20.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              minuman.singkat_desc,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 131, 85, 32),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              minuman.price,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 131, 85, 32),
                                fontSize: 14.0,
                                fontFamily: 'Oxygen',
                              ),
                            ),
                          ],
                        ),
                      )),
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
                        child: Image.asset(minuman.imageAsset),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: daftarMinuman.length,
      ),
    );
  }
}
