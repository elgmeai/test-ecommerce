import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ecommerce/core/theme/cubit_them.dart';

import '../../../core/common/common_widget.dart';
import 'Bloc/bloc_category/categories_bloc.dart';
import 'Bloc/bloc_category/categories_event.dart';

class MenuScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => MenuScreen());
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        
        ReusableWidget.subAppBar(context),
        IconButton(onPressed: () {
           context.read<ThemeCubit>().darkMode();
           }, icon: Icon(Icons.ac_unit_outlined)),

           IconButton(onPressed: () {
           context.read<ThemeCubit>().lightMode();
           }, icon: Icon(Icons.ac_unit_outlined)),
           IconButton(onPressed: () {
           context.read<CategoriesBloc>().add(GetAllCategory());
           }, icon: Icon(Icons.ac_unit_outlined))
      ],),
    );
  }
}
