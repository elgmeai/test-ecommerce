import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

import '../auth_page.dart';



appbaerState(BuildContext context,Done done) {
  late Color a;
  late Color b;
  late Color c;
  late Color d;
  if (done==Done.register) {
     a= Colors.transparent;
     b= Colors.transparent;
     c= Colors.transparent;
     d= Colors.transparent;
  }else if(done==Done.data){
     a= AppPalette.colorDone;
     b= Colors.transparent;
     c= Colors.transparent;
     d= Colors.transparent;
  }else if(done==Done.payment){
     a= AppPalette.colorDone;
     b= AppPalette.colorDone;
     c= Colors.transparent;
     d= Colors.transparent;
  }else if(done==Done.review){
     a= AppPalette.colorDone;
     b= AppPalette.colorDone;
     c= AppPalette.colorDone;
     d= Colors.transparent;
  }else if(done==Done.ok){
     a= AppPalette.colorDone;
     b= AppPalette.colorDone;
     c= AppPalette.colorDone;
     d= AppPalette.colorDone;
  }

  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(child: Container()),

            Container(
              width: 70,
              height: 15,
              decoration: BoxDecoration(
                color:a,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: 15,
                    color: AppPalette.colorCircleDark,
                  ),
                  Text(
                    'REGISTER',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 30,
              child: Divider(color: AppPalette.colorLableSmall, height: 30),
            ),

            Container(
              width: 70,
              height: 15,
              decoration: BoxDecoration(
                color: b,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: 15,
                    color: AppPalette.colorCircleDark,
                  ),
                  Text('DATA', style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ),

            SizedBox(
              width: 30,
              child: Divider(color: AppPalette.colorLableSmall, height: 30),
            ),

            Container(
              width: 70,
              height: 15,
              decoration: BoxDecoration(
                color: c,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: 15,
                    color: AppPalette.colorCircleDark,
                  ),
                  Text(
                    'PAYMENT',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 30,
              child: Divider(color: AppPalette.colorLableSmall, height: 30),
            ),

            Container(
              width: 70,
              height: 15,
              decoration: BoxDecoration(
                color: d,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: 15,
                    color: AppPalette.colorCircleDark,
                  ),
                  Text('REVIEW', style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ),

            Expanded(child: Container()),
          ],
        ),
        SizedBox(
          width: width / 1.25,
          height: 6,
          child: Divider(color: AppPalette.colorLableSmall, height: 30),
        ),
        SizedBox(height: 30,),
        
        
      ],
    ),
  );
}
