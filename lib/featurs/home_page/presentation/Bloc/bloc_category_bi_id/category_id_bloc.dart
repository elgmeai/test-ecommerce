import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/categor_model.dart';
import '../../../domain/use_cases.dart';
import 'category_id_event.dart';
import 'category_id_state.dart';

class CategoryByIdBloc extends Bloc<GetCategoryByIdEvent, CategoryByIdEvent> {
  final UseCasesCategryBiId _useCasesCategryBiId;
  CategoryByIdBloc({required UseCasesCategryBiId useCasesCategories})
    : _useCasesCategryBiId = useCasesCategories,
      super(InitState()) {
    on<GetCategoryById>((event, emit,) async {
      emit(InitState());
      CategorModel res = await _useCasesCategryBiId(event.id);
      print(res);
      emit(Dounlaoded(res));
    });
  }
}
