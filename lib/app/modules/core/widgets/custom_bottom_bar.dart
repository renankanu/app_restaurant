import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/custom_colors.dart';
import '../../../utils/custom_colors.dart';

class CustomBottomBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  const CustomBottomBar(
      {this.defaultSelectedIndex = 0,
      @required this.onChange,
      @required this.iconList});
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Container(
      decoration: BoxDecoration(
        color: CustomColors.luckyPoint,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: _navBarItemList,
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return Container(
      child: GestureDetector(
        onTap: () {
          widget.onChange(index);
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width / _iconList.length,
          decoration: index == _selectedIndex
              ? BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 4, color: CustomColors.persimmon),
                  ),
                )
              : BoxDecoration(),
          child: Icon(
            icon,
            color: index == _selectedIndex ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
