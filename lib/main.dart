import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animal Sounds",
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const AnimalSounds(),
    );
  }
}

class AnimalSounds extends StatelessWidget {
  const AnimalSounds({super.key});

  void playSound(String name) {
    final AudioPlayer player = AudioPlayer();
    player.play(AssetSource("$name.wave"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animal Sounds"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        leading: SizedBox(
          height: 50,
          width: 150,
          child: Lottie.asset("lottie/cow.json"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      playSound("bear");
                    },
                    child: Image.asset(
                      "images/bear.png",
                      height: 150,
                      width: 120,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 115,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Bear",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => playSound("fox"),
                    child: Image.asset(
                      "images/fox.png",
                      height: 150,
                      width: 120,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 115,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Fox",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => playSound("koala"),
                    child: Image.asset(
                      "images/koala.png",
                      height: 150,
                      width: 120,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 115,
                    color: Colors.purple,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Koala",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => playSound("camel"),
                    child: Image.asset(
                      "images/camel.png",
                      height: 150,
                      width: 120,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 115,
                    color: Colors.purple,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Camel",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => playSound("lion"),
                    child: Image.asset(
                      "images/lion.png",
                      height: 150,
                      width: 120,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 115,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lion",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => playSound("tiger"),
                    child: Image.asset(
                      "images/tiger.png",
                      height: 150,
                      width: 120,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 115,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Tiger",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
