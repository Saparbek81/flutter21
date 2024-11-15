import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_10_xylophone_audio/widgets/piano_key.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  AudioPlayer audio = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: Column(
          children: [
            PianoKey(
              colors: const Color(0xffEF443A),
              onTap: () {
                audio.play(AssetSource('note/do.wav'));
              },
            ),
            PianoKey(
              colors: const Color(0xffF99700),
              onTap: () {
                audio.play(AssetSource('note/re.wav'));
              },
            ),
            PianoKey(
              colors: const Color(0xffFFE93B),
              onTap: () {
                audio.play(AssetSource('note/mi.wav'));
              },
            ),
            PianoKey(
              colors: const Color(0xff4CB050),
              onTap: () {
                audio.play(AssetSource('note/fa.wav'));
              },
            ),
            PianoKey(
              colors: const Color(0xff2E968C),
              onTap: () {
                audio.play(AssetSource('note/so.wav'));
              },
            ),
            PianoKey(
              colors: const Color(0xff2996F5),
              onTap: () {
                audio.play(AssetSource('note/la.wav'));
              },
            ),
            PianoKey(
              colors: const Color(0xff9B28B1),
              onTap: () {
                audio.play(AssetSource('note/si.wav'));
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xff363636),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Home",
              )
            ]));
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff363636),
      title: const Center(
          child: Text(
        "Flutter Xylophone",
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
