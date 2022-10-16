import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:ronaldo_template/model/number.dart';

part 'counter_state.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit() : super(const CounterInitial());

  void increment() {
    Number increment = state.counter.copyWith(count: state.counter.value + 1);
    emit(CounterIncrement(counter: increment));
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    try {
      final counter = json['count'] as int;
      return CounterIncrement(counter: Number(value: counter));
    } catch (error) {
      return CounterInitial();
    }
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.counter.toMap();
  }
}
