import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_custom_carousel/flutter_custom_carousel.dart';
import 'dart:math' as math;

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
  late CustomCarouselScrollController _scrollController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = CustomCarouselScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemCount = widget.subjects.length;
    final visibleItems = (itemCount - 1) ~/ 2;
    
    return SizedBox(
      height: widget.height,
      // width: screenWidth * 1.5,
      child: CustomCarousel(
        effectsBuilder: (index, scrollRatio, child) {
          final angle = (scrollRatio * math.pi) / 2;
          final radius = screenWidth * 0.35;
          
          final y = radius * (1 - math.cos(angle)) * 0.15;
          final x = radius * math.sin(angle);
          
          final scale = 1.0 - (scrollRatio.abs() * 0.15).clamp(0.0, 0.15);
          final opacity = 1.0 - (scrollRatio.abs() * 0.3).clamp(0.0, 0.3);
          
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..translate(x, y)
              ..scale(scale),
            alignment: Alignment.center,
            child: Opacity(
              opacity: opacity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: child,
              ),
            ),
          );
        },
        controller: _scrollController,
        onSelectedItemChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
          widget.onTap?.call();
        },
        scrollDirection: Axis.horizontal,
        itemCountBefore: visibleItems,
        itemCountAfter: visibleItems,
        loop: true,
        tapToSelect: true,
        scrollSpeed: 1.0,
        physics: const CustomCarouselScrollPhysics(
          sticky: true,
          stiffness: 0.7,
        ),
        alignment: Alignment.center,
        depthOrder: DepthOrder.selectedInFront,
        children: widget.subjects.map((subject) => 
          SizedBox(
            width: screenWidth * 0.45,
            child: _buildSubjectWidget(subject),
          )
        ).toList(),
      ),
    );
  }

  Widget _buildSubjectWidget(SubjectItem subject) {
    final isSelected = widget.subjects.indexOf(subject) == _selectedIndex;

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
        if (isSelected)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.access_time,
                  size: 14,
                  color: Colors.black54,
                ),
                const SizedBox(width: 4),
                Text(
                  '02:30',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
