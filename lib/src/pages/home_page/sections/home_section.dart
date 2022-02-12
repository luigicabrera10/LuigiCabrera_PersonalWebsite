import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget{
  const HomeSection({Key? key}) : super(key: key);

  final TextStyle _styleWelcome = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 70,
    color: Color.fromARGB(255, 255, 255, 255),
  );

  final TextStyle _styleWelcomeSubtitle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 30,
    color: Color.fromARGB(255, 190, 190, 190),
  );


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(padding: const EdgeInsets.only(top: 75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(top: 180, right: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Text>[
                  Text("Hi", style: _styleWelcome), 
                  Text('I\'m Luigi Cabrera', style: _styleWelcome,), 
                  Text("Computer Science Student &", style: _styleWelcomeSubtitle),
                  Text("AI Enthusiast", style: _styleWelcomeSubtitle),
                ]
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(35)),
                border: Border.all(width: 5, color: const Color.fromARGB(99, 255, 255, 255)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/myPic.png', 
                  height: MediaQuery.of(context).size.height*0.7,
                ),
              ),
            ),
      
          ],
        ),
      ),
    );
  }

}