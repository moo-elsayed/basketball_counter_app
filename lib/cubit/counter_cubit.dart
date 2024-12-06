import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void pointsIncrement({required String team, required int points}) {
    if (team == 'A') {
      teamAPoints += points;
      emit(NewState());
    } else {
      teamBPoints += points;
      emit(NewState());
    }
  }

  void pointsReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(NewState());
  }
}
