import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  CounterCubit() : super(CounterState());
  void teamIncrement({required int buttonNumber, required String team}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
