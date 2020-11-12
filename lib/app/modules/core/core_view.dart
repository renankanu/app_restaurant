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
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            top: 50,
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
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 100,
                color: CustomColors.linkWater,
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: CustomBottomBar(),
    );
  }
}
