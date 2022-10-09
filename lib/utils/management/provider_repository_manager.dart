import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ronaldo_template/repository/animal_repository.dart';
import 'package:ronaldo_template/service/animal_service.dart';

class ProviderRepositoryManager extends StatelessWidget {
  final Widget child;
  const ProviderRepositoryManager({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AnimalService(repository: AnimalRepository()),
        ),
      ],
      child: child,
    );
  }
}
