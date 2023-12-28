# InputTextField Flutter Package

A customizable and styled input text field for Flutter applications.

## Features

- **Controller**: Accepts a TextEditingController to manage the text input.
- **Hint Text**: Displays a hint text within the text field for user guidance.
- **Obscure Text**: Supports obscuring text, useful for password input.
- **Styling**: Customizable enabled and focused borders, background color, and hint text color.

## Usage

1. Add the `input_textfield` package to your `pubspec.yaml` file:

```yaml
dependencies:
  input_textfield: ^1.0.0
```

## Import
```dart
// Importing the necessary package for Flutter Material UI
import 'package:flutter/material.dart';
```

## Additional information
- Parameters
      - controller: A TextEditingController to manage the text input.
      - hintText: A string providing context or a suggestion for the user.
      - obscureText: A boolean flag to determine whether the entered text should be obscured.

## Example
```dart
import 'package:flutter/material.dart';
import 'package:input_textfield/input_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('InputTextField Example'),
        ),
        body: Center(
          child: InputTextField(
            controller: _controller,
            hintText: 'Enter your password',
            obscureText: true,
          ),
        ),
      ),
    );
  }
}

```