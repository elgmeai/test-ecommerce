import '../../../data/model/categor_model.dart';

abstract class CategoryByIdEvent {}

class InitState extends CategoryByIdEvent {}

class IsLoadingCategoryById extends CategoryByIdEvent {}

class Dounlaoded extends CategoryByIdEvent {
  final CategorModel categorModel;

  Dounlaoded(this.categorModel);
}
