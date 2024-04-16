import 'package:flutter/material.dart';
import 'package:frontend/screens/screen2/input_component.dart';
import 'package:frontend/screens/screen2/music_playlist_component.dart';
import 'package:frontend/screens/screen2/track_component.dart';
import 'package:frontend/screens/screen2/underlined_text_component.dart';

class WelcomebackScreen extends StatefulWidget {
  WelcomebackScreen({super.key});

  @override
  State<WelcomebackScreen> createState() => _WelcomebackScreenState();
}

class _WelcomebackScreenState extends State<WelcomebackScreen> {
  List<TextUnderline> links = [];

  List<MusicPlaylistComponent> cards = [];

  List<TrackComponent> tracks = [];

  @override
  void initState() {
    links = [
      TextUnderline(
        isActive: true,
        description: 'Recent',
      ),
      TextUnderline(
        isActive: false,
        description: 'Top 50',
      ),
      TextUnderline(
        isActive: false,
        description: 'Chill',
      ),
      TextUnderline(
        isActive: false,
        description: 'R&B',
      ),
      TextUnderline(
        isActive: false,
        description: 'Festival',
      ),
      TextUnderline(
        isActive: false,
        description: 'Hits of the day',
      ),
    ];

    cards = [
      const MusicPlaylistComponent(
        url: 'assets/images/screen2/playlist_image_1.png',
        name: 'R&B Playlist',
        description: 'Chill your mind',
      ),
      const MusicPlaylistComponent(
        url: 'assets/images/screen2/playlist_image_2.png',
        name: 'Daily Mix 2',
        description: 'Made for you',
      )
    ];

    tracks = [
      const TrackComponent(
        trackNumber: 1,
        trackName: 'Bye Bye',
        trackCompositor: 'Marshmello, Juice WRLD ',
        trackDuration: '2:09',
      ),
      const TrackComponent(
        trackNumber: 2,
        trackName: 'I Like You',
        trackCompositor: 'Post Malone, Doja Cat',
        trackDuration: '4:03',
      ),
      const TrackComponent(
        trackNumber: 3,
        trackName: 'Fountains',
        trackCompositor: 'Drake',
        trackDuration: '3:18',
      ),
      const TrackComponent(
        trackNumber: 4,
        trackName: '2 AM',
        trackCompositor: 'Arizona Zervas',
        trackDuration: '3:03',
      ),
      const TrackComponent(
        trackNumber: 5,
        trackName: 'Baddest',
        trackCompositor: 'Marshmello, Juice WRLD ',
        trackDuration: '2:09',
      ),
    ];
    super.initState();
  }

  @override
  void dispose() {
    cards = [];
    links = [];
    tracks = [];
    super.dispose();
  }

  Color myColor = const Color.fromRGBO(15, 8, 23, 1.0);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            color: myColor,
            child: Stack(children: [
              Positioned(
                  child: Image.asset(
                'assets/images/screen2/gradient.png',
                fit: BoxFit.cover,
                width: double.infinity,
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 64, 24, 64),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome back!',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
                      ),
                      const SizedBox(height: 8),
                      const Text('What do you feel like today?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color.fromRGBO(165, 165, 165, 1.0))),
                      const SizedBox(height: 24),
                      InputComponent(
                        controller: controller,
                      ),
                      const SizedBox(height: 40),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: links.map((link) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 32),
                              child: link,
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 28),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: cards.map((card) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: card,
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text('Your favourites',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'OpenSans')),
                      const SizedBox(
                        height: 24,
                      ),
                      Column(
                        children: tracks.map((track) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: track,
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}
