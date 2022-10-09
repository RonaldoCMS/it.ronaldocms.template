import 'package:flutter/material.dart';
import 'package:ronaldo_template/utils/management/bloc_provider_manager.dart';
import 'package:ronaldo_template/utils/management/provider_repository_manager.dart';
import 'package:ronaldo_template/utils/management/route_manager.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderRepositoryManager(
      child: BlocProviderManager(
        child: MaterialApp(
          title: 'Flutter Demo',
          onGenerateRoute: RouteManager.generateRoute,
          routes: RouteManager.routes,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        ),
      ),
    );
  }
}
