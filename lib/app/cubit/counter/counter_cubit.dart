import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ronaldo_template/model/number.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void increment() {
    Number increment = state.counter.copyWith(count: state.counter.value + 1);
    emit(CounterIncrement(counter: increment));
  }
}
