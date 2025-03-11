import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ecommerce/core/theme/app_palette.dart';

import 'all_category_screen.dart';
import 'all_product_screen.dart';
import 'category_screen.dart';

class HomePage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => HomePage());

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    final List<Widget> widgetOptions = <Widget>[
      GetHomeScreen(),
      OneCategoryScreen(catedoryName: '',id: 5,),
      Text('data'),
    ];

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          backgroundColor: AppPalette.backGroundNavBarDark,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(Svg('assets/svg_image/home_icon.svg')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(Svg('assets/svg_image/category_icon.svg')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(Svg('assets/svg_image/cart_icon.svg')),
              label: '',
            ),
          ],
        ),
        body: widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
