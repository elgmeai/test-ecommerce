
import '../../../data/model/category_by_id.dart';

abstract class CategoryByIdState {}

class InitState extends CategoryByIdState {}

class IsLoadingCategoryById extends CategoryByIdState {}

class Downlaoded extends CategoryByIdState {
  final List< ProductModel> categories;

  Downlaoded(this.categories);
}
