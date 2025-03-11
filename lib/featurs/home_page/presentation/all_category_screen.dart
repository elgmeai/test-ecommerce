import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ecommerce/featurs/home_page/presentation/Bloc/bloc_category/categories_state.dart';
import '../../../core/common/common_widget.dart';
import '../../../core/theme/app_palette.dart';
import 'widgets/common_photoWithShadow.dart';
import 'widgets/one_category.dart';
import 'package:test_ecommerce/featurs/home_page/presentation/Bloc/bloc_category/categories_bloc.dart';
import 'package:test_ecommerce/featurs/home_page/presentation/Bloc/bloc_category/categories_event.dart';

class GetHomeScreen extends StatefulWidget {
  const GetHomeScreen({super.key});

  @override
  State<GetHomeScreen> createState() => _GetHomeScreenState();
}

class _GetHomeScreenState extends State<GetHomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CategoriesBloc>().add(GetAllCategory());
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/homepage.jfif'),
                  height: height,
                ),

                ReusableWidget.getAppBar(context, 'homeScreen'),
                Positioned(
                  top: 180,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Text(
                        'Make Your Interior',
                        style: TextStyle(
                          color: AppPalette.backGroundLight,
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          height: 1.25,
                        ),
                      ),
                      Text(
                        'More Minimalistic',
                        style: TextStyle(
                          color: AppPalette.backGroundLight,
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          height: 1.25,
                        ),
                      ),
                      Text(
                        '& modern',
                        style: TextStyle(
                          color: AppPalette.backGroundLight,
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          height: 1.25,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Turn your room with panto into alot',
                        style: TextStyle(
                          color: AppPalette.backGroundLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'More Minimalistic and modern with easi',
                        style: TextStyle(
                          color: AppPalette.backGroundLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'and speed',
                        style: TextStyle(
                          color: AppPalette.backGroundLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(width: width / 50),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text('Our', style: Theme.of(context).textTheme.bodyLarge),
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),

                Expanded(
                  child: Image(
                    fit: BoxFit.cover,
                    image: Svg('assets/svg_image/frist_design.svg'),
                    width: width / 0.7,
                    height: width / 1.1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) {
                if (state is IsLoding) {
                  return CircularProgressIndicator();
                } else if (state is IsSuccessful) {
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.categries.length,
                    itemBuilder:
                        (context, index) => oneCategory(
                          state.categries[index].id,
                          context,
                          state.categries[index].image,
                          state.categries[index].title,
                          state.categries[index].description,
                        ),
                  );
                }
                return Text('data');
              },
            ),

            Image(
              fit: BoxFit.cover,
              image: Svg('assets/svg_image/second_design.svg'),
            ),
            //SizedBox(height: 20),
            commonPhotoWithShadow(width, height),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Furnish Your Dreams',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Choose Wisely',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Discover quality furniture, curated styles, and exceptional service at Our Store. We make furnishing your home easy and enjoyable',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
