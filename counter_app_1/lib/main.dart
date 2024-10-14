import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('тапшырма '),
      ),
      body: Column(
        children: [
          const Text('salam'),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 209, 214, 210),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 212, 220, 212),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 88, 38, 65),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const Icon(Icons.remove, color: Colors.white, size: 40),
          const Icon(
            Icons.add_to_queue,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
      ),
    );
  }
}
