import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          
          // New bottom component
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 181,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Background rectangle
                  Container(
                    width: 88,
                    height: 168,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7588EB).withOpacity(0.08),
                    ),
                  ),
                  
                  // Progress indicator and icon
                  SizedBox(
                    width: 98,
                    height: 98,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Background circle
                        Container(
                          width: 88,
                          height: 88,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEDEDED),
                          ),
                        ),
                        
                        // Progress circle
                        CircularProgressIndicator(
                          value: 0.75, // Adjust progress value as needed
                          backgroundColor: Colors.transparent,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFF7588EB),
                          ),
                          strokeWidth: 8,
                        ),
                        
                        // Math icon
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
                          ),
                          child: const Icon(
                            Icons.calculate,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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