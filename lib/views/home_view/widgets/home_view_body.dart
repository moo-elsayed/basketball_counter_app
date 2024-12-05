import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/views/home_view/widgets/button.dart';
import 'package:project/views/home_view/widgets/team_counter.dart';
import '../../../cubit/counter_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 60),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            TeamCounter(
              teamName: 'Team A',
            ),
            SizedBox(
                height: 200,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                )),
            TeamCounter(teamName: 'Team B'),
          ]),
        ),
        Button(
          horizontalPadding: 48,
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).pointsReset();
            },
            text: 'Reset'),
      ],
    );
  }
}
