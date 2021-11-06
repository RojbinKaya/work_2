import 'dart:html';

import 'package:flutter/material.dart';
import 'package:work_1/Eserler.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application..
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitapçım',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),

      home: const Anasayfa(title: 'Kategoriler'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {


    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(top:ekranYuksekligi/100,bottom:ekranGenisligi/100),
            child: SizedBox(
              width: ekranGenisligi/5,
              child: Image.asset("resimler/oguz-atay-profil-rH.png"),
            ),
          ),
          Text("OĞUZ ATAY",
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: ekranGenisligi/45,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: ekranGenisligi/100,right: ekranGenisligi/100),
            child: Text("Tutunamayanlar, Oğuz Atay'ın ilk romanıdır. 1970 yılında TRT Roman Ödülü'nü kazandı. Oğuz Atay'ın 20'inci ölüm yıldönümü olan 2002 yılında UNESCO, Tutunamayanlar'ı İngilizce'ye tercüme edilmesi gereken seçkin edebiyat eseri listesine seçti. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ekranGenisligi/35,
              ),

            ),
          ),
          Spacer(),
          ElevatedButton(
              child: Text("Eserlerine Git",style: TextStyle(fontSize:ekranGenisligi/45,color: Colors.white),),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,

              ),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Eserler()));
              }

          ),
        ],
      ),
    );
  }
}
