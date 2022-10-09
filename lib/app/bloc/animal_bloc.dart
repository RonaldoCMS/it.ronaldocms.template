import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ronaldo_template/model/animal.dart';
import 'package:ronaldo_template/service/animal_service.dart';

part 'animal_event.dart';
part 'animal_state.dart';

class AnimalBloc extends Bloc<AnimalEvent, AnimalState> {
  final AnimalService service;

  AnimalBloc({required this.service}) : super(AnimalInitial()) {
    _fetchData();
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
}
