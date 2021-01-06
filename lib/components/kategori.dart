import 'package:flutter/material.dart';
import 'package:sephorature_app/page/kategori_detail.dart';

class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  var kategories = [
    {"image": "assets/images/11.png", "text": "Bantal"},
    {"image": "assets/images/16.png", "text": "Tempat Tidur"},
    {"image": "assets/images/12.png", "text": "Meja"},
    {"image": "assets/images/13.png", "text": "Kursi"},
    {"image": "assets/images/14.png", "text": "Penyimpanan"},
    {"image": "assets/images/15.png", "text": "Perlengkapan Masak"},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          kategories.length,
          (index) => KategoriWidget(
            image: kategories[index]["image"],
            text: kategories[index]["text"],
          ),
        ),
      ),
    );
  }
}

class KategoriWidget extends StatelessWidget {
  final image;
  final text;

  KategoriWidget({
    this.image,
    this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => new KategoriDetail(
                  kategoriName: text,
                  kategoriGambar: image,
                ))),
        child: Column(
          children: [
            Container(
              width: 100,
              child: ListTile(
                title: Image.asset(
                  image,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

