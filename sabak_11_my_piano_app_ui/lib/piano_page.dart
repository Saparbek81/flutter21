import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_11_my_piano_app_ui/wi/Piano_blak.dart';
import 'package:sabak_11_my_piano_app_ui/wi/piano_key.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayer nota = AudioPlayer();
    return Scaffold(
        appBar: myAppBar(),
        body: Column(children: [
          const Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  PianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(AssetSource('nota/do.wav')),
                  ),
                  PianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(AssetSource('nota/re.wav')),
                  ),
                  PianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                  ),
                  PianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(AssetSource('nota/fa.wav')),
                  ),
                  PianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(AssetSource('nota/so.wav')),
                  ),
                  PianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(AssetSource('nota/la.wav')),
                  ),
                  PianoKey(
                    text: 'f7',
                    onPressed: () => nota.play(AssetSource('nota/si.wav')),
                  ),
                  PianoKey(
                    text: 'f8',
                    onPressed: () => nota.play(AssetSource('nota/do.wav')),
                  ),
                  PianoKey(
                    text: 'f9',
                    onPressed: () => nota.play(AssetSource('nota/re.wav')),
                  ),
                  PianoKey(
                    text: 'f10',
                    onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                  ),
                  PianoKey(
                    text: 'f11',
                    onPressed: () => nota.play(AssetSource('nota/fa.wav')),
                  ),
                  PianoKey(
                    text: 'f12',
                    onPressed: () => nota.play(AssetSource('nota/so.wav')),
                  ),
                  PianoKey(
                    text: 'f13',
                    onPressed: () => nota.play(AssetSource('nota/la.wav')),
                  ),
                  PianoKey(
                    text: 'f14',
                    onPressed: () => nota.play(AssetSource('nota/si.wav')),
                  ),
                  PianoKey(
                    text: 'f15',
                    onPressed: () => nota.play(AssetSource('nota/do.wav')),
                  ),
                ],
              ),
              Row(children: [
                const SizedBox(width: 38),
                PianoBlack(
                  text1: 'f1',
                  onPressed: () => nota.play(AssetSource('nota/do.wav')),
                  left1: 12,
                ),
                const SizedBox(width: 22),
                PianoBlack(
                  text1: 'f2',
                  onPressed: () => nota.play(AssetSource('nota/re.wav')),
                  left1: 150,
                ),
                const SizedBox(width: 83),
                const PianoBlack(text1: 'f3', left1: 224),
                const SizedBox(width: 25),
                const PianoBlack(text1: 'f4', left1: 284),
                const SizedBox(width: 25),
                const PianoBlack(
                  text1: 'f5',
                  left1: 345,
                ),
                const SizedBox(width: 80),
                const PianoBlack(
                  text1: 'f6',
                  left1: 465,
                ),
                const SizedBox(width: 25),
                const PianoBlack(
                  text1: 'f7',
                  left1: 530,
                ),
                const SizedBox(width: 95),
                const PianoBlack(
                  text1: 'f8',
                  left1: 665,
                ),
                const SizedBox(width: 30),
                const PianoBlack(
                  text1: 'f9',
                  left1: 733,
                ),
                const SizedBox(width: 30),
                const PianoBlack(
                  text1: 'f10',
                  left1: 803,
                ),
              ])
            ],
          ),
        ]));
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'My Piano App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
