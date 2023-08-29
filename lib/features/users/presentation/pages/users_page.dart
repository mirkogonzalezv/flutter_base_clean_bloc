import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_bloc_app/features/users/presentation/bloc/users_bloc.dart';

import '../widgets/lista_usuarios.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Users Page'),
        ),
        body: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return Container();
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (users) {
                return ListaUsuarios(
                  users: users,
                );
              },
              error: () {
                return const Center(
                  child: Text('Error al traer a los usuarios'),
                );
              },
            );
          },
        ));
  }
}
