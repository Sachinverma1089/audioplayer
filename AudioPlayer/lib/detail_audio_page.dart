import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'audio_file.dart';
import 'app_colors.dart' as AppColors;

class DetailAudioPage extends StatefulWidget {
  const DetailAudioPage({super.key});
  _DetailAudioPageState createState() => _DetailAudioPageState();
}

class _DetailAudioPageState extends State<DetailAudioPage> {
  AudioPlayer advancedPlayer = AudioPlayer();
  @override
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.audioBluishBackground,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: screenHeight / 5,
              child: Container(color: Colors.blue)),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {},
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
                elevation: 0.0,
              )),
          Positioned(
              left: 0,
              right: 0,
              top: screenHeight * 0.15,
              height: screenHeight * 0.36,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.1),
                    Text(
                      "THE WATER CURE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Avenir"),
                    ),
                    Text(
                      "Martin Hyatt",
                      style: TextStyle(fontSize: 15),
                    ),
                    AudioFile(advancedPlayer: advancedPlayer),
                  ],
                ),
              )),
          Positioned(
            top: screenHeight * 0.09,
            left: (screenWidth - 100) / 2,
            right: (screenWidth - 100) / 2,
            height: screenHeight * 0.14,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.audioGreyBackground,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      // borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5),
                      image: DecorationImage(
                          image: AssetImage('assets/img/pic-1.png'),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
