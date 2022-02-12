import 'package:flutter/material.dart';

import 'home_section.dart';
import 'package:luigicabrera_website/src/pages/home_page/sections/about_me_section.dart';
import 'package:luigicabrera_website/src/pages/home_page/sections/skills_section.dart';
import 'package:luigicabrera_website/src/pages/home_page/sections/contact_section.dart';

List<String> getSections() {
	List<String> list = ['Home','About Me','Skills','Contact'];
	return list;
}

Widget sectionConstructor(String name){
  if (name == 'Home') {return const HomeSection();}
  if (name == 'About Me') {return const AboutMeSection();}
  if (name == 'Skills') {return SkillSection();}
  return const ContactSection();
}
