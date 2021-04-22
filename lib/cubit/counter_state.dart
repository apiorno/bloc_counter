part of 'counter_cubit.dart';

class CounterState {
  int counter;

  CounterState._(int counter) {
    this.counter = counter;
  }

  factory CounterState.initial() {
    return CounterState._(0);
  }
  factory CounterState.of(int counter) {
    return CounterState._(counter);
  }
}
