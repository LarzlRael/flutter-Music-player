import 'package:flutter/material.dart';
import 'package:music_player/src/pages/music_player.dart';
import 'package:music_player/src/themes/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Theme',
      theme: miTema,
      home: MusicPlayerPage()
    );
  }
}
