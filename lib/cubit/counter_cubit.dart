import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  Future<void> incrementCounter() async {
    emit(CounterState.of(state.counter + 1));
  }

  Future<void> decrementCounter() async {
    emit(CounterState.of(state.counter - 1));
  }
}
