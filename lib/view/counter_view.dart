import 'package:counter_app_cubit/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit,int>(builder: (context,state) {
          return Text('$state',
          style: textTheme.displayMedium,);
          
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              child: Icon(Icons.add),
              onPressed: ()=>context.read<CounterCubit>().increment()),
          SizedBox(height: 8),
          FloatingActionButton(
              key: const Key('counterView_decrement_floatingActionButton'),
          child: Icon(Icons.remove),
          onPressed: ()=>context.read<CounterCubit>().decrement())

        ],
      ),
    );
  }
}
