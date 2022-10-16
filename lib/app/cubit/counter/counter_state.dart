part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  
  final Number counter;
  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counter: const Number(value: 0));
}

class CounterIncrement extends CounterState {
  const CounterIncrement({required super.counter});
}

class CounterDecrement extends CounterState {
  const CounterDecrement({required super.counter});
}
