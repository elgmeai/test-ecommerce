import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
abstract class InternetConnectionChecker {
  Future<bool> checkInternetConnect();
}
class InternetConnectionCheckerImp implements InternetConnectionChecker {
  final InternetConnection internetConnection;

  InternetConnectionCheckerImp(this.internetConnection);
  @override
  Future<bool> checkInternetConnect()async {
   return await internetConnection.hasInternetAccess;
  }
  
}