import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animation 1"),
        ),
        body: ListView(children: <Widget>[
          Image.network(path),
          TextButton(
            child: const Text(
              'Show Details',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: () => setState(() {
              opacity = 1;
            }),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: opacity,
            child: Column(
              children: const [
                Text('Type: Owl'),
                Text('Age: 39'),
                Text('Employment: None'),
              ],
            ),
          )
        ]));
  }
}

const path =
    'https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg';
