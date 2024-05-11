import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lords_palace_app/lords_palace_app.dart';
import 'package:lords_palace_app/screens/settings/fortune_game/fortune_game_bloc/fortune_game_bloc.dart';
import 'package:lords_palace_app/widgets/coins/coins_bloc/coins_bloc.dart';
import 'package:lords_palace_app/widgets/daily_reward/daily_reward_bloc/daily_reward_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CoinsBloc>(create: (context) => CoinsBloc()),
        BlocProvider<DailyRewardBloc>(create: (context) => DailyRewardBloc()),
        BlocProvider<FortuneGameBloc>(create: (context) => FortuneGameBloc()),

      ],
      child: LordsPalaceApp(),
    ),
  );
}
