import 'package:flutter/material.dart';
import '../pages/splash_page/splash_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
	return <String, WidgetBuilder>{
		'/home'		: 		(BuildContext context) => SplashPage(),
	};
}