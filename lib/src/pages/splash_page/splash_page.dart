import 'package:flutter/material.dart';

import 'dart:async';

import '../../Widgets/website_animated_icon.dart';
import '../home_page/home_page.dart';


class SplashPage extends StatefulWidget {
	const SplashPage({ Key? key }) : super(key: key);
	@override
	_SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
	
	late AnimationController _controller;
	late Timer _animationTimer;

	final int _animationTimeMilliseconds = 1000;
	final int _animationSleepMilliseconds = 700;
	final int _splashScreenMilliseconds = 2800;

	@override
	void initState() {
		super.initState();
		_controller = AnimationController(vsync: this);
		_navigateToHome();
		Timer(const Duration(milliseconds: 800), _animateLogo);
	}

	@override
	void dispose() {
		_animationTimer.cancel();
		super.dispose();
		_controller.reset();
		_controller.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: const Color.fromARGB(180, 235, 235, 235),
			body: Center(child: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					WebSiteIcon(size: 180, controller: _controller,),
					const SizedBox(height: 50,),
					const Text("Luigi Anthony Cabrera Huanqui",	style: TextStyle(fontSize: 25),),
				],
			)),
		);
	}

	void _navigateToHome() async {
		await Future.delayed(Duration(milliseconds: _splashScreenMilliseconds), (){
		  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
	  });
	}

	void _animateLogo() async { // Infinite Animation
		await _controller.animateTo(1,
			duration: Duration(milliseconds: _animationTimeMilliseconds), 
			curve: Curves.fastOutSlowIn,
		);
		_controller.reset();
    _animationTimer = Timer(Duration(milliseconds: _animationSleepMilliseconds), _animateLogo);
	}
}