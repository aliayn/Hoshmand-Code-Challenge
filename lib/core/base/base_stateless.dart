import 'package:flutter/material.dart';

abstract class BaseStateless extends StatelessWidget {
  const BaseStateless({super.key});

  Widget builder(BuildContext context);

  @override
  Widget build(BuildContext context) => builder(context);

  void showErrorMessage(String message) {
    // showErrorSnackBar(message: message);
  }

  void showSuccessMessage(String message) {
    // showSuccessSnackBar(message: message);
  }
}
