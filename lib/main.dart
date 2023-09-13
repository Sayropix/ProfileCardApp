import 'package:flutter/material.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text('Profil Kartı Uygulaması'),
        ),
        body: Center(
          child: ProfileCard(),
        ),
      ), // Programın üst kısmı
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            radius: 60.0,
            backgroundImage:
                NetworkImage('resimler/profilefoto.jpg'), // Profil Fotoğrafı
          ),
          SizedBox(height: 16.0),
          Text(
            'KASIM KURT',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ), //Ad Soyad Kısmı
          ),
          SizedBox(height: 8.0),
          Text(
            'Öğrenci',

            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ), //İlgilendiği Alan
          ),
          SizedBox(height: 8.0),
          Text(
            'Tel No : +90 552 335 14 09         ',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ), //Meslek Kısmı burada textleri bilerek tab tuşu ile boşluk atıyorum ki tasarım ekranında eşit hizada dursun
          ),
          SizedBox(height: 8.0),
          Text(
            'Email :   Kasimkurt@gmail.com ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ), //Meslek Kısmı burada textleri bilerek tab tuşu ile boşluk atıyorum ki tasarım ekranında eşit hizada dursun
          ),
          SizedBox(height: 8.0),
          Text(
            'Meslek : Yazılım Geliştirme        ',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ), //Meslek Kısmı burada textleri bilerek tab tuşu ile boşluk atıyorum ki tasarım ekranında eşit hizada dursun
          ),
        ],
      ),
    );
  }
}
