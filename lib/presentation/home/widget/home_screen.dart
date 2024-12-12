import 'package:flutter/material.dart';
import 'package:hoshmand_code_challenge/const/resource.dart';
import 'package:hoshmand_code_challenge/core/base/base_stateless.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';

class HomeScreen extends BaseStateless {
  const HomeScreen({super.key});

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Existing content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                children: [
                  ChapterCard(
                    chapterNumber: "فصل هشتم",
                    studyTime: "۰۲:۳۰",
                    isExpanded: true,
                  ),
                  SizedBox(height: 16),
                  ChapterCard(
                    chapterNumber: "فصل هفتم",
                    studyTime: "۰۲:۳۰",
                    isExpanded: false,
                  ),
                ],
              ),
            ),
          ),

          // Bottom progress bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ProgressWheel(
              height: 150,
              subjects: [
                SubjectItem(
                  name: "ادبیات",
                  svgIcon: R.ASSETS_ICONS_LITERATURE_SVG,
                  progress: 0.75,
                  iconColor: Color(0xFF7588EB),
                ),
                SubjectItem(
                    name: "ادبیات",
                    svgIcon: R.ASSETS_ICONS_LITERATURE_SVG,
                    progress: 0.75,
                    iconColor: Color(0xFF7588EB)),
                SubjectItem(
                  name: "ادبیات",
                  svgIcon: R.ASSETS_ICONS_LITERATURE_SVG,
                  progress: 0.75,
                  iconColor: Color(0xFF7588EB),
                ),
                SubjectItem(
                  name: "ادبیات",
                  svgIcon: R.ASSETS_ICONS_LITERATURE_SVG,
                  progress: 0.75,
                  iconColor: Color(0xFF7588EB),
                ),
                SubjectItem(
                  name: "ادبیات",
                  svgIcon: R.ASSETS_ICONS_LITERATURE_SVG,
                  progress: 0.75,
                  iconColor: Color(0xFF7588EB),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String chapterNumber;
  final String studyTime;
  final bool isExpanded;

  const ChapterCard({
    super.key,
    required this.chapterNumber,
    required this.studyTime,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0x147588EB),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(0, 2),
            blurRadius: 6,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          // Chapter Title
          Positioned(
            right: 12,
            top: 7,
            child: Text(
              chapterNumber,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),

          // Study Time
          Positioned(
            right: 12,
            bottom: 7,
            child: Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 16,
                  color: Color(0xFF404040),
                ),
                const SizedBox(width: 4),
                Text(
                  studyTime,
                  style: const TextStyle(
                    color: Color(0xFF404040),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          // Expand Icon
          Positioned(
            left: 12,
            bottom: 20,
            child: Transform.rotate(
              angle: isExpanded ? 3.14159 : 0,
              child: const Icon(
                Icons.expand_more,
                color: Color(0xFF404040),
              ),
            ),
          ),

          // Chapter Icon
          Positioned(
            right: 248,
            top: 0,
            child: Container(
              width: 64,
              height: 64,
              decoration: const BoxDecoration(
                color: Color(0xFFEDEDED),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(0, 1),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.book,
                    color: Color(0xFF404040),
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
