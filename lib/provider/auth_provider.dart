import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier {

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  setLoading(bool value){
    _isLoading=value;
    notifyListeners();
  }


  Future<void> loginApi(String email, password) async {
    setLoading(true);

    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode==200){
        print (response.statusCode);
        print(response.body.toString());
        setLoading(false);
      }else{
        print("Login Failed");
        setLoading(false);
      }

    } catch (e) {
      setLoading(false);
      e.toString();
    }
  }
}
