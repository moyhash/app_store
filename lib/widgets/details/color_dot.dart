import 'package:app_store/constants.dart';
import 'package:flutter/material.dart';



class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.fillColor,
    this.isSelected = false,
  }) : super(key: key);

  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.red, shape: BoxShape.circle,
        border: Border.all(
            color: isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
