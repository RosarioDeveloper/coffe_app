// ignore_for_file: prefer_const_constructors
import 'package:app1/screens/coffe/coffe_model.dart';
import 'package:app1/shared/colors.dart';
import 'package:app1/shared/widgets/back_button.dart';
import 'package:app1/shared/widgets/button_small.dart';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:go_router/go_router.dart';

class CoffeDetails extends StatefulWidget {
  CoffeModelItem? coffe;
  CoffeDetails({Key? key, this.coffe}) : super(key: key);

  @override
  State<CoffeDetails> createState() => _CoffeDetailsState();
}

class _CoffeDetailsState extends State<CoffeDetails> {
  late CoffeModelItem? _coffe;

  @override
  void initState() {
    super.initState();
    _coffe = widget.coffe;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double radiusImage = 25;
    final double imageheight = size.height * 0.58;

    if (_coffe == null) return Scaffold();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              //Detail image
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(radiusImage),
                  bottomRight: Radius.circular(radiusImage),
                ),
                child: Image.asset(
                  'assets/images/${_coffe!.image}',
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height * 0.6,
                ),
              ),

              //Action button
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Back action
                    ButtonBack(
                      onPressed: () => GoRouter.of(context).pushNamed('home'),
                      icon: Icons.arrow_back_ios_new_outlined,
                    ),

                    ButtonBack(
                      onPressed: () {},
                      icon: Icons.favorite,
                    ),
                  ],
                ),
              ),

              //Blur contenct
              Container(
                width: size.width,
                height: size.height * .16,
                //padding: const EdgeInsets.all(20),
                margin: EdgeInsets.only(top: size.height * 0.44),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Details title
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _coffe!.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            _coffe!.description,
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.primary,
                                size: 18,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                _coffe!.price.toString(),
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '(6.890)',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Details espefications
                    Container(
                      width: size.width * .3,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: AppColors.dark,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.coffee_sharp,
                                      color: AppColors.primary,
                                      size: 15,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Coffe',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[400],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: AppColors.dark,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.coffee_sharp,
                                      color: AppColors.primary,
                                      size: 15,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Coffe',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: Container(
                              width: size.width,
                              height: 50,
                              padding: const EdgeInsets.all(2),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.dark,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Medium Roasted',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[400]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ).frosted(
                  blur: 10,
                  frostColor: AppColors.dark,
                  frostOpacity: 0.20,
                  padding: const EdgeInsets.all(25),
                  borderRadius: BorderRadius.circular(radiusImage),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Description
                Text(
                  'Description',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc a imperdiet quam, vel ultricies nunc lorem ipsum dolor sit amet, .",
                    style: TextStyle(fontSize: 15),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextSpan(
                        text: ' ...read more',
                        style: TextStyle(
                          color: AppColors.primary,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 30),

                //Sizes
                Text(
                  'Size',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ButtonSmall(
                        onPressed: () {},
                        isActive: true,
                        text: 'S',
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ButtonSmall(
                        onPressed: () {},
                        text: 'M',
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ButtonSmall(
                        onPressed: () {},
                        text: 'L',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(bottom: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * .2,
              child: Row(
                children: [
                  Text(
                    '\$ ',
                    style: TextStyle(fontSize: 18, color: AppColors.primary),
                  ),
                  Text(
                    _coffe!.price.toString(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              //width: size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'By Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
