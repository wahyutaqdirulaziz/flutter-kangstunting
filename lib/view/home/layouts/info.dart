import 'package:flutter/material.dart';
import 'package:kangsunting/view/auth/registrasi.dart';

class HomeInfo extends StatefulWidget {
  const HomeInfo({Key? key}) : super(key: key);

  @override
  _HomeInfoState createState() => _HomeInfoState();
}

class _HomeInfoState extends State<HomeInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(247, 244, 74, 80),
                  Color.fromRGBO(255, 255, 255, 100)
                ])),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Stunting merupakan ancaman utama terhadap kualitas manusia Indonesia,juga ancaman terhadap kemampuan daya saing bangsa. Hal ini dikarenakan anak stunted, bukan hanya terganggu pertumbuhan fisiknya (bertubuh pendek/kerdil) saja, melainkan juga terganggu perkembangan otaknya, yang mana tentu akan sangat mempengaruhi kemampuan dan prestasi di sekolah,produktivitas dan kreativitas di usia-usia produktif.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.normal, color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: FlatButton(
                    child: Text(
                      'Daftar Disini',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrasiForm()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
