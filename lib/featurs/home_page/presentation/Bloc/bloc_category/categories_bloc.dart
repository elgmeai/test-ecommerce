import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ecommerce/featurs/home_page/presentation/Bloc/bloc_category/categories_event.dart';
import 'package:test_ecommerce/featurs/home_page/presentation/Bloc/bloc_category/categories_state.dart';

import '../../../data/model/categor_model.dart';
import '../../../domain/use_cases.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final UseCasesCategories _useCasesCategories;
  CategoriesBloc({required UseCasesCategories useCasesCategories})
    : _useCasesCategories = useCasesCategories,
      super(IsLoding()) {

        
    on<GetAllCategory>((event, emit) async {
      emit(IsLoding());
      List<CategorModel> res = await _useCasesCategories();
      print(res);
      emit(IsSuccessful(res));
    });
  }
}
