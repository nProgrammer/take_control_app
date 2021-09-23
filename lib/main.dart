import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 1, 24),
        appBar: AppBar(
          title: const Text('Flutter Screen Background Color Example'),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Body(),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.05,
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: 10,
          color: const Color.fromARGB(50, 255, 255, 255),
          child: const Text(
            "Hi",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color.fromARGB(155, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
