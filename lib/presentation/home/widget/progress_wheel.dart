import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  late PageController _pageController;
  int _selectedIndex = 0;
  final viewportFraction = 0.3; // Adjusted for better spacing

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: viewportFraction);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final repeatedSubjects = <SubjectItem>[];
    while (repeatedSubjects.length < 15) {
      repeatedSubjects.addAll(widget.subjects);
    }

    return SizedBox(
      height: widget.height,
      child: MyPageView(
        children: repeatedSubjects.map((subject) {
          final isSelected = repeatedSubjects.indexOf(subject) % widget.subjects.length == _selectedIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = repeatedSubjects.indexOf(subject) % widget.subjects.length;
              });
              widget.onTap?.call();
            },
            child: _buildSubjectWidget(subject, isSelected),
          );
        }).toList(),
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

const viewportFraction = 0.3;

class MyPageView extends StatefulWidget {
  const MyPageView({
    required this.children,
    Key? key,
  }) : super(key: key);

  final List<Widget> children;

  factory MyPageView.images(List<ImageProvider> imageProviders) {
    return MyPageView(
      children: [
        for (final image in imageProviders)
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
      ],
    );
  }

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final pageController = PageController(viewportFraction: 0.2);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final maxWidth = constraint.maxWidth;
        return PageView.builder(
          allowImplicitScrolling: true,
          controller: pageController,
          itemCount: widget.children.length,
          itemBuilder: (_, index) {
            final child = widget.children[index % widget.children.length];
            return AnimatedBuilder(
              animation: pageController,
              builder: (_, __) {
                final ratioX =
                    pageController.offset / maxWidth / 0.2 - index;

                final angle = math.pi * -0.03 * ratioX;
                final scale = 1.0 - ratioX.abs() * 0.3;
                final translateX = ratioX * 8;
                final translateY = ratioX.abs() * 50;

                return Transform.rotate(
                  angle: angle,
                  child: Transform.translate(
                    offset: Offset(translateX, translateY),
                    child: Transform.scale(
                      scale: scale,
                      child: child,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
