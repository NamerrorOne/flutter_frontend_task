import 'package:flutter/material.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (value) {
          print(value);
        },
        cursorColor: Colors.grey,
        cursorWidth: 4.0,
        cursorHeight: 20.0,
        style: const TextStyle(
            fontFamily: 'OpenSans', color: Colors.white, fontSize: 16),
        maxLines: 1,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: Image.asset('assets/images/screen2/search.png'),
          hintText: 'Search songs, playlists, artists...',
          fillColor: const Color.fromRGBO(67, 62, 72, 1.0),
          filled: true,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(165, 165, 165, 1.0),
              fontFamily: 'OpenSans',
              fontSize: 14,
              fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ));
  }
}
