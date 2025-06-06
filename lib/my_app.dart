import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moving_box/core/theme/app_theme.dart';
import 'package:moving_box/presentation/bloc/game_bloc/game_bloc.dart';
import 'package:moving_box/presentation/screens/start_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Hide the status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return MultiBlocProvider(
      providers: [
        // game bloc
        BlocProvider<GameBloc>(create: (context) => GetIt.instance<GameBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pass The Parcel',
        theme: AppTheme.dark,
        home: StartScreen(),
      ),
    );
  }
}
