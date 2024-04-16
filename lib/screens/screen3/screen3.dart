import 'package:flutter/material.dart';
import 'package:frontend/screens/screen2/track_component.dart';

class Playlist extends StatefulWidget {
  Playlist(
      {super.key,
      required this.url,
      required this.playlistName,
      required this.playlistDescription});

  final String url;
  final String playlistName;
  final String playlistDescription;

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  ColorFilter colorFilter =
      ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken);
  Color myColor = const Color.fromRGBO(15, 8, 23, 1.0);

  List<TrackComponent> tracks = [];
  @override
  void initState() {
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
        trackCompositor: '2 Chainz, Chris Brown',
        trackDuration: '3:51',
      ),
      const TrackComponent(
        trackNumber: 1,
        trackName: 'Bye Bye',
        trackCompositor: 'Marshmello, Juice WRLD ',
        trackDuration: '2:09',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: myColor,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                'assets/images/screen2/gradient.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 343,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: colorFilter,
                          image: AssetImage(widget.url),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.more_horiz,
                                    color: Colors.white),
                                onPressed: () {
                                  // Действие при нажатии на троеточие
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.playlistName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontFamily: 'OpenSans')),
                                  Text(widget.playlistDescription,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'OpenSans',
                                          color: Color.fromRGBO(
                                              165, 165, 165, 1.0)))
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/images/screen3/heart.png',
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                          'assets/images/screen3/play_button.png'))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                    child: Column(
                      children: tracks.map((trackCard) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: trackCard,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
