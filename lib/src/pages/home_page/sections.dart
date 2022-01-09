import 'package:flutter/material.dart';

List<Map<String, String>> getSections() {
	List<Map<String,String>> list = [];
	list.add({
		'name':'Home',
		'background_image':'.'
	});
	list.add({
		'name':'About Me',
		'background_image':'.'
	});
	list.add({
		'name':'Skills',
		'background_image':'.'
	});
	list.add({
		'name':'Contact',
		'background_image':'.'
	});
	return list;
}