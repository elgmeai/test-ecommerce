import 'package:flutter/material.dart';

import '../../../core/common/common_widget.dart';
import '../../../core/theme/app_palette.dart';

import 'auth_page.dart';
import 'widget/app_bar_state.dart';
import 'widget/common_button.dart';
import 'widget/one_product.dart';

class ReviewScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => ReviewScreen());
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            ReusableWidget.getAppBar(context),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_sharp,
                color: AppPalette.buttonLightDrk,
                size: 35,
              ),
            ),
            SizedBox(height: 10),
            appbaerState(context, Done.review),
            Center(
              child: Text(
                'Your customer data',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Center(
              child: Text(
                'for the order',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Center(
              child: Text(
                'Bringing Your Style Home',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '   Review order',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(height: 30),

                  // SizedBox(height: 100),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: width / 1.4,
                      decoration: BoxDecoration(
                        color: AppPalette.containerDark,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Your shopping cart (5)',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          SizedBox(height: 10),
                          oneProductpurchase(context)
                         
                        ],
                      ),
                    ),
                  ),
                  commonButton(() {}, 'Please order', context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
