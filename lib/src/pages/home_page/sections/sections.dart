import 'package:flutter/material.dart';

import 'home_section.dart';

List<Map<String, String>> getSections() {
	List<Map<String,String>> list = [];
	list.add({
		'name':'Home',
		'background_image':'homeBackgroundWet.jpg'
	});
	list.add({
		'name':'About Me',
		'background_image':'homeBackgroundWet.jpg'
	});
	list.add({
		'name':'Skills',
		'background_image':'homeBackgroundWet.jpg'
	});
	list.add({
		'name':'Contact',
		'background_image':'homeBackgroundWet.jpg'
	});
	return list;
}

Widget sectionConstructor(String name){
  if (name == 'Home') {return HomeSection();}
  if (name == 'About Me') {return HomeSection();}
  if (name == 'Skills') {return HomeSection();}
  if (name == 'Contact') {return HomeSection();}
  return HomeSection();
}
