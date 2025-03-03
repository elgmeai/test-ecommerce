import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

commonButton(VoidCallback onpressed, String text, BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Center(
    child: SizedBox(
      width: width / 1.1,
      child: ElevatedButton(
        
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(AppPalette.iconDark),
          
        ),
        onPressed: onpressed,
        child: Text(text,style: TextStyle(color: AppPalette.backGroundLight,fontWeight: FontWeight.bold),),
      ),
    ),
  );
}
