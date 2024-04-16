import 'package:flutter/material.dart';

class TrackPlayer extends StatefulWidget {
  const TrackPlayer(
      {super.key, required this.image, required this.trackDuration});

  final String image;
  final String trackDuration;

  @override
  State<TrackPlayer> createState() => _TrackPlayerState();
}

class _TrackPlayerState extends State<TrackPlayer> {
  Color myColor = const Color.fromRGBO(15, 8, 23, 1.0);

  bool isPlaying = false;

  void playerStopNGoLogic() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            color: myColor,
            child: Stack(children: [
              Positioned(
                  top: 350,
                  child: Image.asset('assets/images/screen2/gradient.png')),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 300,
                      width: 343,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(widget.image))),
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'You Right',
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                  fontFamily: 'OpenSans',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text('Doja Cat, The Weeknd',
                                style: TextStyle(
                                  color: Color.fromRGBO(165, 165, 165, 1.0),
                                  fontFamily: 'OpenSans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon:
                                Image.asset('assets/images/screen3/heart.png'))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(children: [
                      Container(
                        height: 4,
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: Color(0xFFA5A5A5)),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.34,
                        child: Container(
                          height: 4,
                          decoration: const BoxDecoration(color: Colors.white),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('1:24', // просто пример
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                          Text(widget.trackDuration,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ))
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/screen4/player_shuffle.png'),
                        Row(
                          children: [
                            Image.asset(
                                'assets/images/screen4/player_arrow_left.png'),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                playerStopNGoLogic();
                              },
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Image.asset(
                                    'assets/images/screen4/player_circle.png'),
                                isPlaying
                                    ? Image.asset(
                                        'assets/images/screen4/player_arrow_right.png')
                                    : Image.asset(
                                        'assets/images/screen4/player_pause.png'),
                              ]),
                            ),
                            const SizedBox(width: 20),
                            Image.asset(
                                'assets/images/screen4/player_arrow_right.png')
                          ],
                        ),
                        Image.asset('assets/images/screen4/player_repeat.png')
                      ],
                    )
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
