import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter/material.dart';
import 'package:test_ecommerce/core/theme/cubit_them.dart';
import '../../featurs/home_page/presentation/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(context, HomePage.route()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Image(
          width: width,
          fit: BoxFit.cover,
          image: Svg( context.read<ThemeCubit>().state==ThemeMode.light?
            'assets/svg_image/image_splash.svg':'assets/svg_image/image_splash_dark.svg'),
        ),
      ),
    );
  }
}
