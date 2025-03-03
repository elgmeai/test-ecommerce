import 'package:flutter/material.dart';

import '../../../core/common/common_widget.dart';
import '../../../core/theme/app_palette.dart';

import 'auth_page.dart';
import 'widget/app_bar_state.dart';
import 'widget/common_button.dart';

class ThankYouScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => ThankYouScreen());
  const ThankYouScreen({super.key});

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  @override
  Widget build(BuildContext context) {
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
            appbaerState(context, Done.ok),
            Center(
              child: Text(
                'Thank you for',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Center(
              child: Text(
                'your purchase!',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Center(
              child: Text(
                'We\'re doing a little happy dance over here',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 20),

            SizedBox(height: 300),
            commonButton(() {}, 'Go to Home', context),
          ],
        ),
      ),
    );
  }
}
