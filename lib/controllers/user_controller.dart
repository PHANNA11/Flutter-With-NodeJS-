import 'package:interface_notejs/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserController {
  Future<List<Users>> getUer() async {
    var respon = await http.get(Uri.parse("http://localhost:3000/users"));
    if (respon.statusCode == 200) {
      return usersFromJson(respon.body);
    } else {
      print("Status:${respon.body}");
    }
    return usersFromJson(respon.body);
  }
}
