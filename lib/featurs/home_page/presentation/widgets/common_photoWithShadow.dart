import 'package:flutter/material.dart';

import '../../../../core/theme/app_palette.dart';

commonPhotoWithShadow(dynamic width, dynamic height){return
  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  SizedBox(
                    width: width,height: height/3,
                  ),
                  Container(
                    height: height/4,
                    width: width/1.5,
                    decoration: BoxDecoration(
                      color: AppPalette.backGroundDarkTextField,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Positioned(
                    top: 20,left: 10,
                    child: Container(
                      width:width/1.1 ,height: width/2,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: const Color.fromARGB(88, 240, 231, 223),
                          blurRadius: 10,
                          offset: Offset(6, 8)
                        )],
                        borderRadius: BorderRadius.circular(25), ),
                      child: Image.asset(
                        'assets/images/background.jfif',
                        fit: BoxFit.fill,
                        width: width / 1.1,
                      ),
                    ),
                  ),
                ],
              ),
            );
}

