import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_ecommerce/core/theme/app_them.dart';
import 'package:test_ecommerce/core/theme/shared_preferances_them.dart';
import 'package:test_ecommerce/core/utils/splash_screen.dart';
import 'package:test_ecommerce/featurs/home_page/data/remot_db/remote_db_get_categories.dart';
import 'package:test_ecommerce/featurs/home_page/domain/repository.dart';
import 'package:test_ecommerce/featurs/home_page/domain/use_cases.dart';
import 'package:test_ecommerce/featurs/home_page/presentation/Bloc/bloc_category/categories_bloc.dart';

import 'core/theme/cubit_them.dart';
import 'featurs/home_page/presentation/Bloc/bloc_category_bi_id/category_id_bloc.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferancesThem.init();

  String theme = 'dark';
  runApp(App(themeFromDB: theme));
}

class App extends StatelessWidget {
  final String themeFromDB;

  const App({super.key, required this.themeFromDB});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(themeFromDB),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<CategoriesBloc>(
            create:
                (BuildContext context) => CategoriesBloc(
                  useCasesCategories: UseCasesCategories(
                    GetCategoriesRepo(RemoteDbGetCategoriesImp(), context),
                  ),
                ),
          ),

          BlocProvider<CategoryByIdBloc>(
            create:
                (BuildContext context) => CategoryByIdBloc(
                  useCasesCategories: UseCasesCategryBiId(
                    GetCategoriesRepo(RemoteDbGetCategoriesImp(), context),
                  ),
                ),
          ),
        ],
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    _getThemeFromLocalDB;
    super.initState();
  }

  _getThemeFromLocalDB(String value) async {
    final SharedPreferences themeFromDB = await SharedPreferences.getInstance();
    String? theme = themeFromDB.getString('theme');
    if (theme == null) {
      await themeFromDB.setString('theme', 'light');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder:
          (context, state) => MaterialApp(
            scaffoldMessengerKey: snackbarKey,
            debugShowCheckedModeBanner: false,
            theme: AppThem.lightMode,
            darkTheme: AppThem.darkMode,
            themeMode: state,
            home:
                //ThankYouScreen()
                //ReviewScreen()
                //PaymentScreen()
                //DataScreen()
                //AuthPage()
                const SplashScreen(),
          ),
    );
  }
}
