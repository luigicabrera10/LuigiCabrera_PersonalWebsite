import 'package:flutter/material.dart';

class WebSiteIcon extends StatefulWidget {

	final double size;
  final AnimationController controller;

	const WebSiteIcon({ Key? key, required this.size, required this.controller }) : super(key: key);
	@override
	_WebSiteIconState createState() => _WebSiteIconState();
}

class _WebSiteIconState extends State<WebSiteIcon> with SingleTickerProviderStateMixin {

	late TextStyle _logoTextStyle;

	@override
	void initState() {
		super.initState();
	}

	@override
	void dispose() {
		super.dispose();
	}

	@override
	Widget build(BuildContext context) {
		_logoTextStyle = TextStyle(fontSize: widget.size*5/18);

		return Stack(
			alignment: AlignmentDirectional.center,
			children: <Widget>[

				RotationTransition(
					turns: Tween(begin: 0.0, end: 1.0,).animate(widget.controller),
					child: Image(image: const AssetImage('assets/logoPageWeb.png'), width: widget.size,),
				),

				Row(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text('A',style: _logoTextStyle,), 
						SizedBox(width: widget.size*5/18,), 
						Text('C',style: _logoTextStyle,)
					],
				),

				Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text('L', style: _logoTextStyle,),
						SizedBox(height: widget.size*7/36,), 
						Text('H',style: _logoTextStyle,)
					],
				)

			],
		);
	}

}

void animateLogoRight({required AnimationController controller, required int animationMilliseconds}) async { 
	controller.animateTo(0,duration: const Duration(milliseconds: 0));
	await controller.animateTo(1,
		duration: Duration(milliseconds: animationMilliseconds), 
		curve: Curves.fastOutSlowIn,
	);
}

void animateLogoLeft({required AnimationController controller, required int animationMilliseconds}) async { 
	controller.animateTo(1,duration: const Duration(milliseconds: 0));
	await controller.animateTo(0,
		duration: Duration(milliseconds: animationMilliseconds), 
		curve: Curves.fastOutSlowIn,
	);
}
