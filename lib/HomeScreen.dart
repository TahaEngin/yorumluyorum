//HomeScreen
import 'package:flutter/material.dart';
import 'package:yorum/SignUpScreen.dart';
import 'PageList.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
     body: pages[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        onTap: (index)=>setState(() => bottomIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Ana Sayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: "Ekle"),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: "Profil"),
        
        ],)
    );
  }
}
