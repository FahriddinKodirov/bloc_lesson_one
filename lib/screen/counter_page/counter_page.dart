import 'package:bloc_app/bloc/counter/counter_cubit.dart';
import 'package:bloc_app/screen/counter_page/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
              },
              icon: const Icon(Icons.rotate_right_rounded),
              ),
              title: const Text('Counter Page'),
            ),
            body: Center(child: Text(state.toString(),)),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).increment();
              },
              child: const Icon(Icons.add),
            ));
      },
    );
  }
}
