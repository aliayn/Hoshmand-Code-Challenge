import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hoshmand_code_challenge/core/service/app_service.dart';
import 'package:hoshmand_code_challenge/core/utils/app_logger.dart';

class GlobalErrorHandler with AppLogger {
  GlobalErrorHandler({required Widget app}) {
    if (kReleaseMode) {
      ErrorWidget.builder = (details) => const SizedBox();
    }

    FlutterError.onError = _handleFlutterError;

    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await AppService.init();
      runApp(app);
    }, ((error, stack) {
      // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      log.e(error);
    }));

    PlatformDispatcher.instance.onError = (error, stack) {
      // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  void _handleFlutterError(FlutterErrorDetails details) {
    if (kReleaseMode) {
      // FirebaseCrashlytics.instance.recordFlutterFatalError(details);
      log.e(details.exception);
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    } else {
      FlutterError.dumpErrorToConsole(details);
    }
  }
}
