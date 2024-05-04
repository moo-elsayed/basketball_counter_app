import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/counter_cubit.dart';
import 'package:project/cubit/counter_states.dart';
import 'package:project/widgets/button.dart';
import 'constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: KPrimaryColor,
            title: const Text("Points Counter",
                style: TextStyle(color: Colors.white, fontSize: 25)),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: const TextStyle(fontSize: 140),
                      ),
                      Button(
                          color: KPrimaryColor,
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .pointsIncrement(team: 'A', points: 1);
                          },
                          text: 'Add 1 Point'),
                      const SizedBox(
                        height: 10,
                      ),
                      Button(
                          color: KPrimaryColor,
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .pointsIncrement(team: 'A', points: 2);
                          },
                          text: 'Add 2 Point'),
                      const SizedBox(
                        height: 10,
                      ),
                      Button(
                          color: KPrimaryColor,
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .pointsIncrement(team: 'A', points: 3);
                          },
                          text: 'Add 3 Point'),
                    ],
                  ),
                  SizedBox(
                      height: 320,
                      child: VerticalDivider(
                        color: Colors.grey[500],
                      )),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: const TextStyle(fontSize: 140),
                      ),
                      Button(
                          color: KPrimaryColor,
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .pointsIncrement(team: 'B', points: 1);
                          },
                          text: 'Add 1 Point'),
                      const SizedBox(
                        height: 10,
                      ),
                      Button(
                          color: KPrimaryColor,
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .pointsIncrement(team: 'B', points: 2);
                          },
                          text: 'Add 2 Point'),
                      const SizedBox(
                        height: 10,
                      ),
                      Button(
                          color: KPrimaryColor,
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .pointsIncrement(team: 'B', points: 3);
                          },
                          text: 'Add 3 Point'),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: MaterialButton(
                  color: KSecondaryColor,
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).pointsReset();
                  },
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  height: 60,
                  minWidth: 120,
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
