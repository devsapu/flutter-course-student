import 'package:flutter/material.dart';
import 'servises/api_service.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // ✅ FIX: add Scaffold
      appBar: AppBar(title: const Text("Users")),

      body: FutureBuilder<List<dynamic>>(
        future: ApiService.fetchUsers(),
        builder: (context, snapshot) {

          // ⏳ Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // ❌ Error
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          // ⚠️ Empty
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No users found'));
          }

          final users = snapshot.data!;

          // ✅ Data list
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user['image']),
                ),
                title: Text(
                  "${user['firstName']} ${user['lastName']}",
                ),
                subtitle: Text(user['email']),
              );
            },
          );
        },
      ),
    );
  }
}