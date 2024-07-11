import 'package:flutter/material.dart';
import 'package:graph_ql_flutter/data/datasources/graphql_remote_data_source_implementation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await GraphqlRemoteDataSourceImplementation().getUser();
              },
              child: const Text('test graphQL'),
            ),
          ],
        ),
      ),
    );
  }
}
