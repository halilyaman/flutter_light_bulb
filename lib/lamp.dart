import 'package:flutter/material.dart';
import 'package:lamp_app/color_info.dart';

class Lamp extends StatefulWidget {
  const Lamp({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<Lamp> createState() => _LampState();
}

class _LampState extends State<Lamp> {
  double xOffset = 100.0;
  double yOffset = 100.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        Positioned(
          top: yOffset,
          left: xOffset,
          child: Draggable(
            feedback: const LampObject(),
            childWhenDragging: const SizedBox.shrink(),
            child: const LampObject(),
            onDragUpdate: (DragUpdateDetails details) {
              setState(() {
                yOffset += details.delta.dy;
                xOffset += details.delta.dx;
              });
            },
          ),
        ),
      ],
    );
  }
}

class LampObject extends StatelessWidget {
  const LampObject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const radius = 100.0;
    final color = ColorInfo.of(context).color;

    return CustomPaint(
      painter: LightPainter(color, radius),
      child: Icon(
        Icons.lightbulb,
        color: color,
        size: 50.0,
      ),
    );
  }
}

class LightPainter extends CustomPainter {
  LightPainter(this.color, this.radius);

  final double radius;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final sigma = radius * 0.57735 + 0.5;

    final paint = Paint()
      ..blendMode = BlendMode.colorDodge
      ..color = color
      ..maskFilter = MaskFilter.blur(
        BlurStyle.normal,
        sigma,
      );

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
