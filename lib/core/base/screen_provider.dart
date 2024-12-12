import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injection.dart';

class ScreenProvider<T extends StateStreamableSource<Object?>>
    extends StatelessWidget {
  final Widget screen;

  const ScreenProvider({super.key, required this.screen});

  @override
  Widget build(BuildContext context) => BlocProvider<T>(
        create: (context) => inject<T>(),
        child: screen,
      );
}
