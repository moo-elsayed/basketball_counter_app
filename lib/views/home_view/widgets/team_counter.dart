import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/counter_states.dart';
import '../../../cubit/counter_cubit.dart';
import 'button.dart';

class TeamCounter extends StatelessWidget {
  const TeamCounter({super.key, required this.teamName});

  final String teamName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterStates>(
      builder: (context, state) => Column(
        children: [
          Text(
            teamName,
            style: const TextStyle(fontSize: 35),
          ),
          Text(
            teamName == 'Team A'
                ? '${BlocProvider.of<CounterCubit>(context).teamAPoints}'
                : '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
            style: const TextStyle(fontSize: 100),
          ),
          Button(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).pointsIncrement(
                    team: teamName[teamName.length - 1], points: 1);
              },
              text: 'Add 1 Point'),
          const SizedBox(
            height: 5,
          ),
          Button(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).pointsIncrement(
                    team: teamName[teamName.length - 1], points: 2);
              },
              text: 'Add 2 Point'),
          const SizedBox(
            height: 5,
          ),
          Button(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).pointsIncrement(
                    team: teamName[teamName.length - 1], points: 3);
              },
              text: 'Add 3 Point'),
        ],
      ),
    );
  }
}
