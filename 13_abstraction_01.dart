// Polymorphism
// Abstract Classes - It is a special class, which we declare using abstract keyword. So that becomes a abstract class.
// Abstract class is a class in dart which we cannot initialize. Means this is a special class of which you cannot create object. In this you cannot create constructor or cannot initialise but you can define the behaviour or methods.And any class which wants to use this defined methods can extend or inherit this class and will do concrete implementation.

// Abstrsct Method
// Abstract method is a specialized method which we write in absract class. This does not have body. You write method name use braces and the use semicolon;

void main() {
  NetworkServicesApi networkServicesApi = NetworkServicesApi("Sagar");
  Map<String, dynamic> data = {"email": "a@gmail.com", "password": "123456"};
  networkServicesApi.postApi(data);
}

abstract class BaseApiServices {
  void postApi(var data);

  void getApi();
}

class NetworkServicesApi extends BaseApiServices {
  String name;
  NetworkServicesApi(this.name);

  @override
  void postApi(var data) async {
    print("api hit");
    await Future.delayed(Duration(seconds: 3));
    print("Login Successful");
    print(data['email']);
    print(name);          
  }

  @override
  void getApi() {}
}
