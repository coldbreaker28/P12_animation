import 'package:animate_picture/animation1.dart';
import 'package:animate_picture/animation2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animate',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animasi"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
              child: const Text("Animasi Pertama"),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text("Animasi Kedua"),
            ),
          ],
        ),
      ),
    );
  }
}
