import 'package:flutter/material.dart';

class TopBarNavigator extends StatefulWidget {
	
	final List<String> itemsNames;
	final double itemsSize, centerBoxWith;
	final onClickGeneral;
	int selectedIndex;

	TopBarNavigator({ Key? key,
		required this.itemsNames, 
		required this.itemsSize, 
		required this.centerBoxWith,
		required this.onClickGeneral,
		this.selectedIndex = 0,
	}) : super(key: key);

	@override
	_TopBarNavigatorState createState() => _TopBarNavigatorState();
}

class _TopBarNavigatorState extends State<TopBarNavigator> {

	late int selectedIndex;

	final TextStyle _normalStyle = const TextStyle(color: Colors.white70, fontSize: 20);
	final TextStyle _selectedStyle = const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500);
	final Color _transparent = const Color.fromARGB(0, 0, 0, 0);

	@override
	Widget build(BuildContext context) {
		selectedIndex = widget.selectedIndex;
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceAround,
			children: _generateList(),
		);
	}

	List<Widget> _generateList(){
		List<Widget> _listItems = [];
		for (int i = 0; i < widget.itemsNames.length; i++){
			_listItems.add(InkWell(

				hoverColor: _transparent,splashColor: _transparent,
				highlightColor: _transparent,focusColor: Colors.black12,

				child: _createTopBarButton(widget.itemsNames[i], i),
				onTap: (){ setState(() { 
					selectedIndex = i;
					widget.onClickGeneral(selectedIndex);
				}); },

			));
			if (i == ((widget.itemsNames.length-1)/2).truncate()) { 
				_listItems.add(SizedBox(width: widget.centerBoxWith));
			}
		}
		return _listItems;
	}

	Widget _createTopBarButton(String name, int index){
		return SizedBox(
			width: widget.itemsSize, height: 40,
			child: Center(
				child: Text(name, style: index == selectedIndex? _selectedStyle : _normalStyle,),
			),
		);
	}


}