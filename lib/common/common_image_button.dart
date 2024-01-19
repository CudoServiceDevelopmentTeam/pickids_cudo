import 'package:flutter/material.dart';

class CommonImageButton extends StatelessWidget {
  String resPath;
  Function? onClick;

  double? _buttonWidth;
  double? _buttonHeight;
  double? _padding;

  CommonImageButton(
      {super.key,
      required this.resPath,
      required this.onClick,
      double? buttonWidth,
      double? buttonHeight,
      double? padding}) {
    _buttonWidth = buttonWidth;
    _buttonHeight = buttonHeight;
    _padding = padding;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.all(_padding ?? 0),
      ),
      child: Image.asset(
        'assets/images/${resPath}.png',
        width: _buttonWidth,
        height: _buttonHeight,
        fit: BoxFit.cover,
      ),
      onPressed: () {
        onClick?.call();
      },
    );
  }
}
