import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../data/model/category_by_id.dart';
import '../../../domain/use_cases.dart';
import 'category_id_event.dart';
import 'category_id_state.dart';

class CategoryByIdBloc extends Bloc<GetCategoryByIdEvent, CategoryByIdState> {
  final UseCasesCategryBiId _useCasesCategryBiId;
  CategoryByIdBloc({required UseCasesCategryBiId useCasesCategories})
    : _useCasesCategryBiId = useCasesCategories,
      super(InitState()) {
    on<GetCategoryById>((event, emit) async {
      
      emit(InitState());
      List<ProductModel> res = await _useCasesCategryBiId(event.id);
      print(res);
      emit(Downlaoded(res));
    });
  }
}
