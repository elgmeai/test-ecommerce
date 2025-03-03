import 'package:flutter/material.dart';

import 'package:test_ecommerce/core/global_variables/global_variables.dart';

import '../../../../core/theme/app_palette.dart';

import '../category_screen.dart';

oneCategory(
  int id,
  BuildContext context,
  String imagePath,
  String title,
  String description,
) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width / 9),
    child: InkWell(
      onTap:
          () => Navigator.of(context).push(
            MaterialPageRoute(
              builder:
                  (context) => OneCategoryScreen(catedoryName: title, id: id),
            ),
          ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width / 1.3,
            height: width / 1.3,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.network(
              'http://${GlobalVariables.baseUrl}/$imagePath',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: width / 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.displayMedium),
                  SizedBox(height: width / 20),
                  SizedBox(
                    height: width / 1.8,
                    width: width / 1.6,
                    child: Text(
                      description,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 10),
              Text(
                'More info',
                style: TextStyle(
                  height: 0,
                  color: AppPalette.buttonLightDrk,
                  fontSize: 12,
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(
                  size: 30,
                  Icons.arrow_right_alt_outlined,
                  color: AppPalette.buttonLightDrk,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
