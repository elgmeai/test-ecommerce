import 'package:flutter/material.dart';

import '../../../core/common/common_widget.dart';
import '../../../core/theme/app_palette.dart';

import 'auth_page.dart';
import 'widget/app_bar_state.dart';
import 'widget/common_button.dart';

class PaymentScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => PaymentScreen());
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  static Color iconColorCard = Colors.white;
  static Color iconColorPaypal = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            ReusableWidget.getAppBar(context),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_sharp,
                color: AppPalette.buttonLightDrk,
                size: 35,
              ),
            ),
            SizedBox(height: 15),
            appbaerState(context, Done.payment),
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
            SizedBox(height: 40),
            Text(
              '   select payment methoda',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      setState(() {
                        iconColorCard = Colors.lightGreen;
                        iconColorPaypal = Colors.white;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.circle, color: iconColorCard, size: 30),
                        Text(
                          '  Cart payment',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      setState(() {
                        iconColorPaypal = Colors.lightGreen;
                        iconColorCard = Colors.white;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.circle, color: iconColorPaypal, size: 30),
                        Text(
                          '  Cart payment',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  commonButton(() {}, 'Next', context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
