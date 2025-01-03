```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing data incorrectly assuming jsonData is a map
      final String name = jsonData['name'];  //Error occurs if jsonData isn't a Map
      print('Name: $name');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Without proper error handling, this is silent failure
  }
}
```