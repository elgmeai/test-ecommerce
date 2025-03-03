import 'repository.dart';

class UseCasesCategories {
 final GetCategoriesRepo getCategoriesRepo;

  UseCasesCategories(this.getCategoriesRepo);
  Future call()async{
      return await getCategoriesRepo.allCategories();
  }
  
}

class UseCasesCategryBiId {
 final GetCategoriesRepo getCategoriesRepo;

  UseCasesCategryBiId(this.getCategoriesRepo);
  Future call(int id)async{
      return await getCategoriesRepo.categoryById(id);
  }
  
}