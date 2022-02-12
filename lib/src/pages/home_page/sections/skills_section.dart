import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  SkillSection({ Key? key }) : super(key: key);

  final TextStyle _titleStyle = const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold);
  final TextStyle _subTitleStyle = const TextStyle(color: Colors.black, fontSize: 27);

  late double _width, _heigh;

  @override
  Widget build(BuildContext context) {
    
    _width = MediaQuery.of(context).size.width;
    _heigh = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 90,),
        Text("Skills", style: _titleStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: _width/3, height: _heigh/3,
              child: Card(elevation: 15,color: const Color.fromARGB(215, 255, 255, 255), 
                child: Padding( padding: const EdgeInsets.all(10), child: _programingSkills(),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
              ),
            ),

            const SizedBox(width:50),

            SizedBox(
              width: _width/3,height: _heigh/3,
              child: Card(elevation: 15, color: const Color.fromARGB(215, 255, 255, 255), 
                child: Padding(padding: const EdgeInsets.all(15), child: _webSkills(),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
              ),
            ),
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: _width/3, height: _heigh/3.5,
              child: Card(elevation: 15, color: const Color.fromARGB(215, 255, 255, 255),
                child: _mobileSkills(),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
              ),
            ),

            const SizedBox(width:50),

            SizedBox(
              width: _width/3, height: _heigh/3.5,
              child: Card(elevation: 15, color: const Color.fromARGB(215, 255, 255, 255),
                child: _AIskills(),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
              ),
            ),
          ],
        ),

        const SizedBox(height: 10,),

      ],
    );
  }

  Widget _programingSkills(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Programming Languages", style: _subTitleStyle,),
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/python.png', height: 80,),
            Image.asset('assets/c++.png', height: 80,),
            Image.asset('assets/java.png', height: 80,),
          ],
        ),

        Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/go.png', height: 70,),
            Image.asset('assets/dart.png', height: 65,),
          ],
        ),
      ],
    );
  }

  Widget _webSkills(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Web Development", style: _subTitleStyle,),
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/html.png', height: 80,),
            Image.asset('assets/css.png', height: 80,),
            Image.asset('assets/javascript.png', height: 80,),
          ],
        ),

        Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/flutter.png', height: 50,),
            Image.asset('assets/firebase.png', height: 50,),
            Image.asset('assets/flask.png', height: 50,),
          ],
        ),
      ],
    );
  }

  Widget _mobileSkills(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Mobile Development", style: _subTitleStyle,),
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/android_studio.png', height: 70,),
            Image.asset('assets/flutter.png', height: 70,),
          ],
        ),

        const SizedBox(height: 1,),

      ],
    );
  }

  Widget _AIskills(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Artificial Intelligence", style: _subTitleStyle,),
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/tensorflow.png', height: 80,),
            Image.asset('assets/matplotlib.png', height: 80,),
            Image.asset('assets/numpy.png', height: 80,),
          ],
        ),

        const SizedBox(height: 1,),

      ],
    );
  }

}
