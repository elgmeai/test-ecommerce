import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ecommerce/featurs/home_page/data/remot_db/remote_db_get_categories.dart';

class GetCategoriesRepo {
 final RemoteDbGetCategories remoteDbGetCategories;

final  BuildContext context;

  GetCategoriesRepo(this.remoteDbGetCategories, this.context);

  Future allCategories()async{
    return await remoteDbGetCategories.getCategories();
  }

  Future categoryById(int id)async{
    return await remoteDbGetCategories.getCategoryBiId( id);
  }
}