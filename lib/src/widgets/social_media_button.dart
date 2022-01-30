import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButton extends StatefulWidget {

  FaIcon icon;
  Color color1;
  Color color2;
  String link;

  SocialMediaButton({ 
    Key? key,
    required this.icon,
    required this.color1,
    required this.color2,
    required this.link,
  }) : super(key: key);

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget.icon,
      ),

      style: ElevatedButton.styleFrom(
        primary: _hover? widget.color2 : widget.color1,
        onSurface: Colors.white,
        elevation: _hover? 20 : 10,
        padding: const EdgeInsets.all(12.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37.5),),
      ),

      onHover: (h){ _hover = h; setState(() {}); },
      onPressed: () { _launchURL(); },
    );
  }

  void _launchURL() async {
    html.window.open(widget.link, '_blank');
  }

}

