import 'package:flutter/material.dart';

import 'package:sabak_4_counter_app_stlw_stfw_navigator_push/core/theme.dart';
import 'package:sabak_4_counter_app_stlw_stfw_navigator_push/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tapshyrma 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count1 = 0;
  String text = 'hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().myLightTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: MyTheme().myLightTheme.appBarTheme.backgroundColor,
        title: Text(
          'Тапшырма 1',
          style: MyTheme().myLightTheme.textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            Container(
                width: 325,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xffaaaaaa),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Сан $count1",
                    style: MyTheme().myLightTheme.textTheme.displayLarge,
                  ),
                )),
            const SizedBox(
              height: 41,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count1--;
                    });
                  },
                  child: Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff0D61AE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: MyTheme().myLightTheme.iconTheme.color,
                        size: MyTheme().myLightTheme.iconTheme.size,
                      )),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      count1++;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff0D61AE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add,
                      color: MyTheme().myLightTheme.iconTheme.color,
                      size: MyTheme().myLightTheme.iconTheme.size,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      count1 = 0;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff0D61AE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.refresh,
                      color: MyTheme().myLightTheme.iconTheme.color,
                      size: MyTheme().myLightTheme.iconTheme.size,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(200, 50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          count2: count1,
                          textForSeconPage: text,
                        ),
                      ));
                },
                child: const Text("baskuch",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ))),
          ],
        ),
      ),
    );
  }
}
