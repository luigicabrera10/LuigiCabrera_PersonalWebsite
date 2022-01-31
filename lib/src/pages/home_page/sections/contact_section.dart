import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luigicabrera_website/src/widgets/social_media_button.dart';

class ContactSection extends StatelessWidget{
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[ 
        
        Container(
          child: Padding(
            padding: const EdgeInsets.all(27.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text('luigi.cabrera.h@hotmail.com', style: TextStyle(fontSize: 40, color: Colors.black),),
                SizedBox(height: 10,),
                Text('luigi.cabrera.h@gmail.com', style: TextStyle(fontSize: 40, color: Colors.black),)
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(179, 233, 233, 233),
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        const SizedBox(height: 22.5,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            SocialMediaButton( // Github
              color1: Colors.black87,
              color2: const Color.fromARGB(234, 17, 17, 17),
              icon: const FaIcon(FontAwesomeIcons.github, size: 45,),
              link: 'https://github.com/luigicabrera10',
            ),

            const SizedBox(width: 17,),

            SocialMediaButton( // Instagram
              color1: Colors.yellow,
              color2: const Color.fromARGB(255, 250, 234, 95),
              icon: const FaIcon(FontAwesomeIcons.instagram, size: 45,),
              link: 'https://www.instagram.com/luigi_pv/',
            ),

            const SizedBox(width: 17,),

            SocialMediaButton( // Linkedin
              color1: Colors.blue,
              color2: const Color.fromARGB(255, 76, 174, 255),
              icon: const FaIcon(FontAwesomeIcons.linkedin, size: 45,),
              link: 'https://www.linkedin.com/in/luigi-cabrera-huanqui/',
            ),

          ]
        ),

      ]
    );
  }

}