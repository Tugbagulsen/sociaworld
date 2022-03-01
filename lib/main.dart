import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociaworld/profilsayfasi.dart';
import 'gonderikarti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {},
          ),
          title: Text(
            "Sociaworld",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.purple[300],
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: <Widget>[
                          duyuru(
                            "Harry Seni Takip etti",
                            "3 Sakika Önce",
                          ),
                          duyuru(
                            "Hermonie Seni Takip Etti",
                            "30 dk Önce",
                          ),
                          duyuru(
                            "Ron Gönderine Yorum Yaptı",
                            "1 Gün Önce",
                          ),
                          duyuru(
                            "Luna Fotoğrafını Beğendi",
                            "1 Saat Önce",
                          ),
                        ],
                      );
                    });
              },
            ),
          ]),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur(
                  "Harry",
                  "https://cdn.pixabay.com/photo/2018/09/11/19/22/harry-potter-3670411_960_720.png",
                  "Harry Potter",
                  "https://cdn.pixabay.com/photo/2018/09/11/19/22/harry-potter-3670411_960_720.png",
                ),
                profilKartiOlustur(
                  "Hermonie",
                  "https://cdn.pixabay.com/photo/2018/10/05/19/55/hat-3726707_960_720.png",
                  "Hermonie Granger",
                  "https://cdn.pixabay.com/photo/2018/10/05/19/55/hat-3726707_960_720.png",
                ),
                profilKartiOlustur(
                  "Ron",
                  "https://cdn.pixabay.com/photo/2020/04/22/15/08/car-5078580_960_720.jpg",
                  "Ron Weasly",
                  "https://cdn.pixabay.com/photo/2020/04/22/15/08/car-5078580_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Luna",
                  "https://cdn.pixabay.com/photo/2021/02/06/00/05/moon-5986386_960_720.png",
                  "Luna Lovegod",
                  "https://cdn.pixabay.com/photo/2021/02/06/00/05/moon-5986386_960_720.png",
                ),
                profilKartiOlustur(
                  "Draco",
                  "https://cdn.pixabay.com/photo/2017/03/30/13/40/harry-potter-2188468_960_720.jpg",
                  "Draco Malfoy",
                  "https://cdn.pixabay.com/photo/2021/03/05/09/41/novel-6070812_960_720.jpg",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            isimSoyad: "Harry Potter",
            gecenSure: "1 Years Ago",
            aciklama: "Doby is dead",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2018/09/11/19/22/harry-potter-3670411_960_720.png",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2015/09/09/20/18/harry-potter-933064_960_720.jpg",
          ),
          GonderiKarti(
            isimSoyad: "Hermonie Granger",
            gecenSure: "1 Years Ago",
            aciklama: "Witch",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2018/10/05/19/55/hat-3726707_960_720.png",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2019/09/05/20/52/harry-potter-4455031_960_720.jpg",
          ),
          GonderiKarti(
            isimSoyad: "Ron Weasly",
            gecenSure: "1 Years Ago",
            aciklama: "Friends",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2020/04/22/15/08/car-5078580_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2017/10/22/16/08/harry-potter-2878212_960_720.jpg",
          ),
          GonderiKarti(
            isimSoyad: "Luna Lovegood",
            gecenSure: "1 Years Ago",
            aciklama: "Thanks",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2021/02/06/00/05/moon-5986386_960_720.png",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2018/10/24/14/45/read-out-3770411_960_720.jpg",
          ),
          GonderiKarti(
            isimSoyad: "Draco Malfoy",
            gecenSure: "1 Years Ago",
            aciklama: "Message",
            profilResimLinki: "c",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2021/03/05/09/41/novel-6070812_960_720.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            mesaj,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Text(gecenSure),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenVeri = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimlinki: resimLinki,
                    isimSoyad: isimSoyad,
                    kapakResimLinki: kapakResimLinki,
                    kullaniciAdi: kullaniciAdi,
                  )));
          if (donenVeri) {
            print("Kullanıcı profil sayfasından döndü.");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                            image: NetworkImage(resimLinki), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
