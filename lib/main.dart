import 'package:counter_app_cubit/counter/cubit/counter_cubit.dart';
import 'package:counter_app_cubit/counter_observer.dart';
import 'package:counter_app_cubit/view/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer=CounterObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: BlocProvider(create: (_)=>CounterCubit(),
      child: CounterView(),
      )
    );
  }
}



