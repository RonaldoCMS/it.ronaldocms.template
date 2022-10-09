import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ronaldo_template/app/bloc/animal_bloc.dart';
import 'package:ronaldo_template/app/layout/animal_layout.dart';
import 'package:ronaldo_template/model/animal.dart';

class AnimalView extends StatelessWidget {
  const AnimalView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimalLayout(
      child: Builder(builder: (context) {
        return BlocBuilder(
          bloc: context.read<AnimalBloc>(),
          builder: (context, state) {
            if (state is AnimalFetchState) {
              return fetched(state.animal!);
            }
            if (state is AnimalInitial) {
              return loading();
            }
            return const Text("Ciao");
          },
        );
      }),
    );
  }

  Center loading() {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Widget fetched(Animal animal) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            animal.imageLink,
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Text("No image"),
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator.adaptive(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  animal.name,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  animal.latinName,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                Text(
                  animal.habitat,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                Divider(),
                Text(
                  animal.diet,
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
