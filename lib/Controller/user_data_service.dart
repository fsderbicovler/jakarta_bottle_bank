import 'package:jakarta_bottle_bank/Controller/jbb_rest_service.dart';
import 'package:jakarta_bottle_bank/Model/users_data.dart';
import 'package:jakarta_bottle_bank/dependencies.dart';

class UserDataService {
  final rest = service<RestService>();
  Future<List<UserData>> getUserList() async {
    // final listJson = await rest.get('users');

    // return (listJson as List)
    //     .map((itemJson) => UserData.fromJson(itemJson))
    //     .toList();
  }

  // Future<UserData> getUser({int id}) async {
  //   final json = await rest.get('users/$id');
  //   return UserData.fromJson(json);
  // }
}
