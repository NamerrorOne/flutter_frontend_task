import 'package:flutter/material.dart';

class TextUnderline extends StatefulWidget {
  final String description;
  bool isActive;

  TextUnderline({
    super.key,
    required this.description,
    required this.isActive,
  });

  @override
  State<TextUnderline> createState() => _TextUnderlineState();
}

class _TextUnderlineState extends State<TextUnderline> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              widget.description,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: widget.isActive
                    ? Colors.white
                    : const Color.fromRGBO(165, 165, 165, 1.0),
              ),
            ),
          ),
          widget.isActive
              ? Container(
                  height: 3,
                  width: 54,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(194, 43, 183, 1.0),
                        Color.fromRGBO(146, 47, 245, 1.0),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0,
                  width: 0,
                )
        ],
      ),
    );
  }
}
