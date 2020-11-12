import 'package:app_restaurant/app/modules/core/widgets/custom_base.dart';
import 'package:app_restaurant/app/modules/core/widgets/custom_bottom_bar.dart';
import 'package:app_restaurant/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: CustomColors.luckyPoint,
      body: SingleChildScrollView(
        child: CustomBase(
          body: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.luckyPoint,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.luckyPoint,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.luckyPoint,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.luckyPoint,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.luckyPoint,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.luckyPoint,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.luckyPoint,
              ),
              Container(
                width: 100,
                height: 100,
                color: CustomColors.black,
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CustomBottomBar(),
    );
  }
}
