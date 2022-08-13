import 'package:app1/shared/colors.dart';
import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  IconData icon;
  Function() onPressed;
  ButtonBack({Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.dark80,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Icon(
          icon,
          size: 18,
          color: AppColors.dark30,
        ),
      ),
    );
  }
}
