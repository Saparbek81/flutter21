import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff056C5C),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Тапшырма 5'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Turat Alybaev',
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                )),
            const Text(
              'Flutter Devoleper',
              style: TextStyle(
                  color: Color(0xffF7F9F9),
                  fontSize: 28,
                  fontWeight: FontWeight.w400),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              height: 0.5,
              color: Colors.white,
            ),
            const SizedBox(
              height: 23.5,
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.phone),
                ),
                hintText: ('+ 996 704 62 73 73'),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Icon(Icons.mail)),
                hintText: 'saparbekmamatov@mail.com',
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(),
              ),
            )
          ],
        )));
  }
}
