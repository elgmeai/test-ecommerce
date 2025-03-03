import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ecommerce/core/theme/shared_preferances_them.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  final String theme;

  ThemeCubit(this.theme) : super(ThemeMode.light) {
    if (theme == 'dark') {
      emit(ThemeMode.dark);
    }
  }

  void lightMode() async {
    await SharedPreferancesThem.setTheme('light');
    return emit(ThemeMode.light);
  }

  void darkMode() async {
    await SharedPreferancesThem.setTheme('dark');
    return emit(ThemeMode.dark);
  }
}
