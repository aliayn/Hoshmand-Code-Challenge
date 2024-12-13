import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';

class ProgressWheel extends StatefulWidget {
  final List<UnitModel> units;
  final double height;
  final bool isLoading;
  final Function(UnitModel) onSelect;

  const ProgressWheel({
    super.key,
    required this.units,
    this.height = 100,
    required this.onSelect,
    this.isLoading = false,
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
      initialItem: widget.units.length * 100 + (widget.units.length ~/ 2),
    );
    _selectedIndex = widget.units.length ~/ 2;
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
                ..rotateX(-0.5),
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
                      _selectedIndex = index % widget.units.length;
                    });
                    widget.onSelect(widget.units[_selectedIndex]);
                  },
                  childDelegate: ListWheelChildLoopingListDelegate(
                    children: List.generate(
                      widget.units.length * 200,
                      (index) {
                        final realIndex = index % widget.units.length;
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
    final unit = widget.units[realIndex];
    final isSelected = realIndex == _selectedIndex;

    return RepaintBoundary(
      child: RotatedBox(
        quarterTurns: 1,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: isSelected ? 1.0 : 0.5,
          child: _buildUnitWidget(unit, isSelected),
        ),
      ),
    );
  }

  Widget _buildUnitWidget(UnitModel unit, bool isSelected) {
    // Calculate progress based on points
    final progress = unit.hamdarsUserCurrentUnitLevelPoint != null &&
            unit.hamdarsUserMaxUnitLevelPoint != null &&
            unit.hamdarsUserMaxUnitLevelPoint! > 0
        ? unit.hamdarsUserCurrentUnitLevelPoint! /
            unit.hamdarsUserMaxUnitLevelPoint!
        : 0.0;

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
                value: progress,
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
                child: unit.unitIcon != null
                    ? SvgPicture.network(
                        unit.unitIcon!,
                        width: 32,
                        height: 32,
                      )
                    : const Icon(
                        Icons.book,
                        size: 32,
                        color: Color(0xFF404040),
                      ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          unit.name ?? '',
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
