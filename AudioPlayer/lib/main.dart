import 'package:audioplayer/detail_audio_page.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'detail_audio_page.dart';
import 'audio_file.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Audio Reading',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DetailAudioPage(),
    );
  }
}
