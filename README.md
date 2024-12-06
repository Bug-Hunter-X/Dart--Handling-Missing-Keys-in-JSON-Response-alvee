# Dart: Handling Missing Keys in JSON Response

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a non-existent key.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a solution.

The error occurs because the code assumes the JSON response always contains a specific key ('nonExistentKey' in this case). If the key is missing, `jsonResponse['nonExistentKey']` will throw an exception.

The solution involves checking for the key's existence before accessing it, using methods like `containsKey()` or the null-aware operator (`?.`) to avoid exceptions.