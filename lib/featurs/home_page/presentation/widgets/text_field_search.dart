import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

TextFieldSearch() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 40,
      decoration: BoxDecoration(color: AppPalette.backGroundDarkTextField,borderRadius: BorderRadius.circular(50)),
      child: TextField(
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          hintText: 'search',

          suffixIconColor: AppPalette.iconDark,
          suffixIcon: Icon(Icons.search),
          hintStyle: TextStyle(fontWeight: FontWeight.w400),
          focusedBorder:OutlineInputBorder(
            
            borderSide: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 94, 57, 12),
            ),
            borderRadius: BorderRadius.circular(50),
          ) ,
          enabledBorder: OutlineInputBorder(
            
            borderSide: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 94, 57, 12),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: const Color.fromARGB(255, 94, 57, 12),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    ),
  );
}
