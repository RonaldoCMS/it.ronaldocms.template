import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:ronaldo_template/model/animal.dart';
import 'package:ronaldo_template/service/animal_service.dart';

part 'animal_event.dart';
part 'animal_state.dart';

class AnimalBloc extends HydratedBloc<AnimalEvent, AnimalState> {
  final AnimalService service;

  AnimalBloc({required this.service}) : super(AnimalInitial()) {
    log("CONSTRUCTOR!");
    if (state.animal == null) {
      _fetchData();
    }
    on<AnimalEvent>((event, emit) {
      if (event is AnimalFetchEvent) {
        emit(AnimalFetchState(animal: event.animal));
      } else if (event is AnimalRefreshEvent) {
        _fetchData();
      }
    });
  }

  Future<void> _fetchData() async {
    var animalFetched = await service.getRandomAnimal();
    add(AnimalFetchEvent(animal: animalFetched));
  }

  @override
  AnimalState? fromJson(Map<String, dynamic> json) {
    log("fromJSON");
    try {
      final animal = Animal.fromMap(json);
      return AnimalFetchState(animal: animal);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(AnimalState state) {
    log("toJSON!");
    return state.animal?.toMap();
  }
}
