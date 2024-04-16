import 'package:flutter/material.dart';
import 'package:frontend/screens/screen4/screen4.dart';

class TrackComponent extends StatefulWidget {
  const TrackComponent(
      {super.key,
      required this.trackNumber,
      required this.trackDuration,
      required this.trackName,
      required this.trackCompositor});

  final int trackNumber;
  final String trackDuration;
  final String trackName;
  final String trackCompositor;

  @override
  State<TrackComponent> createState() => _TrackComponentState();
}

class _TrackComponentState extends State<TrackComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TrackPlayer(
              trackDuration: widget.trackDuration,
              image: 'assets/images/screen2/track_${widget.trackNumber}.png'),
        ));
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Image.asset(
              'assets/images/screen2/track_${widget.trackNumber}.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.trackName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
                Text(widget.trackCompositor,
                    style: const TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(165, 165, 165, 1.0),
                        fontSize: 14))
              ],
            ),
          ],
        ),
        Text(widget.trackDuration, style: TextStyle(color: Colors.white)),
      ]),
    );
  }
}
