import 'package:app1/shared/colors.dart';
import 'package:flutter/material.dart';

class AddsWidget extends StatelessWidget {
  const AddsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Special for you',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          //width: .45 * size.width,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: AppColors.dark80,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Image
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/coffe1.jpeg',
                  fit: BoxFit.cover,
                  width: .30 * size.width,
                  height: 140,
                ),
              ),

              const SizedBox(width: 10),

              //Title and descriotion
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Coffe Beans for you \nMust try!',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'With Oat Milk',
                    style: TextStyle(color: AppColors.dark50, fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'From \$01.00',
                    style: TextStyle(color: AppColors.primary, fontSize: 20),
                  ),
                ],
              ),

              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }
}
