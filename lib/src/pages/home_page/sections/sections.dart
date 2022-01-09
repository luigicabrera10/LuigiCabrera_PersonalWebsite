import 'package:flutter/material.dart';

List<Map<String, String>> getSections() {
	List<Map<String,String>> list = [];
	list.add({
		'name':'Home',
		'background_image':'homeBackground.png'
	});
	list.add({
		'name':'About Me',
		'background_image':'homeBackground.png'
	});
	list.add({
		'name':'Skills',
		'background_image':'homeBackground.png'
	});
	list.add({
		'name':'Contact',
		'background_image':'homeBackground.png'
	});
	return list;
}