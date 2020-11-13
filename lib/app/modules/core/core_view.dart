import 'package:app_restaurant/app/modules/core/widgets/custom_bottom_bar.dart';
import 'package:app_restaurant/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

class CoreView extends StatefulWidget {
  @override
  _CoreViewState createState() => _CoreViewState();
}

class _CoreViewState extends State<CoreView> {
  int _selectedItem = 0;
  List<Widget> getPage = [HomeView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
      ),
      backgroundColor: Colors.white,
      body: getPage[_selectedItem],
      bottomNavigationBar: CustomBottomBar(
        iconList: [
          Icons.home,
          Icons.card_giftcard,
          Icons.camera,
          Icons.pie_chart,
          Icons.person,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 1,
      ),
    );
  }
}
