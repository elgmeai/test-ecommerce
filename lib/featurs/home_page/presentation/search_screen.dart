import 'package:flutter/material.dart';


import '../../../core/common/common_widget.dart';
import '../../../core/theme/app_palette.dart';
import 'widgets/common_photoWithShadow.dart';

import 'widgets/text_field_search.dart';

class SearchScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => SearchScreen());
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppPalette.backGroundDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReusableWidget.subAppBar(context),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chic Furnishings Online',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Furniture Store',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    SizedBox(height: 10),
                    Text(
                      ' Discover Elegant Comfort for Every Room',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                Expanded(child: Container()),
              ],
            ),
            SizedBox(height: 35),
            TextFieldSearch(),
            SizedBox(height: 80),
            commonPhotoWithShadow(width,height),
           
          ],
        ),
      ),
    );
  }
}
