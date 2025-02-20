import 'package:flutter/material.dart';
import 'package:responsive_app/Text/letters.dart';

class CardHomeBright extends StatefulWidget {
  final String title;
  final String textBody;
  final IconData icon;
  const CardHomeBright({
    super.key,
    required this.title,
    required this.textBody, 
    required this.icon,
  });

  @override
  State<CardHomeBright> createState() => _CardHomeBrightState();
}

class _CardHomeBrightState extends State<CardHomeBright> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (context) => setState(() => _isHovered = true),
      onExit: (context) => setState(() => _isHovered = false),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: _isHovered
                    ? [
                        const Color.fromRGBO(95, 145, 61, 1),
                        Colors.lightBlueAccent
                      ]
                    : [Colors.black45, Colors.black87]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white, blurRadius: 20, offset: Offset(-5, 5))
            ]),
        width: 300,
        height: 450,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(
                widget.icon,
                size: 50,
                color: Colors.white,
              ),
              LettersBoldCenter(
                text: widget.title,
                fontSize: 22,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: LettersJustify(
                  text: widget.textBody,
                  fontSize: 14,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
