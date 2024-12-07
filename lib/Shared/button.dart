import 'package:flutter/material.dart';
import 'colors.dart';

class ANButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback voidCallback;
  final Color? shColor;

  const ANButton({super.key, required this.voidCallback, required this.widget, this.shColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: voidCallback,
      child: widget,
      style: ElevatedButton.styleFrom(
        backgroundColor: shColor ?? AppColors.primary,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
      ),
    );
  }
}