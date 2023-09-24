import 'package:moneymatters/app.dart';
import 'package:moneymatters/bloc/cubit/app_cubit.dart';
import 'package:moneymatters/helpers/db.helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getDBInstance();
  AppState appState = await AppState.getState();

  runApp(
      MultiBlocProvider(
          providers: [
            BlocProvider(create: (_)=>AppCubit(appState))
          ],
          child: const App()
      )
  );
}


