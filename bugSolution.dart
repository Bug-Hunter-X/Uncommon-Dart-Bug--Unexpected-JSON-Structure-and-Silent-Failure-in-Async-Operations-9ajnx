```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      //More robust JSON decoding and type handling
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      if(jsonData.containsKey('name') && jsonData['name'] is String){
        final String name = jsonData['name'];
        print('Name: $name');
      } else{
        print('Unexpected JSON structure or missing name field.');
      }
    } else {
      throw Exception('Request failed with status: ${response.statusCode}. Response body: ${response.body}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```