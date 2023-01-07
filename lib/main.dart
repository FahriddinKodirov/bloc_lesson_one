import 'package:bloc_app/bloc/calc_cubit/area_calc_cubit.dart';
import 'package:bloc_app/bloc/calculator/calculator_cubit.dart';
import 'package:bloc_app/bloc/counter/counter_cubit.dart';
import 'package:bloc_app/bloc/text_marker/text_marker_cubit.dart';
import 'package:bloc_app/screen/text_page/text_upper_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => CounterCubit(5)),
      BlocProvider(create: (context) => CalculatorCubit()),
      BlocProvider(create: (context) => TextMarkerCubit()),
      BlocProvider(create: (context) => AreaCalcCubit()),
    ], 
    child: const MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextUpperPage(),
    );
  }
}

