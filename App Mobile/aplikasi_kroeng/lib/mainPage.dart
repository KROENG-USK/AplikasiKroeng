// ignore: file_names
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Kroeng"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Account"),
         BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ]
      ),
    );
  }
}