import 'package:flutter/material.dart';
import 'package:yorum/Templates/CommentCard.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({ Key? key }) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: CommentCard('https://pic.onlinewebfonts.com/svg/img_141364.png',"Yorumcu","@yorumcu","Bu bir yorumdur."),
      ),

    );
  }
}