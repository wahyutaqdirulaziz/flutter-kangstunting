import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("INFORMASI"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromRGBO(247, 244, 74, 80),
                Color.fromRGBO(255, 255, 255, 100)
              ])),
        ),
      ),
      body: Details(),
    );
  }
}

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            color: Colors.black54,
            image: DecorationImage(
                image: NetworkImage(
                    "https://sukabumizone.com/wp-content/uploads/2020/02/Posyandu-Jampang-Tengah-Berikan-Pelayanan-Optimal.jpg"),
                fit: BoxFit.fill),
          ),
          child: null,
        ),
        //judul
        Container(
          child: Flexible(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Proses pengembangan aplikasi javascript",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )),
        ),

        Container(
          child: Flexible(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Proses pengembangan aplikasi javascript memerlukan code editor atau IDE dan juga web browser. Teman-teman bisa memilih code editor dan browser kesayangan. Tapi tutorial pada buku ini menggunakan VSCode sebagai code editornya dan Chrome sebagai Web Browser. Untuk permulaan, Javascript akan dijalankan via browser supaya lebih mudah dan cepat.Menjalankan javascript di browser memerlukan perantara berupa HTML file. Yang dimana HTML ini akan memanggil file .js lalu browser akan membaca file tersebut dan memprosesnya.sBuat folder hello lalu buka folder tersebut di VSCode, tambahkan beberapa file baru sebagai berikut: Saatnya menjalankan file HTML yang telah dibuat dengan cara menyeret (drag) file tersebut ke browser. Maka akan tampil laman putih bersih tanpa tulisan apapun.Jangan khawatir, teman-teman cukup buka console chrome. Caranya adalah dengan klik kanan pada laman kosong tersebut, lalu klik inspect, klik tab console. Berikut hasilnya:Saatnya menjalankan file HTML yang telah dibuat dengan cara menyeret (drag) file tersebut ke browser. Maka akan tampil laman putih bersih tanpa tulisan apapun.Jangan khawatir, teman-teman cukup buka console chrome. Caranya adalah dengan klik kanan pada laman kosong tersebut, lalu klik inspect, klik tab console. Berikut hasilnya:Saatnya menjalankan file HTML yang telah dibuat dengan cara menyeret (drag) file tersebut ke browser. Maka akan tampil laman putih bersih tanpa tulisan apapun.Jangan khawatir, teman-teman cukup buka console chrome. Caranya adalah dengan klik kanan pada laman kosong tersebut, lalu klik inspect, klik tab console. Berikut hasilny Saatnya menjalankan file HTML yang telah dibuat dengan cara menyeret (drag) file tersebut ke browser. Maka akan tampil laman putih bersih tanpa tulisan apapun.Jangan khawatir, teman-teman cukup buka console chrome. Caranya adalah dengan klik kanan pada laman kosong tersebut, lalu klik inspect, klik tab console. Berikut hasilnya:",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          )),
        )
      ],
    );
  }
}
