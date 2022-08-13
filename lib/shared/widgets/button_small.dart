import 'package:app1/shared/colors.dart';
import 'package:flutter/material.dart';

class ButtonSmall extends StatelessWidget {
  String text;
  bool? isActive;

  Function() onPressed;
  ButtonSmall({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        //horizontal: 4,
        vertical: 5,
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: AppColors.dark80,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: isActive != null ? AppColors.primary : Colors.transparent,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isActive != null ? AppColors.primary : Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
