import 'package:flutter/material.dart';
import 'package:sephorature_app/constant.dart';
import 'package:sephorature_app/page/productDetail.dart';

class IsiProduct extends StatefulWidget {
  @override
  _IsiProductState createState() => _IsiProductState();
}

class _IsiProductState extends State<IsiProduct> {
  List<Container> daftarProduct = new List();
  var isiProduct = [
    {"gambar": "assets/images/21.jpg", "name": "Bantal Brendis", "harga": 10},
    {"gambar": "assets/images/25.jpg", "name": "Wondland", "harga": 20},
    {"gambar": "assets/images/29.jpg", "name": "Meja Laptop Roda", "harga": 30},
    {
      "gambar": "assets/images/32.jpg",
      "name": "Meja Laptop Lipat",
      "harga": 40
    },
    {"gambar": "assets/images/22.jpg", "name": "Bantal Pillow", "harga": 10},
    {"gambar": "assets/images/26.jpg", "name": "Kasur Gantung", "harga": 20},
    {"gambar": "assets/images/30.jpg", "name": "Meja Rias", "harga": 30},
    {
      "gambar": "assets/images/31.jpg",
      "name": "Rak Meja Laptop",
      "harga": 40
    },
    {"gambar": "assets/images/23.jpg", "name": "Bantal Hotel", "harga": 10},
    {"gambar": "assets/images/27.jpg", "name": "Kasur Olympic", "harga": 20},
    {"gambar": "assets/images/28.jpg", "name": "Tempat Tidur Zyrus", "harga": 30},
    {
      "gambar": "assets/images/24.jpg",
      "name": "Bantal Miniso",
      "harga": 40
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.builder(
      itemCount: isiProduct.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return ProductName(
          prodName: isiProduct[index]['name'],
          prodPict: isiProduct[index]['gambar'],
          prodPric: isiProduct[index]['harga'],
        );
      },
    );
  }
}

class ProductName extends StatelessWidget {
  ProductName({this.prodName, this.prodPict, this.prodPric});
  final prodName, prodPict, prodPric;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetail(
                      prodDetailName: prodName,
                      prodDetailPict: prodPict,
                      prodDetailPric: prodPric,
                    ))),
            child: GridTile(
              child: Image.asset(
                prodPict,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: warnaPrimer,
                child: ListTile(
                  leading: Text(
                    prodName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFFFFF00)),
                  ),
                  title: Text(
                    "\$$prodPric",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
