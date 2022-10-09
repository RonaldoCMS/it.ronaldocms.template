part of 'animal_bloc.dart';

abstract class AnimalEvent extends Equatable {
  const AnimalEvent();

  @override
  List<Object> get props => [];
}

class AnimalFetchEvent extends AnimalEvent {
  final Animal? animal;

  const AnimalFetchEvent({required this.animal});
}

class AnimalRefreshEvent extends AnimalEvent {
  const AnimalRefreshEvent();
}
