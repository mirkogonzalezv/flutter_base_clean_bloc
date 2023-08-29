import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_bloc_app/common/blocs/bloc_services.dart';

import 'common/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocServices(),
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
