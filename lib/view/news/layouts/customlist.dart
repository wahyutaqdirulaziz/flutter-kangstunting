import 'package:flutter/material.dart';
import 'package:kangsunting/view/news/layouts/detailinfo.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.user,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _VideoDescription(
              title: title,
              user: user,
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key? key,
    required this.title,
    required this.user,
  }) : super(key: key);

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
        ],
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => App()),
          ),
          child: CustomListItem(
            user:
                'Pencegahan Stunting pada Anak · Memenuhi kebutuhan gizi sejak hamil · Beri ASI Eksklusif sampai bayi berusia 6 bulan · Dampingi ASI dengan MPASI sehat',
            thumbnail: Container(
              child: Image.network(
                  "https://i.ytimg.com/vi/-FZhiaB2Ej0/maxresdefault.jpg"),
            ),
            title: 'Pencegahan stunting',
          ),
        ),
        CustomListItem(
          user:
              'Stunting adalah masalah kurang gizi kronis yang disebabkan oleh kurangnya asupan gizi dalam waktu yang cukup lama, sehingga mengakibatkan gangguan pertumbuhan pada anak yakni tinggi badan anak lebih rendah atau pendek (kerdil) dari standar usianya.',
          thumbnail: Container(
            child: Image.network(
                "https://i.ytimg.com/vi/-FZhiaB2Ej0/maxresdefault.jpg"),
          ),
          title: 'Stunting',
        ),
        CustomListItem(
          user:
              'Inovasi Ayo Cegah Stunting menurutnya merupakan inovasi yang dibuat dengan aplikasi berbasis android. Aplikasi ini menurut Mela dapat',
          thumbnail: Container(
            child: Image.network(
                "https://static.republika.co.id/uploads/images/inpicture_slide/upaya-mencegah-stunting-ilustrasi-_190410192356-146.jpg"),
          ),
          title: 'Ayo Cegah Stunting',
        ),
        CustomListItem(
          user:
              'Ciri-ciri stunting pada anak · Pertumbuhan melambat · Wajah tampak lebih muda dari anak seusianya · Pertumbuhan gigi terlambat · Performa ',
          thumbnail: Container(
            child: Image.network(
                "https://cdn-2.tstatic.net/lampung/foto/bank/images/istilah-stunting-adalah.jpg"),
          ),
          title: 'Ciri ciri anak stunting',
        ),
        CustomListItem(
          user:
              'Stunting adalah masalah kurang gizi kronis yang disebabkan oleh kurangnya asupan gizi dalam waktu yang cukup lama, sehingga mengakibatkan gangguan pertumbuhan pada anak yakni tinggi badan anak lebih rendah atau pendek (kerdil) dari standar usianya.',
          thumbnail: Container(
            child: Image.network(
                "https://media.beritagar.id/2019-09/thumbnail_640/wd/7e583ab80db384a17c0179569fc6b4044b902691.jpeg"),
          ),
          title: 'Hubungan stunting dan gizi Buruk',
        ),
        CustomListItem(
          user:
              'Stunting adalah masalah kurang gizi kronis yang disebabkan oleh kurangnya asupan gizi dalam waktu yang cukup lama, sehingga mengakibatkan gangguan pertumbuhan pada anak yakni tinggi badan anak lebih rendah atau pendek (kerdil) dari standar usianya.',
          thumbnail: Container(
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFlLxX3wZBMDz71Ls2Qv4aNXknAyzayPjtqA&usqp=CAU"),
          ),
          title: 'Apriasi Wapres NTB Cegah stunting',
        ),
        CustomListItem(
          user:
              'Inovasi kelompok kkn 03 membuat aplikasi untuk mendukung pemerintah edukasi pencegahan stunting .',
          thumbnail: Container(
            child: Image.network(
                "https://z-p4-instagram.fdps3-1.fna.fbcdn.net/v/t51.2885-15/fr/e15/s1080x1080/195533422_240907234469658_4876311212314226459_n.jpg?tp=1&_nc_ht=z-p4-instagram.fdps3-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=vjiQZi9mafIAX_J5XaG&edm=AP_V10EBAAAA&ccb=7-4&oh=fbb132e7b2babbe2ce34e5a9f5265898&oe=60D86CDA&_nc_sid=4f375e"),
          ),
          title: 'Kelompok kkn 03 keluarkan aplikasi stunting',
        ),
        CustomListItem(
          user:
              'Stunting adalah masalah kurang gizi kronis yang disebabkan oleh kurangnya asupan gizi dalam waktu yang cukup lama, sehingga mengakibatkan gangguan pertumbuhan pada anak yakni tinggi badan anak lebih rendah atau pendek (kerdil) dari standar usianya.',
          thumbnail: Container(
            child: Image.network(
                "https://i.ytimg.com/vi/-FZhiaB2Ej0/maxresdefault.jpg"),
          ),
          title: 'Stunting',
        ),
        CustomListItem(
          user:
              'Stunting adalah masalah kurang gizi kronis yang disebabkan oleh kurangnya asupan gizi dalam waktu yang cukup lama, sehingga mengakibatkan gangguan pertumbuhan pada anak yakni tinggi badan anak lebih rendah atau pendek (kerdil) dari standar usianya.',
          thumbnail: Container(
            child: Image.network(
                "https://i.ytimg.com/vi/-FZhiaB2Ej0/maxresdefault.jpg"),
          ),
          title: 'Pencegahan stunting',
        ),
        CustomListItem(
          user:
              'Stunting adalah masalah kurang gizi kronis yang disebabkan oleh kurangnya asupan gizi dalam waktu yang cukup lama, sehingga mengakibatkan gangguan pertumbuhan pada anak yakni tinggi badan anak lebih rendah atau pendek (kerdil) dari standar usianya.',
          thumbnail: Container(
            child: Image.network(
                "https://i.ytimg.com/vi/-FZhiaB2Ej0/maxresdefault.jpg"),
          ),
          title: 'Stunting',
        ),
      ],
    );
  }
}
