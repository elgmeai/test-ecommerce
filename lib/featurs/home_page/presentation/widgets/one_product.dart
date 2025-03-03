import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

oneProduct(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return SizedBox(
    width: width / 2.25,
    height: height / 2.1,
    child: Column(
      children: [
        Stack(
          children: [
            SizedBox(height: height / 5, width: width / 2025),
            Positioned(top: 100,bottom: 20,
              child: Container(
                width:width / 2.25 ,height: height/4.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                color: AppPalette.backGroundDarkTextField
                ),
              )),
            Image.asset(
              'assets/images/product.png',
              height: height / 3,
              width: width / 2.3,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 15,
              child: Container(
                decoration: BoxDecoration(
                  color: AppPalette.backGroundDarkTextField,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('rt', style: Theme.of(context).textTheme.displaySmall),
              Text('data', style: Theme.of(context).textTheme.bodySmall),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 10),
                  Text('12\$', style: Theme.of(context).textTheme.bodySmall),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_rounded, size: 40),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
