import 'package:flutter/material.dart';

class SonucEkrani extends StatelessWidget {
  final bool sonuc;

  SonucEkrani({required this.sonuc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            sonuc ? Image.asset("resimler/mutlu_resim.png"): Image.asset("resimler/uzgun_resim.png"),
            Text(
             sonuc ? "Kazandınız" : "Kaybettiniz",
              style: TextStyle(color: Colors.black54, fontSize: 36),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TEKRAR DENE"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
