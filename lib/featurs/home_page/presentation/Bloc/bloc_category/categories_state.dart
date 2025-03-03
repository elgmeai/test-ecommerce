import '../../../data/model/categor_model.dart';

abstract class CategoriesState {
  
}
class IsLoding extends CategoriesState {
  
}
class IsSuccessful extends CategoriesState{
final  List <CategorModel> categries;

  IsSuccessful(this.categries);
}