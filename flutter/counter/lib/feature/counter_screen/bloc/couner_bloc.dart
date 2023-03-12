import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(10) {
    on<IncrementEvent>(_onIncrement);
    on<DecrimentEvent>(_onDecriment);
  }

  _onIncrement(IncrementEvent event, Emitter<int> emit) {
    emit(state + 1);
  }

  _onDecriment(DecrimentEvent event, Emitter<int> emit) {
    if (state <= 0) return;
    emit(state - 1);
  }
}

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrimentEvent extends CounterEvent {}
