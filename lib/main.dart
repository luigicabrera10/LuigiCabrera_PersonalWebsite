import 'package:flutter/material.dart';
import 'package:luigicabrera_website/src/pages/route_error/rout_error_page.dart';
import 'package:luigicabrera_website/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Luigi Cabrera WebSite',
			initialRoute: '/home',
         routes: getApplicationRoutes(),
			onGenerateRoute: (settings){
            return MaterialPageRoute(builder: (BuildContext context) => RouteErrorPage());
         },
			
		);
	}
}
