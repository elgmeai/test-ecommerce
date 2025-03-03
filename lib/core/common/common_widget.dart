import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ecommerce/core/theme/cubit_them.dart';
import 'package:test_ecommerce/featurs/home_page/presentation/menu_screen.dart';

import '../../featurs/home_page/presentation/search_screen.dart';
import '../theme/app_palette.dart';

class ReusableWidget {
  static getAppBar(BuildContext context, [bage = 'notHomeScreen']) {
    return Column(
      children: [
        SizedBox(height: 40),
        Row(
          children: [
            SizedBox(width: 10),
            Text(
              "LOGO",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color:
                // to chenge color of "LOGO" in light mode
                    context.read<ThemeCubit>().state == ThemeMode.light &&
                            bage == 'notHomeScreen'
                        ? Theme.of(context).colorScheme.onPrimary
                        : Colors.white,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () => Navigator.of(context).push(SearchScreen.route()),
              icon: Icon(Icons.search, color:  AppPalette.iconDark, size: 35),
            ),
            IconButton(
              onPressed: () => Navigator.of(context).push(MenuScreen.route()),
              icon: Icon(Icons.menu, color: AppPalette.iconDark, size: 35),
            ),
          ],
        ),
      ],
    );
  }

  static subAppBar(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Row(
          children: [
            SizedBox(width: 10),
            Text(
              "LOGO",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.close, color: AppPalette.iconDark, size: 35),
            ),
          ],
        ),
      ],
    );
  }
}
