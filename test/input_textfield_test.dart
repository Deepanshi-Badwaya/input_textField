import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:input_textfield/input_textfield.dart';

void main() {
  final TextEditingController _controller = TextEditingController();
  test('Package for input text field', () {
    final input = InputTextField(controller: _controller, hintText: '', obscureText: true,);
    input;
  });
}
