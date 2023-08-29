import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:profile_bloc_app/common/variables/router_var.dart';
import 'package:profile_bloc_app/features/users/presentation/bloc/users_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Soy Home Page'),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<UsersBloc>(context)
                    .add(const UsersEvent.loadData());
                context.push(RouterApp().usersPath);
              },
              child: const Text('Ver Usuarios'),
            ),
          ],
        ),
      ),
    );
  }
}
