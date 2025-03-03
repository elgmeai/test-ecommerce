import 'package:flutter/material.dart';


commonTextField( String text, BuildContext context, IconData? icon, Widget getWidget) {
  var width = MediaQuery.of(context).size.width;
  return Row(
    children: [
      Expanded(child: Container()),
      SizedBox(
        height: 40,
        width: width / 1.1,
        child: TextField(
           style:TextStyle(fontSize:20),
          decoration: InputDecoration(
            icon: getWidget,
            hintStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),
            hintText: text,
            helperStyle: TextStyle(fontSize:20),
            suffixIcon: Icon(icon)
          ),
        )
      ),
      Expanded(child: Container()),
    ],
  );
}