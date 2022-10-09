import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ronaldo_template/app/bloc/animal_bloc.dart';
import 'package:ronaldo_template/app/cubit/counter/counter_cubit.dart';
import 'package:ronaldo_template/service/animal_service.dart';

class BlocProviderManager extends StatelessWidget {
  final Widget child;
  const BlocProviderManager({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => CounterCubit(),
        lazy: false,
      ),
      BlocProvider(
        create: (context) => AnimalBloc(
          service: RepositoryProvider.of<AnimalService>(context),
        ),
        lazy: false,
      )
    ], child: child);
  }
}
