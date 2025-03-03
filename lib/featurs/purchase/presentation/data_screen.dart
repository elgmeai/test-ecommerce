import 'package:flutter/material.dart';


import '../../../core/common/common_widget.dart';
import '../../../core/theme/app_palette.dart';
import 'auth_page.dart';
import 'widget/app_bar_state.dart';
import 'widget/common_button.dart';
import 'widget/text_field.dart';

class DataScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => DataScreen());
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
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
          appbaerState(context,Done.data),
          Center(child: Text('Your customer data',style: Theme.of(context).textTheme.bodyLarge)),
          Center(child: Text('for the order',style: Theme.of(context).textTheme.bodyLarge)),
          Center(child: Text('Bringing Your Style Home',style: Theme.of(context).textTheme.bodySmall)),
          SizedBox(height: 40,),
          Text('   Delivery address',style: Theme.of(context).textTheme.displaySmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:  10),
            child: Column(
              children: [
                
                SizedBox(height: 30,),
                commonTextField(
                            'City',
                            context,
                            Icons.done,
                            Text(
                              '',
                              
                            ),
                          ),
                          commonTextField(
                            'Street Name',
                            context,
                            Icons.done,
                            Text(
                              '',
                             
                            ),
                          ),
                          commonTextField(
                            'Building Number',
                            context,
                            Icons.done,
                            Text(
                              '',
                              
                            ),
                          ),
                          SizedBox(height: 50,),
                          commonButton(() {},'Next',context)
                
              ],
            ),
          ),
          

        ],),
      )
      
      
       
    );
  }
}