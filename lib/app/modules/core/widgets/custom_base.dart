import 'package:app_restaurant/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomBase extends StatelessWidget {
  final Widget body;

  const CustomBase({Key key, this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          color: Colors.red,
        ),
        Positioned.fill(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: body,
            ),
          ),
        ),
      ],
    );
  }
}
