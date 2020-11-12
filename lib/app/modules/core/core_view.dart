import 'package:app_restaurant/app/modules/core/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
