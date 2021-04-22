import 'package:bloc_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
          builder: (_, CounterState state) {
        return Center(
          child: Text(
            '${state.counter}',
            style: Theme.of(context).textTheme.headline4,
          ),
        );
      }),
      floatingActionButton: CounterActionButtoBar(),
    );
  }
}

class CounterActionButtoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<CounterCubit>(context).incrementCounter(),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<CounterCubit>(context).decrementCounter(),
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
