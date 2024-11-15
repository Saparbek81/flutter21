import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('StateLessWidget VS StateFullWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello'),
            Text('$a'),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  a++;
                });
              },
              label: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
