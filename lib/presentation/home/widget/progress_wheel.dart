import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubjectItem {
  final String name;
  final String svgIcon;
  final double progress;
  final Color iconColor;
  final bool isSelected;

  SubjectItem({
    required this.name,
    required this.svgIcon,
    required this.progress,
    required this.iconColor,
    this.isSelected = false,
  });
}

class ProgressWheel extends StatefulWidget {
  final List<SubjectItem> subjects;
  final double height;
  final VoidCallback? onTap;

  const ProgressWheel({
    super.key,
    required this.subjects,
    this.height = 100,
    this.onTap,
  });

  @override
  State<ProgressWheel> createState() => _ProgressWheelState();
}

class _ProgressWheelState extends State<ProgressWheel> {
  late final FixedExtentScrollController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(
      initialItem: widget.subjects.length * 100 + (widget.subjects.length ~/ 2),
    );
    _selectedIndex = widget.subjects.length ~/ 2;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final itemWidth = screenWidth * 0.2;

        return RepaintBoundary(
          child: SizedBox(
            height: widget.height,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateX(0.5),
              child: RotatedBox(
                quarterTurns: 3,
                child: ListWheelScrollView.useDelegate(
                  controller: _controller,
                  itemExtent: itemWidth,
                  perspective: 0.005,
                  diameterRatio: 2.0,
                  physics: const FixedExtentScrollPhysics(),
                  clipBehavior: Clip.none,
                  renderChildrenOutsideViewport: false,
                  onSelectedItemChanged: (index) {
                    setState(() {
                      _selectedIndex = index % widget.subjects.length;
                    });
                    widget.onTap?.call();
                  },
                  childDelegate: ListWheelChildLoopingListDelegate(
                    children: List.generate(
                      widget.subjects.length * 200, // Reduced multiplication factor
                      (index) {
                        final realIndex = index % widget.subjects.length;
                        return _buildWheelItem(realIndex);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildWheelItem(int realIndex) {
    final subject = widget.subjects[realIndex];
    final isSelected = realIndex == _selectedIndex;

    return RepaintBoundary(
      child: RotatedBox(
        quarterTurns: 1,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: isSelected ? 1.0 : 0.5,
          child: _buildSubjectWidget(subject, isSelected),
        ),
      ),
    );
  }

  Widget _buildSubjectWidget(SubjectItem subject, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 64,
              height: 64,
              child: CircularProgressIndicator(
                value: subject.progress,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(
                  isSelected ? const Color(0xFFFFB800) : Colors.transparent,
                ),
                strokeWidth: 2,
              ),
            ),
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  subject.svgIcon,
                  width: 32,
                  height: 32,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          subject.name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.black : Colors.black54,
          ),
        ),
      ],
    );
  }
}
