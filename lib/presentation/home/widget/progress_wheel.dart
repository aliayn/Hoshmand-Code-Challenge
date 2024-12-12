import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class SubjectItem {
  final String name;
  final String svgIcon;
  final double progress;

  SubjectItem({
    required this.name,
    required this.svgIcon,
    required this.progress,
  });
}

class ProgressWheel extends StatefulWidget {
  final SubjectItem subject;
  final double size;
  final Color progressColor;
  final Color backgroundColor;

  const ProgressWheel({
    super.key,
    required this.subject,
    this.size = 98,
    this.progressColor = const Color(0xFF7588EB),
    this.backgroundColor = const Color(0xFFEDEDED),
  });

  @override
  State<ProgressWheel> createState() => _ProgressWheelState();
}

class _ProgressWheelState extends State<ProgressWheel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _startRotation = 0.0;
  double _endRotation = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      final RenderBox box = context.findRenderObject() as RenderBox;
      final center = box.size.center(Offset.zero);
      final angle = math.atan2(
        details.localPosition.dy - center.dy,
        details.localPosition.dx - center.dx,
      );
      _endRotation = angle;

      // Calculate rotation direction and animate
      final rotationDiff = _endRotation - _startRotation;
      _controller.value = rotationDiff / (2 * math.pi);
    });
  }

  void _onPanStart(DragStartDetails details) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final center = box.size.center(Offset.zero);
    _startRotation = math.atan2(
      details.localPosition.dy - center.dy,
      details.localPosition.dx - center.dx,
    );
  }

  void _onPanEnd(DragEndDetails details) {
    _startRotation = _endRotation;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: _onPanStart,
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: Container(
        width: widget.size,
        height: widget.size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background circle
            Container(
              width: widget.size - 10,
              height: widget.size - 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.backgroundColor,
              ),
            ),

            // Progress circle
            Transform.rotate(
              angle: _endRotation,
              child: CircularProgressIndicator(
                value: widget.subject.progress,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(widget.progressColor),
                strokeWidth: 8,
              ),
            ),

            // Subject icon and name
            Transform.rotate(
              angle: _endRotation,
              child: _buildSubjectWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 66,
          height: 66,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF00A28B),
                Color(0xFF003128),
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              widget.subject.svgIcon,
              width: 32,
              height: 32,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          widget.subject.name,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
