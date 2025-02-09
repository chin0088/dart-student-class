import 'package:my_student_class/student.dart';
import 'dart:convert';

void main(List<String> arguments) {

 String jsonString = '''
[
  {"id":1, "first":"Rick", "last":"Novak", "email":"novak@algonquincollege.com"},
  {"id":2, "first":"Susan", "last":"Conner", "email":"conner@algonquincollege.com"},
  {"id":3, "first":"Margaret", "last":"Adelman", "email":"adelman@algonquincollege.com"},
  {"id":4, "first":"Ronald", "last":"Broadbet", "email":"broadber@algonquincollege.com"}
]
''';


List<Map<String, dynamic>> people = List<Map<String, dynamic>>.from(json.decode(jsonString));

Students studentData = Students(people);
studentData.output();

studentData.sort("first");

studentData.plus({'id': 5, 'first': 'Olivia', 'last': 'Brown', 'email': 'brown@algonquincollege.com'});

studentData.remove('email');
}
