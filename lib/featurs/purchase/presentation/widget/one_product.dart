import 'package:flutter/material.dart';

import '../../../../core/theme/app_palette.dart';

oneProductpurchase(BuildContext context,  ){
  var width = MediaQuery.of(context).size.width;
  return Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppPalette.textColorDark,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'assets/images/product.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Text(
                                        'data',
                                        style:
                                            Theme.of(context).textTheme.bodySmall,
                                      ),
                                      SizedBox(height: 60),
                              
                                      Text(
                                        '5\$',
                                        style:
                                            Theme.of(context).textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                               SizedBox(
                            width: width / 1.3,
                            child: Divider(
                              color: const Color.fromARGB(255, 219, 219, 219),
                              height: 30,
                            ),
                          ),
                            ],
                          );
}