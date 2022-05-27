import 'package:app/utils/bat_card.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Batman Autopsie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Batman Autopsie'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controller;
  String source = 'assets/videos/the_batman.mp4';

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(source);

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.setVolume(0);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/the_batman_logo.png'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          VideoProgressIndicator(_controller, allowScrubbing: false),
          Padding(
            padding: const EdgeInsets.only(
              top: 1,
              left: 160,
              right: 50,
            ),
            child: Image.asset(
              'assets/images/batman_cover.webp',
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/spotify.png',
                  width: 100,
                  height: 100,
                ),
                Image.asset(
                  'assets/images/warner.png',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230.0),
            child: SizedBox(
              height: 310,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BatCard(
                    name: '01. Du genre oiseau de nuit',
                    description: 'Episode 01',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                  BatCard(
                    name: '02. De fantastiques secret',
                    description: 'Episode 02',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                  BatCard(
                    name: '03. Un os à ronger',
                    description: 'Episode 03',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                  BatCard(
                    name: '04. Je suis un diable',
                    description: 'Episode 04',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                  BatCard(
                    name: '05. La clé',
                    description: 'Episode 05',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                  BatCard(
                    name: '06. Costume de travail',
                    description: 'Episode 06',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                  BatCard(
                    name: '07. Une nouvelle reine',
                    description: 'Episode 07',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                  BatCard(
                    name: '08. La mauvaise herbe',
                    description: 'Episode 08',
                    description_long:
                        'a SafeArea widget which has a Scaffold as a child. In the Scaffold, we need to set the body property to a Stack widget. This will allow us to add a video as the background and then stack other widgets on top of it.',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 520.0),
            child: Center(
              child: Image.asset('assets/images/cover.jpeg'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        selectedFontSize: 12,
        selectedIconTheme: const IconThemeData(color: Colors.green, size: 20),
        selectedItemColor: Colors.green,
        unselectedIconTheme: const IconThemeData(
          color: Colors.white54,
        ),
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.white10,
        elevation: 5,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sd_card),
            label: 'Enregistrer',
          ),
        ],
      ),
    );
  }
}
