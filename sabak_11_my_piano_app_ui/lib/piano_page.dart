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
          Stack(children: [
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
            PianoBlack(
              text: 'f1',
              onPressed: () => nota.play(AssetSource('nota/do.wav')),
              left: 40,
            ),
            PianoBlack(
              text: 'f2',
              onPressed: () => nota.play(AssetSource('nota/re.wav')),
              left: 100,
            ),
            const PianoBlack(text: 'f3', left: 224),
            const PianoBlack(text: 'f4', left: 284),
            const PianoBlack(
              text: 'f5',
              left: 345,
            ),
            const PianoBlack(
              text: 'f6',
              left: 465,
            ),
            const PianoBlack(
              text: 'f7',
              left: 530,
            ),
            const PianoBlack(
              text: 'f8',
              left: 665,
            ),
            const PianoBlack(
              text: 'f9',
              left: 733,
            ),
            const PianoBlack(
              text: 'f10',
              left: 803,
            ),
          ]),
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
