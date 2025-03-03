import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

import '../../../core/common/common_widget.dart';
import 'widgets/common_photoWithShadow.dart';

allProductScreen(BuildContext context, dynamic height, dynamic width) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: AppPalette.backGroundDark,
            ),
            ReusableWidget.getAppBar(context),
            Positioned(
              top: 180,
              right: 0,
              left: 0,
              child: commonPhotoWithShadow(width, height),
            ),
          ],
        ),
        SizedBox(height: 30),

        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(width: width / 50),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text('Our', style: Theme.of(context).textTheme.bodyLarge),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),

            Expanded(
              child: Image(
                fit: BoxFit.cover,
                image: Svg('assets/svg_image/frist_design.svg'),
                width: width / 0.7,
                height: width / 1.1,
              ),
            ),
          ],
        ),
        SizedBox(height: 50),
        // oneCategory(context),
        // oneCategory(context),
        // oneCategory(context),
        Image(
          fit: BoxFit.cover,
          image: Svg('assets/svg_image/second_design.svg'),
        ),
        //SizedBox(height: 20),
        commonPhotoWithShadow(width, height),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Furnish Your Dreams',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Choose Wisely',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Discover quality furniture, curated styles, and exceptional service at Our Store. We make furnishing your home easy and enjoyable',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    ),
  );
}
