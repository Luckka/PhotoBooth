import 'package:flutter_test/flutter_test.dart';

class EmailValidator{
  validate({String? email}){
    if(email == null || email == ''){
      return 'You need to type one email';
    }

    final emailRegExp = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

    if(!emailRegExp.hasMatch(email)){
      return 'You need to type one valid email';
    }
 

  }
}


void main(){
  late EmailValidator emailValidator;

  setUp(() {
    emailValidator = EmailValidator();
  });

  group("Validate email", () { 
      test("Should return one message if the email is null", () {
        final result = emailValidator.validate();
        expect(result, equals('You need to type one email'));
      });

      test("Should return one message if the email is empty", () {
        final result = emailValidator.validate(email: '');
        expect(result, equals('You need to type one email'));
     
      });

        test("Should return one message if the email is valid", () {
        final result = emailValidator.validate(email: 'lucka');
        expect(result, equals('You need to type one valid email'));
     
      });

       test("Should return null if the email is valid", () {
        final result = emailValidator.validate(email: 'luckapassos5@gmail.com');
        expect(result, isNull);
     
      });
  });
}