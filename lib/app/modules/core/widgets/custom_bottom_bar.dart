import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/custom_colors.dart';

class CustomBottomBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<String> iconList;

  const CustomBottomBar(
      {this.defaultSelectedIndex = 0,
      @required this.onChange,
      @required this.iconList});
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  List<String> _iconList = [];

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

  Widget buildNavBarItem(String icon, int index) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      duration: Duration(milliseconds: 500),
      reverseDuration: Duration(milliseconds: 200),
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
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: AnimatedSwitcher(
                  transitionBuilder: (child, animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, 0.5),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                  duration: Duration(milliseconds: 100),
                  reverseDuration: Duration(milliseconds: 100),
                  child: index == _selectedIndex
                      ? Container(
                          key: UniqueKey(),
                          width: 80,
                          height: 4,
                          color: CustomColors.persimmon,
                        )
                      : Container(key: UniqueKey()),
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  icon,
                  width: 36,
                  color: index == _selectedIndex
                      ? CustomColors.persimmon
                      : CustomColors.linkWater,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
