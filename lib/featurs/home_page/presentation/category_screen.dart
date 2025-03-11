import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ecommerce/featurs/home_page/presentation/Bloc/bloc_category/categories_state.dart';
import '../../../core/common/common_widget.dart';
import '../../../core/theme/app_palette.dart';
import 'Bloc/bloc_category_bi_id/category_id_bloc.dart';
import 'Bloc/bloc_category_bi_id/category_id_event.dart';
import 'Bloc/bloc_category_bi_id/category_id_state.dart';
import 'widgets/common_photoWithShadow.dart';

import 'widgets/one_product.dart';

class OneCategoryScreen extends StatefulWidget {
  final String catedoryName;
  final int id;
  static route(catedoryName, id) => MaterialPageRoute(
    builder: (context) => OneCategoryScreen(catedoryName: catedoryName, id: id),
  );

  const OneCategoryScreen({
    super.key,
    required this.catedoryName,
    required this.id,
  });

  @override
  State<OneCategoryScreen> createState() => _OneCategoryScreenState();
}

class _OneCategoryScreenState extends State<OneCategoryScreen> {
  _OneCategoryScreenState();

  @override
  void initState() {
    super.initState();
    context.read<CategoryByIdBloc>().add(GetCategoryById(widget.id));
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
            Column(
              children: [
                ReusableWidget.getAppBar(context),
                Column(
                  children: [
                    SizedBox(height: 50),
                    commonPhotoWithShadow(width, height),
                    SizedBox(height: 20),
                    Text(
                      'All ${widget.catedoryName}',
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
            BlocBuilder<CategoryByIdBloc, CategoryByIdState>(
              builder: (context, state) {
                if (state is IsLoding) {
                  return CircularProgressIndicator();
                } else if (state is Downlaoded) {
                  return GridView.builder(

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio:0.50,
    crossAxisCount: 2, // number of items in each row
   // mainAxisSpacing: 200, // spacing between rows
    crossAxisSpacing: 0, // spacing between columns
  ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.categories.length,
                    itemBuilder:
                        (context, index) => oneProduct(
                          context,
                          state.categories[index].productimage[0].link,
                          state.categories[index].title,
                          state.categories[index].description,
                          state.categories[index].price,
                        ),
                  );
                }
                return Text('');
                
              },
            ),SizedBox(height: 350,),
           

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
