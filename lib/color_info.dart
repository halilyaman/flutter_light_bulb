import 'package:flutter/material.dart';

class ColorInfo extends InheritedWidget {
  const ColorInfo({
    super.key,
    required super.child,
    required this.color,
    required this.onColorChanged,
  });

  final Color color;
  final void Function(Color) onColorChanged;

  static ColorInfo of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorInfo>()
            as ColorInfo;
  }

  @override
  bool updateShouldNotify(covariant ColorInfo oldWidget) {
    return color != oldWidget.color;
  }
}

class ColorInfoWrapper extends StatefulWidget {
  const ColorInfoWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<ColorInfoWrapper> createState() => _ColorInfoWrapperState();
}

class _ColorInfoWrapperState extends State<ColorInfoWrapper> {
  Color color = Colors.yellow;

  void onColorchanged(Color newColor) {
    setState(() {
      color = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColorInfo(
      color: color,
      onColorChanged: onColorchanged,
      child: widget.child,
    );
  }
}
