import 'package:flutter/material.dart';

import '../../domain/models/user.dart';

class ListaUsuarios extends StatelessWidget {
  final List<User> users;
  const ListaUsuarios({
    super.key,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.network(users[index].avatar),
            Row(
              children: [
                Text(users[index].firstName),
                const SizedBox(
                  width: 8,
                ),
                Text(users[index].lastName),
              ],
            ),
          ],
        );
      },
    );
  }
}
