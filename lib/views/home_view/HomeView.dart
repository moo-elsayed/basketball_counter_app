import 'package:flutter/material.dart';
import 'package:project/views/home_view/widgets/home_view_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BasketBall Counter",
            style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: const HomeViewBody(),
    );
  }
}
