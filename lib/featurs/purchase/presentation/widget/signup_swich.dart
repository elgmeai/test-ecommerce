import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

import '../auth_page.dart';


signupSwitch(
  String textSwitch,
  VoidCallback callBack,
  AuthState ontap,
  BuildContext context,
) {
  return Expanded(
    child: Container(
      height: 45,
      decoration: BoxDecoration(
        border: Border(
          
          bottom: BorderSide(
            width: 4,
          color:ontap==AuthState.signUp? AppPalette.buttonLightDrk:Colors.transparent
          )),
        color:
            ontap == AuthState.signUp
                ? AppPalette.backGroundDarkTextField
                : Colors.transparent,
      ),
      child: TextButton(
        
        onPressed: callBack,
        child: Text(
          textSwitch,
          style:
              ontap == AuthState.signUp
                  ? TextStyle(color: AppPalette.buttonLightDrk)
                  : Theme.of(context).textTheme.bodySmall,
        ),
      ),
    ),
  );
}
