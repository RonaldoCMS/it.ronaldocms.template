import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ronaldo_template/app/cubit/counter/counter_cubit.dart';
import 'package:ronaldo_template/app/layout/home_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeLayout(
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          context.watch<CounterCubit>().state.counter.value.toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
