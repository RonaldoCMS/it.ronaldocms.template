part of 'animal_bloc.dart';

abstract class AnimalState extends Equatable {
  final Animal? animal;
  const AnimalState({required this.animal});

  @override
  List<Object> get props => [animal!];
}

class AnimalInitial extends AnimalState {
  const AnimalInitial() : super(animal: null);
}

class AnimalFetchState extends AnimalState {
  const AnimalFetchState({required super.animal});
}
