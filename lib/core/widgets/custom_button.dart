import 'package:flutter/material.dart';
import 'package:test_pt_pranala_ragam_karya/core/constants/color.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  String titleButton;
  bool isWithPadding;
  final double _borderRadius = 30;

  CustomButton({required this.onTap, required this.titleButton, this.isWithPadding = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isWithPadding ? 16 : 0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
        color: Color(greenColor),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
          onTap: onTap,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              titleButton,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
