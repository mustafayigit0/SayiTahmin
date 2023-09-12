import 'package:flutter/material.dart';
import 'package:sayitahmin/TahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text("Tahmin Oyunu",style: TextStyle(color: Colors.black54,fontSize: 36),),
          Image.asset("resimler/zar_resim.png"),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
                child: Text("OYUN BAŞLA"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TahminEkrani()));
              },
            ),
          ),
          ],
        ),

      ),
    );
  }
}
