import 'package:get_it/get_it.dart';
import 'package:hoshmand_code_challenge/core/di/injection.dart';

/// Resets and sets up dependencies for testing
Future<void> setupTestDependencies() async {
  final getIt = GetIt.instance;
  
  // Reset GetIt instance
  await getIt.reset();
  
  // Register dependencies
  configureDependencies();
  // Add other dependencies as needed
} 