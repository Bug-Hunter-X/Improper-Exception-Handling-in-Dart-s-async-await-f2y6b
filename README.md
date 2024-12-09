# Dart Async/Await Exception Handling Bug

This repository demonstrates a common error in Dart asynchronous programming:  improper exception handling within `async` functions. The `bug.dart` file showcases the problem, while `bugSolution.dart` provides the corrected version.

The original code fails to gracefully handle potential exceptions during a network request, potentially crashing the application. The solution improves exception handling to provide better error messages and more robust behavior.