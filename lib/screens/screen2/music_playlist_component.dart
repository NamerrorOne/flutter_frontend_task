import 'package:flutter/material.dart';
import 'package:frontend/screens/screen3/screen3.dart';

class MusicPlaylistComponent extends StatelessWidget {
  const MusicPlaylistComponent(
      {super.key,
      required this.url,
      required this.name,
      required this.description});

  final String url;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Playlist(
                      playlistName: name,
                      url: url,
                      playlistDescription: description,
                    )),
          );
        },
        child: Container(
          width: 208,
          height: 202,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(url)),
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Text(name,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontSize: 18,
              fontWeight: FontWeight.w600)),
      Text(description,
          style: const TextStyle(
              color: Color.fromRGBO(165, 165, 165, 1.0),
              fontFamily: 'OpenSans',
              fontSize: 14,
              fontWeight: FontWeight.w400)),
    ]);
  }
}
