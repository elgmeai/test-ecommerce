import 'global_variables.dart';

class Apis {
  static final baseUrl = GlobalVariables.baseUrl;
  //auth
  static Uri authLogin = Uri.https(baseUrl, 'api/login');
  static Uri authRegister = Uri.https(baseUrl, 'api/register');
  static Uri authLogout = Uri.https(baseUrl, 'api/out');
  //category
  static Uri getCategories = Uri.https(baseUrl, 'api/category/get');
  //static Uri getCategory (int id)=> Uri.https(baseUrl, 'api/category/find/$id');
  //product
  static Uri getProductByCategory(Map<String, dynamic> quiryParams)  => Uri.https(
    baseUrl,
    'api/product/category',
    quiryParams
  );
  static Uri getProductDetails = Uri.https(baseUrl, 'api/product/find/3');
  //cart
  static Uri getCartItem = Uri.https(baseUrl, 'api/cart/items');
  static Uri addItemToCart = Uri.https(baseUrl, 'api/cart/add-item');
  static Uri increaseItem = Uri.https(baseUrl, 'api/cart/increase-item');
  static Uri decreaseItem = Uri.https(baseUrl, 'api/cart/decrease-item');
  static Uri removeItemFromCart = Uri.https(baseUrl, 'api/cart/remove-item');
  static Uri clearCart = Uri.https(baseUrl, 'api/cart/destroy-cart');
  //order
  static Uri orderPrice = Uri.https(baseUrl, 'api/order/order-price');
  
  static Uri createOrder = Uri.https(baseUrl, 'api/order/create');
}
