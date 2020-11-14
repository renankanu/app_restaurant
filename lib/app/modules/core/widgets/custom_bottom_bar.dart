import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / _iconList.length,
        child: Stack(
          children: [
            Visibility(
              visible: index == _selectedIndex,
              child: Positioned(
                right: 0,
                left: 0,
                child: Container(
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 4,
                      color: CustomColors.matisse,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              left: 0,
              child: Icon(
                icon,
                color: index == _selectedIndex ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
