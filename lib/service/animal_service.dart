import 'package:http/http.dart';
import 'package:ronaldo_template/exception/animal_expcetion.dart';
import 'package:ronaldo_template/exception/response_exception.dart';
import 'package:ronaldo_template/model/animal.dart';
import 'package:ronaldo_template/repository/animal_repository.dart';

class AnimalService {
  final AnimalRepository repository;

  const AnimalService({required this.repository});

  Future<Animal> getRandomAnimal() async {
    var responseBody = await repository.randomAnimal();
    return Animal.fromMap(responseBody);
  }
}
