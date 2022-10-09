import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ronaldo_template/app/bloc/animal_bloc.dart';

class AnimalLayout extends StatelessWidget {
  final Widget child;
  const AnimalLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animals"),
      ),
      body: SafeArea(
        child: child,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<AnimalBloc>().add(AnimalRefreshEvent()),
        tooltip: 'Refresh',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
