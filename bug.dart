```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonResponse = jsonDecode(response.body);
      // Accessing a non-existent key
      final value = jsonResponse['nonExistentKey']; 
      print(value); // This line might throw an exception
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // You might want to rethrow the exception or handle it differently
  }
}
```