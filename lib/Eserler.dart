// ignore: file_names
import 'package:flutter/material.dart';



class Eserler extends StatefulWidget {
  const Eserler({Key? key}) : super(key: key);

  @override
  _EserlerState createState() => _EserlerState();
}

class _EserlerState extends State<Eserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eserlerine git"),
      ),
      body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
                Image.asset("resimler/Tehlikeli-Oyunlar.png"),
              Image.asset("resimler/Korkuyu-Beklerken.png"),
          Image.asset("resimler/Oyunlarla-Yasayanlar.png"),

          ElevatedButton(
              child: Text("Eserlerine Git",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,

              ),
              onPressed:(){
                print("Elevated Button Tıklandı.");

              }

          ),
        ],
      ),
    ),
    );
  }
}
