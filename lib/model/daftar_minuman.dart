class DaftarMinuman {
  String name;
  String singkat_desc;
  String description;
  String price;
  String imageAsset;
  List<String> imageAssets;
  List<String> nameminuman;

  DaftarMinuman({
    required this.name,
    required this.singkat_desc,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.imageAssets,
    required this.nameminuman,
  });
}

var daftarMinuman = [
  DaftarMinuman(
      name: 'Teh',
      singkat_desc: 'Teh adalah minuman penyegar yang populer di Indonesia',
      description:
          'Teh adalah minuman penyegar yang populer di Indonesia, Minuman teh disukai masyarakat Indonesia karena memiliki banyak manfaat yang baik bagi kesehatan tubuh manusia.Terdapat 2 jenis menu teh yaitu es teh dan teh hangat.',
      price: 'Rp 5.000',
      imageAsset: 'images/daftar_minuman/teh/teh.jpg',
      imageAssets: [
        'images/daftar_minuman/teh/es_teh.jpg',
        'images/daftar_minuman/teh/teh_hangat.jpg',
      ],
      nameminuman: [
        'ES TEH',
        'TEH HANGAT',
      ]),
  DaftarMinuman(
      name: 'Kopi',
      singkat_desc:
          'Kopi sering kali menjadi pilihan utama bagi sebagian orang untuk menemani harinya',
      description:
          'Kopi sering kali menjadi pilihan utama bagi sebagian orang untuk menemani harinya, baik saat memulai aktivitas, menghilangkan rasa kantuk, maupun buat bersantai.Terdapat 3 jenis menu kopi yaitu Espresso, Caffé Latte, Cappuccino.',
      price: 'Rp 10.000',
      imageAsset: 'images/daftar_minuman/kopi/caffe_latte.jpg',
      imageAssets: [
        'images/daftar_minuman/kopi/latte.jpg',
        'images/daftar_minuman/kopi/capuccino.png',
        'images/daftar_minuman/kopi/esppreso.jpg',
      ],
      nameminuman: [
        'CAFFE LATTE',
        'CAPPUCCINO',
        'ESPRESSO',
      ]),
  DaftarMinuman(
      name: 'Jeruk',
      singkat_desc: 'Selain menyegarkan, es jeruk juga bisa menghidrasi tubuh',
      description:
          'Selain menyegarkan, es jeruk juga bisa menghidrasi tubuh, meningkatkan imun tubuh, hingga menurunkan tekanan darah.Terdapat 2 jenis menu jeruk yaitu es jeruk dan jeruk hangat.',
      price: 'Rp 5.000',
      imageAsset: 'images/daftar_minuman/jeruk/baground_jeruk.png',
      imageAssets: [
        'images/daftar_minuman/jeruk/es_jeruk.jpg',
        'images/daftar_minuman/jeruk/jeruk_hangat.jpg',
      ],
      nameminuman: [
        'ES JERUK',
        'JERUK HANGAT',
      ]),
];
