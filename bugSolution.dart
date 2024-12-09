```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process the data
      // Example processing - using jsonData
      print('Data received successfully: $jsonData');
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode} - ${response.body}');
    }
  } on FormatException catch (e) {
    //Handle JSON decoding errors
    print('JSON Decoding Error: $e');
    //Appropriate error handling here
  } on SocketException catch(e){
    print('Network error: $e');
    // Handle network errors gracefully
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    // Consider logging or presenting user-friendly message
  }
}
```