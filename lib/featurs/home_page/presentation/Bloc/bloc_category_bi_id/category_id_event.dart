abstract class GetCategoryByIdEvent {}

class GetCategoryById extends GetCategoryByIdEvent {
  final int id;

  GetCategoryById(this.id);
}
