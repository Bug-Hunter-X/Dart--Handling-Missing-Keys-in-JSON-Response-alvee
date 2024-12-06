```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      // Solution 1: Using containsKey()
      if (jsonResponse.containsKey('nonExistentKey')) {
        final value = jsonResponse['nonExistentKey'];
        print(value);
      } else {
        print('Key 