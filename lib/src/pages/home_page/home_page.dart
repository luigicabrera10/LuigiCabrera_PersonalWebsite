import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';

import '../../Widgets/website_animated_icon.dart';
import '../../widgets/home_top_bar_navigator.dart';
import 'sections/sections.dart';

class HomePage extends StatefulWidget {
	const HomePage({ Key? key }) : super(key: key);
	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
	
	late AnimationController _controller;
	final PageController _pageController = PageController();

	final List< Map<String, String> > _sections = getSections(); 
	final double _webIconSize = 67;
	final double _webIconPadding = 17;

	bool pageIsScrolling = false;
	int _actualIndex = 0;

	@override
	void initState() {
		super.initState();
		_controller = AnimationController(vsync: this);
	}

	@override
	void dispose() {
		super.dispose();
		_controller.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				children: [
					
					Listener( // to detect scroll
						onPointerSignal: (pointerSignal) {
							if (pointerSignal is PointerScrollEvent) { _onScroll(pointerSignal.scrollDelta.dy); }
						},
						child: PageView.builder(
							controller: _pageController,
							physics: const NeverScrollableScrollPhysics(),

							pageSnapping: true,
							scrollDirection: Axis.vertical,
							itemCount: _sections.length,
							itemBuilder: _pageViewBuilder,
						),
					),
					
					Positioned( // HomeTopBarNavigator
						top: 0,right: 0,left: 0,
						child: Container(
							padding: const EdgeInsets.only(top:20,bottom: 20),
							width: double.maxFinite,
							color: const Color.fromARGB(165, 0, 0, 0),
							child: _createTopBarNavigator(),
						),
					),

					Positioned( // Logo
						top: 13,
						left: (MediaQuery.of(context).size.width)/2 - _webIconSize/2 - _webIconPadding,
						child: Container(
							padding: EdgeInsets.all(_webIconPadding),
							decoration: const BoxDecoration(color:Color.fromARGB(255, 241, 241, 241), shape: BoxShape.circle),
							child: WebSiteIcon(size: _webIconSize, controller: _controller),
						)
					),

					Positioned( // Animated Containers
						right: 9,
						top: (MediaQuery.of(context).size.height/2) - 80 - (12 - 30 - 15*3)/2,
						child: Column(
							children: List<AnimatedContainer>.generate(
								_sections.length, 
								(index) {
									return AnimatedContainer(
										margin: const EdgeInsets.only(top: 3),
										duration: const Duration(milliseconds: 1000),
										width: 11,
										height: _actualIndex==index? 30:15,
										decoration: BoxDecoration(
											color: _actualIndex==index? const Color.fromARGB(255, 66, 143, 206):const Color.fromARGB(255, 230, 230, 230),
											borderRadius: BorderRadius.circular(5),
										),
										curve: Curves.fastOutSlowIn,
									);
								}
							)
						),
					)
					
				],
			),
		);
	}

	Widget _pageViewBuilder(BuildContext context, int index){
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        
        SizedBox(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/'+_sections[index]['background_image']!,
            fit: BoxFit.fill,),
        ),

        sectionConstructor(_sections[index]['name']!),

      ],
    );
	}

	void _scrollToIndex(int index){ // Scroll????
		_pageController.animateToPage(
			index, duration: const Duration(milliseconds: 750), curve: Curves.fastOutSlowIn,
		);
	}

	TopBarNavigator _createTopBarNavigator() {
		return TopBarNavigator(
			selectedIndex: _actualIndex, itemsSize: 150.0,
			centerBoxWith: _webIconSize+_webIconPadding, 
			itemsNames: _getSectionsNames(),
			onClickGeneral: animateScroll, // Animation for Scroll when tap
		);
	}

	List<String> _getSectionsNames(){
		List<String> list = [];
		for (var element in _sections) {list.add(element['name']!);}
		return list;
	}

	void animateScroll(int i){
		if (i>_actualIndex) {animateLogoRight(controller: _controller, animationMilliseconds: 1000,);}
		else if (i<_actualIndex){animateLogoLeft(controller: _controller, animationMilliseconds: 1000,);}
		_actualIndex = i; _scrollToIndex(_actualIndex);
		setState(() {});
	}


	void _onScroll(double offset) {
    if (pageIsScrolling == false) {
      pageIsScrolling = true;
      if (offset > 0 && _actualIndex < _sections.length-1) { animateScroll(_actualIndex+1); } 
			else if (offset < 0 && _actualIndex > 0){ animateScroll(_actualIndex-1); }
			pageIsScrolling = false;
    }
  }


}