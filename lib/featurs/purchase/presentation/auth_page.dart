import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

import '../../../core/common/common_widget.dart';
import 'widget/app_bar_state.dart';
import 'widget/common_button.dart';
import 'widget/signin_swich.dart';
import 'widget/signup_swich.dart';
import 'widget/text_field.dart';



enum AuthState { signIn, signUp }

enum Done { register, data, payment, review, ok }

class AuthPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => AuthPage());
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  static AuthState screen = AuthState.signIn;
  
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
            appbaerState(context, Done.register),
            Center(child: Text('Welcome to Our store',style: Theme.of(context).textTheme.bodyLarge)),
        Center(child: Text('Bringing Your Style Home',style: Theme.of(context).textTheme.bodySmall)),
            SizedBox(height: 35),
            Row(
              children: [
                signinSwitch(
                  'Sign in',
                  () {
                    setState(() {
                      screen = AuthState.signIn;
                      
                    });
                  },
                  screen,
                  context,
                ),
                signupSwitch(
                  'Sign up',
                  () {
                    setState(() {
                      screen = AuthState.signUp;
                    });
                  },
                  screen,
                  context,
                ),
              ],
            ),
            SizedBox(height: 30),
           screen== AuthState.signIn?
            Builder(
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 40),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppPalette.containerDark,
                        ),
                        width: width / 1.02,
                        height: width / 1.3,
                      ),
                      Column(
                        children: [
                          SizedBox(height: 25),
                          Center(
                            child: Text(
                              'I am already a customer',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          commonTextField(
                            'E-mail Address',
                            context,
                            Icons.account_circle_sharp,
                            Text(
                              '@',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          commonTextField(
                            'E-mail Address',
                            context,
                            Icons.account_circle_sharp,
                            Text(
                              '@',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          SizedBox(height: 100),
                          commonButton(() {}, 'Sign In', context),
                        ],
                      ),
                    ],
                  ),
                );
              }
            ):Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 40),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppPalette.containerDark,
                        ),
                        width: width / 1.02,
                        height: width / 1.3,
                      ),
                      Column(
                        children: [
                          SizedBox(height: 25),
                          Center(
                            child: Text(
                              'I am new to This store',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          commonTextField(
                            'Frist Name',
                            context,
                            Icons.account_circle_sharp,
                            Text(
                              '@',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),commonTextField(
                            'Last Name',
                            context,
                            Icons.account_circle_sharp,
                            Text(
                              '@',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          commonTextField(
                            'E-mail Address',
                            context,
                            Icons.account_circle_sharp,
                            Text(
                              '@',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          commonTextField(
                            'E-mail Address',
                            context,
                            Icons.account_circle_sharp,
                            Text(
                              '@',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          commonButton(() {}, 'Sign In', context),
                        ],
                      ),
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
