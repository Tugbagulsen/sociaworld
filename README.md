import 'package:flutter/material.dart';

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

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

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
              onPressed: () {},
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
                profilKartiOlustur("Aslan",
                    "https://cdn.pixabay.com/photo/2017/10/25/16/54/african-lion-2888519_960_720.jpg"),
                profilKartiOlustur("Kral",
                    "https://cdn.pixabay.com/photo/2019/04/06/05/17/wallpaper-4106667_960_720.jpg"),
                profilKartiOlustur("King",
                    "https://cdn.pixabay.com/photo/2018/04/13/21/24/lion-3317670_960_720.jpg"),
                profilKartiOlustur("Leo",
                    "https://cdn.pixabay.com/photo/2014/12/12/19/45/lion-565820_960_720.jpg"),
                profilKartiOlustur("Teo",
                    "https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045_960_720.jpg"),
                profilKartiOlustur("Ted",
                    "https://cdn.pixabay.com/photo/2017/10/24/18/27/lion-2885618_960_720.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(),
          GonderiKarti(),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Container(
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
    );
  }
}
