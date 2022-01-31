import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({ Key? key }) : super(key: key);

  final TextStyle _styleSubtitle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 70,
    color: Color.fromARGB(255, 255, 255, 255),
  );

  final TextStyle _styleContent = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22.5,
    color: Color.fromARGB(255, 39, 39, 39),
  );

  final TextStyle _styleButton = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17.5,
    color: Color.fromARGB(255, 243, 243, 243),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        
        const SizedBox(height: 50,),

        Text('About Me', style: _styleSubtitle,),

        Card(
          elevation: 15,
          color: const Color.fromARGB(190, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width/2,
              child: Text(
                'I\'m a Computer Science Student in San Pablo University - Arequipa.\nAI enthusiast and hardworking person who loves to participate in projects creating new tecnology and learning from all my experiences.', 
                style: _styleContent,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            DocumentButton(
              name: Text('Resume', style: _styleButton),
              link: 'resume.com',
              icon: const FaIcon(FontAwesomeIcons.user, size: 40,),
            ),

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                DocumentButton(
                  name: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Text>[ Text('Professional', style: _styleButton), Text('Curriculm', style: _styleButton),],
                  ),
                  link: 'ProfesionalCurriculum.com',
                  icon: const FaIcon(FontAwesomeIcons.laptopCode, size: 40,),
                ),

                const SizedBox(width: 20),

                DocumentButton(
                  name: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Text>[ Text('Sport', style: _styleButton,), Text('Curriculm', style: _styleButton),],
                  ),
                  link: 'SportCurriculum.com',
                  icon: const FaIcon(FontAwesomeIcons.running, size: 40,),
                ),

              ],
            ),

          ],
        )

      ],
    );
  }
}

class DocumentButton extends StatefulWidget {
  final Widget name;
  final String link;
  final FaIcon icon;
  const DocumentButton({ 
    Key? key, required this.name, required this.icon, required this.link
  }) : super(key: key);
  @override
  State<DocumentButton> createState() => _DocumentButtonState();
}

class _DocumentButtonState extends State<DocumentButton> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 5, left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon,
            const SizedBox(height: 10, width: 90,),
            widget.name,
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary:const Color.fromARGB(255, 76, 80, 74),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.5),),
        elevation: _hover? 15: 5,
      ),
      onHover: (h){ _hover = h; setState(() {}); }, 
      onPressed: (){},
    );
        
  }
}