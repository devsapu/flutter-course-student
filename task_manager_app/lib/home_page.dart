import 'package:flutter/material.dart';
import 'package:task_manager_app/user_list.dart';
import 'student_registration_screen.dart';
import 'servises/api_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Column(
        children: [

          // TOP UI SECTION
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 64,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 16),

                  Text(
                    'Welcome to Group 1',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Week 2 – Your first Flutter app',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant,
                        ),
                  ),

                  const SizedBox(height: 30),

                  // BUTTON
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const StudentRegistrationScreen(),
                        ),
                      );
                    },
                    child: const Text('Student Registration form'),
                  ),
                
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const UserList(),
                        ),
                      );
                    },
                    child: const Text('userList'),
                  ),


                ],
              ),
            ),
          ),

          

          // API OUTPUT SECTION
          Expanded(
            flex: 1,
            child: FutureBuilder<List<dynamic>>(
              future: ApiService.fetchPosts(),
              builder: (context, snapshot) {

                
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

           
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

     
                if (!snapshot.hasData) {
                  return const Center(child: Text('No data found'));
                }

                final data = snapshot.data!;

          
                return ListView.builder(
                  itemCount: data.length > 5 ? 5 : data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(data[index]['id'].toString()),
                        ),
                        title: Text(data[index]['title']),
                        subtitle: Text(data[index]['body']),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}